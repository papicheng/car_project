
#include "common.h"
#include "camera_test.h"
#include "timer.h"
#include "Freecars.h"

#define title1_received 0xFA
#define title2_received 0xFF
#define title3_received 0x0C
#define title4_received 0xFC
uint8 bzx;
uint8 bzy;
uint8 bz_nopoint;
uint32 bz_turn_pwm;

unsigned char Image1[ROW][COLUMN];
unsigned char Image2[ROW][COLUMN];
uint8 end_flag=0; 
uint8 start_flag=0;
uint8 row=0;
uint8 lock=0;
uint8 WhichBuffer = 1;
uint8 setvalue=80;//亮点亮度阈值
uint8 rowAdr,NOpoint,real_pointx,real_pointy,pre_pointx;
uint8 last_nopoint=1;
void camera_init(void)
{
  static GPIO_InitTypeDef dmaReq_port_struct;
  dmaReq_port_struct.GPIO_PTx = PTB;
  dmaReq_port_struct.GPIO_Pins = GPIO_Pin22;
  dmaReq_port_struct.GPIO_Dir = DIR_INPUT;
  dmaReq_port_struct.GPIO_PinControl =IRQC_DMAFA | INPUT_PULL_UP;//下降沿产生DMA请求,输入上拉
  LPLD_GPIO_Init(dmaReq_port_struct);
  
  static GPIO_InitTypeDef href_port_struct;  //行中断接受端口
  href_port_struct.GPIO_PTx = PTB;    
  href_port_struct.GPIO_Pins = GPIO_Pin20;   
  href_port_struct.GPIO_Dir = DIR_INPUT;        //输入
  href_port_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;  //内部上拉|下降沿中断
  href_port_struct.GPIO_Isr = portb_isr;        //中断函数
  LPLD_GPIO_Init(href_port_struct);
  LPLD_GPIO_EnableIrq(href_port_struct);
  
  static GPIO_InitTypeDef vsync_port_struct;  //场中断接受端口
  vsync_port_struct.GPIO_PTx = PTB;    
  vsync_port_struct.GPIO_Pins = GPIO_Pin23;   
  vsync_port_struct.GPIO_Dir = DIR_INPUT;        //输入
  vsync_port_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;    //内部上拉|下降沿中断
  vsync_port_struct.GPIO_Isr = portb_isr;        //中断函数
  LPLD_GPIO_Init(vsync_port_struct);
  LPLD_GPIO_EnableIrq(vsync_port_struct);
  
  //摄像头到单片机数据口初始化：PTC0~PTC7
  static GPIO_InitTypeDef data_port_struct;
  data_port_struct.GPIO_PTx = PTC;
  data_port_struct.GPIO_Dir = DIR_INPUT;
  data_port_struct.GPIO_Pins = GPIO_Pin0_7;
  data_port_struct.GPIO_PinControl = IRQC_DIS|INPUT_PULL_DIS;
  LPLD_GPIO_Init(data_port_struct);
  
  //DMA参数配置
  static DMA_InitTypeDef  dma_init_struct;
  dma_init_struct.DMA_CHx = DMA_CH0;    //CH0通道
  dma_init_struct.DMA_Req = PORTB_DMAREQ;     //PORTB22为请求源
  dma_init_struct.DMA_MajorLoopCnt = COLUMN;   //主循环计数值：行采集点数，宽度
  dma_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次传输1字节
  dma_init_struct.DMA_SourceAddr = (uint32)&PTC->PDIR; //源地址：PTC0-PTC7,Port Data Input Register
  dma_init_struct.DMA_DestAddr = (uint32)Image1;      //目的地址：存放图像的数组
  dma_init_struct.DMA_DestAddrOffset = 1;       //目的地址偏移：每次读入增加1
  dma_init_struct.DMA_AutoDisableReq = TRUE;    //自动禁用请求，使能后通道请求将在主循环结束后禁用
  LPLD_DMA_Init(dma_init_struct);//初始化但未使能
  
  static UART_InitTypeDef uart4_init_struct;
  uart4_init_struct.UART_Uartx = UART4; //UART4 用于与电脑通信           
  uart4_init_struct.UART_BaudRate = 115200;
  uart4_init_struct.UART_TxPin = PTE24;//发送引脚为PTE24
  uart4_init_struct.UART_RxPin = PTE25;//接收引脚为PTE25
  uart4_init_struct.UART_RxIntEnable=TRUE;//使能接受中断
  uart4_init_struct.UART_RxIsr=uart4_isr;
  LPLD_UART_EnableIrq(uart4_init_struct);//中断使能
  LPLD_UART_Init(uart4_init_struct); //初始化UART
  
  static UART_InitTypeDef uart3_init_struct;
  uart3_init_struct.UART_Uartx = UART3; //UART4 用于与电脑通信           
  uart3_init_struct.UART_BaudRate = 115200;
  uart3_init_struct.UART_TxPin = PTB11;//发送引脚为PTE24
  uart3_init_struct.UART_RxPin = PTB10;//接收引脚为PTE25
  uart3_init_struct.UART_RxIntEnable=TRUE;//使能接受中断
  uart3_init_struct.UART_RxIsr=uart3_isr;
  LPLD_UART_EnableIrq(uart3_init_struct);//中断使能
  LPLD_UART_Init(uart3_init_struct); //初始化UART
  
  
  
  static UART_InitTypeDef uart0_init_struct;
  uart0_init_struct.UART_Uartx = UART0; //UART0用于设置摄像头
  uart0_init_struct.UART_BaudRate = 115200; 
  uart0_init_struct.UART_RxPin = PTB16;  //接收引脚为PTB16
  uart0_init_struct.UART_TxPin = PTB17;  //发送引脚为PTB17
  LPLD_UART_Init(uart0_init_struct); //初始化UART
  
  MT9V032_CFG_init();//MT9V032设置
}

void uart3_isr(void)//串口3接收中断服务程序
{
   uint8 RxBuffer[7];//接受缓存
  /*三个数 pointx 1字节 pointy 1字节 turn_pwm 4字节 */
  static uint8 data_len = 0,data_cnt = 0;//数据长度，数据数组下标
  static uint8 RxState=0;//接收状态
  static uint8 RxData;
  uint8 i;
  RxData=LPLD_UART_GetChar(UART3);
  if(RxState == 0 &&  RxData == title1_received)//帧头1
  {
    RxState = 1;
  }
  else if(RxState == 1 &&  RxData == title2_received)//帧头2
  {
    RxState = 2;
    data_len = 7;
    data_cnt = 0;
  }
  else if(RxState == 2 && data_len>0)
  {
    data_len--;
    RxBuffer[data_cnt++]=RxData;//接收数据
    if(data_len==0)
      RxState=3;
  }
  else if(RxState == 3 &&  RxData == title3_received)//帧尾1
  {
    RxState = 4;
  }
  else if(RxState == 4 &&  RxData == title4_received)//帧尾2
  {
    RxState=0;
    
    bzx=RxBuffer[0];
    bzy=RxBuffer[1];
    for(i = 2; i < 6; i++)
    {
      (*( (char *)(&bz_turn_pwm) + i-2)) = RxBuffer[i];
    }
    bz_nopoint=RxBuffer[6];
    
  }
  else 
    RxState=0;
}


void picture_send(void)
{
  int i,j;
    if(end_flag)
    {
      disable_irq(PORTB_IRQn); 
      LPLD_UART_PutChar(UART4,0X01);
      LPLD_UART_PutChar(UART4,0XFE);
      for(i=0;i<ROWnum;i++)
        for(j=0;j<COLUMN;j++)
            LPLD_UART_PutChar(UART4,Image1[i][j]);
      LPLD_UART_PutChar(UART4,0XFE);
      LPLD_UART_PutChar(UART4,0X01);
      enable_irq(PORTB_IRQn);
      end_flag=0;
    }
}


void MT9V032_CFG_init(void)
{
  uint16 i,light_time;
  uint8 MT9V032_CFG[8];//定义数据包
  my_delay(9999999);//延时以保证摄像头上面的51完成上电初始化
  MT9V032_CFG[0] = 0xFF; //数据包帧头         
  MT9V032_CFG[1] = 0x00; //命令位  
  switch(ROW) //分辨率选择位，不过列超过188后K60无法采集
  {
  case 480:MT9V032_CFG[2] = 8;break; //对应的分辨率为 480行）*188（列）
  case 240:MT9V032_CFG[2] = 9;break;//对应的分辨率为 240行）*188（列）
  case 120:MT9V032_CFG[2] = 10;break;//对应的分辨率为 120行）*188（列）
  default :MT9V032_CFG[2] = 10;break;
  }   
  MT9V032_CFG[3] = 100;  //fps一秒钟拍摄图像帧数设置，设置图像帧率.行数不同可设置的范围也不同,范围限制  120行的时候是1-200,240行的时候是1-132,480行的时候是1-66                  
  //曝光时间越大图像越亮     由于最大曝光时间受到fps与分辨率的共同影响，这里不给出具体范围，可以直接把曝光设置为1000，摄像头上的51收到之后会根据分辨率及FPS计算最大曝光时间，然后把
  //曝光时间设置为最大曝光时间，并且会返回当前设置的最大曝光时间，这样就可以知道最大可以设置的曝光时间是多少了，然后觉得图像过亮，就可以在这个最大曝光值的基础上相应减少。
  light_time = 120; //可调
  MT9V032_CFG[4] = light_time>>8;          //曝光时间高八位   
  MT9V032_CFG[5] = (uint8)light_time;      //曝光时间低八位  
  MT9V032_CFG[6] = 0;    //设置自动曝光，0表示关闭
  MT9V032_CFG[7] = 0x5A;  //帧尾 
  for(i=0;i<8;i++)
  {
    LPLD_UART_PutChar(UART0,MT9V032_CFG[i]);
  }
  my_delay(9999999);
}


void portb_isr()
{  
  if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin23)) // 场中断          
  {     
    LPLD_GPIO_ClearIntFlag(PORTB);
    if( (WhichBuffer==1&&lock!=1) || (WhichBuffer==2&&lock!=2) )//将要传图1且图1没有在处理，或者将要传图2且图2没有在处理
      start_flag=1; //丢弃不完整的第一帧图像，DMA启动标志，采集开始
    else
      start_flag=0;  //忙，不传图
    rowAdr=0;
    row=0;
  } 
  else if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin20)&&start_flag==1) //行中断，逐行采集                                                 
  {
    LPLD_GPIO_ClearIntFlag(PORTB);
    row++;
    if(row>=ROWbegin && row<ROWend)
    {
      if(WhichBuffer==1)
        LPLD_DMA_LoadDstAddr(DMA_CH0,(Image1[rowAdr]));//加载或更换目的地址
      else
        LPLD_DMA_LoadDstAddr(DMA_CH0,(Image2[rowAdr]));
      LPLD_DMA_EnableReq(DMA_CH0);//初始化中设定主循环结束屏蔽请求源，故每一行都需重新使能请求源
      rowAdr++; 
    }
    if(row>=ROWend)
    {
      LPLD_DMA_DisableReq(DMA_CH0);//采集结束，屏蔽DMA请求源
      if(WhichBuffer==1)
        WhichBuffer=2;  //切换传图，图1图2依次传输
      else
        WhichBuffer=1;
      end_flag=1;
      start_flag=0;
    }
  }
}
void my_delay(long t)
{
    while(t--);
}

void Calculate_Middle_Point(void)
{
  int i,j,k=0,prok=0,minj=COLUMN,maxj=0,mini=ROWend,maxi=ROWbegin;
  int pointy,pointx;
  if(WhichBuffer == 2)//正在传图2
  {
    lock=1;//锁图1，处理图1
    for(i=0;i<ROWnum;i++)
    {
      for(j=0;j<COLUMN;j++)
      {
        if(Image1[i][j]>=setvalue)
        {
          k++;
          if(j<=minj)
            minj=j;
          if(j>=maxj)
            maxj=j;
          if(mini>i)
            mini=i;
          if(maxi<i)
            maxi=i;
        }
      }
      if(k>prok)
      {
        prok=k;
        pointy=i;
        pointx=(minj+maxj)/2;
      }
      k=0;
    }
  }
  else if(WhichBuffer == 1)//正在传图1
  {
    lock=2;//锁图2，处理图2
    for(i=0;i<ROWnum;i++)
    {
      for(j=0;j<COLUMN;j++)
      {
        if(Image2[i][j]>=setvalue)
        {
          k++;
          if(j<=minj)
            minj=j;
          if(j>=maxj)
            maxj=j;
          if(mini>i)
            mini=i;
          if(maxi<i)
            maxi=i;
        }
      }
      if(k>prok)
      {
        prok=k;
        pointy=i;
        pointx=(minj+maxj)/2;
      }
      k=0;     
    }
  } 
   lock=0; //解除图像锁定
  
  

  
  if (prok==0 ||pointx<=3||pointx>=177)//如果没有亮点 
  {
    NOpoint=1;
    last_nopoint=1;
    
  }
  else 
  {
    if ( last_nopoint )//上一幅没图
    {
      if (pointx>=5&&pointx<=175)
      {
        NOpoint=0;
        real_pointy=pointy; //一场图像真正的中点！！！有图才更新
        real_pointx=pointx; //一场图像真正的中点！！！
        last_nopoint=0;
      }
    }
    else   //上一幅有图
    {
      if (pointx>=3&&pointx<=177)
      {
        NOpoint=0;
        real_pointy=pointy; //一场图像真正的中点！！！有图才更新
        real_pointx=pointx; //一场图像真正的中点！！！
        last_nopoint=0;
      }
    }
    
  }
  
  
  /*
  if(real_pointy>15 && NOpoint==0)//屏蔽从机避障信号
  {
    disable_irq(PORTD_IRQn);//左障碍
    disable_irq(PORTE_IRQn);//右障碍
  }
  else  //使能从机避障信号
  {
    enable_irq(PORTD_IRQn);//左障碍
    enable_irq(PORTE_IRQn);//右障碍
  }
  */
  
}


