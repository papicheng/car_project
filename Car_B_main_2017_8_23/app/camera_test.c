
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
uint8 setvalue=80;//����������ֵ
uint8 rowAdr,NOpoint,real_pointx,real_pointy,pre_pointx;
uint8 last_nopoint=1;
void camera_init(void)
{
  static GPIO_InitTypeDef dmaReq_port_struct;
  dmaReq_port_struct.GPIO_PTx = PTB;
  dmaReq_port_struct.GPIO_Pins = GPIO_Pin22;
  dmaReq_port_struct.GPIO_Dir = DIR_INPUT;
  dmaReq_port_struct.GPIO_PinControl =IRQC_DMAFA | INPUT_PULL_UP;//�½��ز���DMA����,��������
  LPLD_GPIO_Init(dmaReq_port_struct);
  
  static GPIO_InitTypeDef href_port_struct;  //���жϽ��ܶ˿�
  href_port_struct.GPIO_PTx = PTB;    
  href_port_struct.GPIO_Pins = GPIO_Pin20;   
  href_port_struct.GPIO_Dir = DIR_INPUT;        //����
  href_port_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;  //�ڲ�����|�½����ж�
  href_port_struct.GPIO_Isr = portb_isr;        //�жϺ���
  LPLD_GPIO_Init(href_port_struct);
  LPLD_GPIO_EnableIrq(href_port_struct);
  
  static GPIO_InitTypeDef vsync_port_struct;  //���жϽ��ܶ˿�
  vsync_port_struct.GPIO_PTx = PTB;    
  vsync_port_struct.GPIO_Pins = GPIO_Pin23;   
  vsync_port_struct.GPIO_Dir = DIR_INPUT;        //����
  vsync_port_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;    //�ڲ�����|�½����ж�
  vsync_port_struct.GPIO_Isr = portb_isr;        //�жϺ���
  LPLD_GPIO_Init(vsync_port_struct);
  LPLD_GPIO_EnableIrq(vsync_port_struct);
  
  //����ͷ����Ƭ�����ݿڳ�ʼ����PTC0~PTC7
  static GPIO_InitTypeDef data_port_struct;
  data_port_struct.GPIO_PTx = PTC;
  data_port_struct.GPIO_Dir = DIR_INPUT;
  data_port_struct.GPIO_Pins = GPIO_Pin0_7;
  data_port_struct.GPIO_PinControl = IRQC_DIS|INPUT_PULL_DIS;
  LPLD_GPIO_Init(data_port_struct);
  
  //DMA��������
  static DMA_InitTypeDef  dma_init_struct;
  dma_init_struct.DMA_CHx = DMA_CH0;    //CH0ͨ��
  dma_init_struct.DMA_Req = PORTB_DMAREQ;     //PORTB22Ϊ����Դ
  dma_init_struct.DMA_MajorLoopCnt = COLUMN;   //��ѭ������ֵ���вɼ����������
  dma_init_struct.DMA_MinorByteCnt = 1; //��ѭ���ֽڼ�����ÿ�δ���1�ֽ�
  dma_init_struct.DMA_SourceAddr = (uint32)&PTC->PDIR; //Դ��ַ��PTC0-PTC7,Port Data Input Register
  dma_init_struct.DMA_DestAddr = (uint32)Image1;      //Ŀ�ĵ�ַ�����ͼ�������
  dma_init_struct.DMA_DestAddrOffset = 1;       //Ŀ�ĵ�ַƫ�ƣ�ÿ�ζ�������1
  dma_init_struct.DMA_AutoDisableReq = TRUE;    //�Զ���������ʹ�ܺ�ͨ����������ѭ�����������
  LPLD_DMA_Init(dma_init_struct);//��ʼ����δʹ��
  
  static UART_InitTypeDef uart4_init_struct;
  uart4_init_struct.UART_Uartx = UART4; //UART4 ���������ͨ��           
  uart4_init_struct.UART_BaudRate = 115200;
  uart4_init_struct.UART_TxPin = PTE24;//��������ΪPTE24
  uart4_init_struct.UART_RxPin = PTE25;//��������ΪPTE25
  uart4_init_struct.UART_RxIntEnable=TRUE;//ʹ�ܽ����ж�
  uart4_init_struct.UART_RxIsr=uart4_isr;
  LPLD_UART_EnableIrq(uart4_init_struct);//�ж�ʹ��
  LPLD_UART_Init(uart4_init_struct); //��ʼ��UART
  
  static UART_InitTypeDef uart3_init_struct;
  uart3_init_struct.UART_Uartx = UART3; //UART4 ���������ͨ��           
  uart3_init_struct.UART_BaudRate = 115200;
  uart3_init_struct.UART_TxPin = PTB11;//��������ΪPTE24
  uart3_init_struct.UART_RxPin = PTB10;//��������ΪPTE25
  uart3_init_struct.UART_RxIntEnable=TRUE;//ʹ�ܽ����ж�
  uart3_init_struct.UART_RxIsr=uart3_isr;
  LPLD_UART_EnableIrq(uart3_init_struct);//�ж�ʹ��
  LPLD_UART_Init(uart3_init_struct); //��ʼ��UART
  
  
  
  static UART_InitTypeDef uart0_init_struct;
  uart0_init_struct.UART_Uartx = UART0; //UART0������������ͷ
  uart0_init_struct.UART_BaudRate = 115200; 
  uart0_init_struct.UART_RxPin = PTB16;  //��������ΪPTB16
  uart0_init_struct.UART_TxPin = PTB17;  //��������ΪPTB17
  LPLD_UART_Init(uart0_init_struct); //��ʼ��UART
  
  MT9V032_CFG_init();//MT9V032����
}

void uart3_isr(void)//����3�����жϷ������
{
   uint8 RxBuffer[7];//���ܻ���
  /*������ pointx 1�ֽ� pointy 1�ֽ� turn_pwm 4�ֽ� */
  static uint8 data_len = 0,data_cnt = 0;//���ݳ��ȣ����������±�
  static uint8 RxState=0;//����״̬
  static uint8 RxData;
  uint8 i;
  RxData=LPLD_UART_GetChar(UART3);
  if(RxState == 0 &&  RxData == title1_received)//֡ͷ1
  {
    RxState = 1;
  }
  else if(RxState == 1 &&  RxData == title2_received)//֡ͷ2
  {
    RxState = 2;
    data_len = 7;
    data_cnt = 0;
  }
  else if(RxState == 2 && data_len>0)
  {
    data_len--;
    RxBuffer[data_cnt++]=RxData;//��������
    if(data_len==0)
      RxState=3;
  }
  else if(RxState == 3 &&  RxData == title3_received)//֡β1
  {
    RxState = 4;
  }
  else if(RxState == 4 &&  RxData == title4_received)//֡β2
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
  uint8 MT9V032_CFG[8];//�������ݰ�
  my_delay(9999999);//��ʱ�Ա�֤����ͷ�����51����ϵ��ʼ��
  MT9V032_CFG[0] = 0xFF; //���ݰ�֡ͷ         
  MT9V032_CFG[1] = 0x00; //����λ  
  switch(ROW) //�ֱ���ѡ��λ�������г���188��K60�޷��ɼ�
  {
  case 480:MT9V032_CFG[2] = 8;break; //��Ӧ�ķֱ���Ϊ 480�У�*188���У�
  case 240:MT9V032_CFG[2] = 9;break;//��Ӧ�ķֱ���Ϊ 240�У�*188���У�
  case 120:MT9V032_CFG[2] = 10;break;//��Ӧ�ķֱ���Ϊ 120�У�*188���У�
  default :MT9V032_CFG[2] = 10;break;
  }   
  MT9V032_CFG[3] = 100;  //fpsһ��������ͼ��֡�����ã�����ͼ��֡��.������ͬ�����õķ�ΧҲ��ͬ,��Χ����  120�е�ʱ����1-200,240�е�ʱ����1-132,480�е�ʱ����1-66                  
  //�ع�ʱ��Խ��ͼ��Խ��     ��������ع�ʱ���ܵ�fps��ֱ��ʵĹ�ͬӰ�죬���ﲻ�������巶Χ������ֱ�Ӱ��ع�����Ϊ1000������ͷ�ϵ�51�յ�֮�����ݷֱ��ʼ�FPS��������ع�ʱ�䣬Ȼ���
  //�ع�ʱ������Ϊ����ع�ʱ�䣬���һ᷵�ص�ǰ���õ�����ع�ʱ�䣬�����Ϳ���֪�����������õ��ع�ʱ���Ƕ����ˣ�Ȼ�����ͼ��������Ϳ������������ع�ֵ�Ļ�������Ӧ���١�
  light_time = 120; //�ɵ�
  MT9V032_CFG[4] = light_time>>8;          //�ع�ʱ��߰�λ   
  MT9V032_CFG[5] = (uint8)light_time;      //�ع�ʱ��Ͱ�λ  
  MT9V032_CFG[6] = 0;    //�����Զ��ع⣬0��ʾ�ر�
  MT9V032_CFG[7] = 0x5A;  //֡β 
  for(i=0;i<8;i++)
  {
    LPLD_UART_PutChar(UART0,MT9V032_CFG[i]);
  }
  my_delay(9999999);
}


void portb_isr()
{  
  if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin23)) // ���ж�          
  {     
    LPLD_GPIO_ClearIntFlag(PORTB);
    if( (WhichBuffer==1&&lock!=1) || (WhichBuffer==2&&lock!=2) )//��Ҫ��ͼ1��ͼ1û���ڴ������߽�Ҫ��ͼ2��ͼ2û���ڴ���
      start_flag=1; //�����������ĵ�һ֡ͼ��DMA������־���ɼ���ʼ
    else
      start_flag=0;  //æ������ͼ
    rowAdr=0;
    row=0;
  } 
  else if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin20)&&start_flag==1) //���жϣ����вɼ�                                                 
  {
    LPLD_GPIO_ClearIntFlag(PORTB);
    row++;
    if(row>=ROWbegin && row<ROWend)
    {
      if(WhichBuffer==1)
        LPLD_DMA_LoadDstAddr(DMA_CH0,(Image1[rowAdr]));//���ػ����Ŀ�ĵ�ַ
      else
        LPLD_DMA_LoadDstAddr(DMA_CH0,(Image2[rowAdr]));
      LPLD_DMA_EnableReq(DMA_CH0);//��ʼ�����趨��ѭ��������������Դ����ÿһ�ж�������ʹ������Դ
      rowAdr++; 
    }
    if(row>=ROWend)
    {
      LPLD_DMA_DisableReq(DMA_CH0);//�ɼ�����������DMA����Դ
      if(WhichBuffer==1)
        WhichBuffer=2;  //�л���ͼ��ͼ1ͼ2���δ���
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
  if(WhichBuffer == 2)//���ڴ�ͼ2
  {
    lock=1;//��ͼ1������ͼ1
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
  else if(WhichBuffer == 1)//���ڴ�ͼ1
  {
    lock=2;//��ͼ2������ͼ2
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
   lock=0; //���ͼ������
  
  

  
  if (prok==0 ||pointx<=3||pointx>=177)//���û������ 
  {
    NOpoint=1;
    last_nopoint=1;
    
  }
  else 
  {
    if ( last_nopoint )//��һ��ûͼ
    {
      if (pointx>=5&&pointx<=175)
      {
        NOpoint=0;
        real_pointy=pointy; //һ��ͼ���������е㣡������ͼ�Ÿ���
        real_pointx=pointx; //һ��ͼ���������е㣡����
        last_nopoint=0;
      }
    }
    else   //��һ����ͼ
    {
      if (pointx>=3&&pointx<=177)
      {
        NOpoint=0;
        real_pointy=pointy; //һ��ͼ���������е㣡������ͼ�Ÿ���
        real_pointx=pointx; //һ��ͼ���������е㣡����
        last_nopoint=0;
      }
    }
    
  }
  
  
  /*
  if(real_pointy>15 && NOpoint==0)//���δӻ������ź�
  {
    disable_irq(PORTD_IRQn);//���ϰ�
    disable_irq(PORTE_IRQn);//���ϰ�
  }
  else  //ʹ�ܴӻ������ź�
  {
    enable_irq(PORTD_IRQn);//���ϰ�
    enable_irq(PORTE_IRQn);//���ϰ�
  }
  */
  
}


