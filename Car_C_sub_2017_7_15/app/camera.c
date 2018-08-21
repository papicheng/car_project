
#include "camera.h"
#include "common.h"

#define COLUMN 180       //��
#define ROW    240      //��
#define ROWbegin    80      //��ʼ�ɼ���
#define ROWend    200      //�����ɼ���
#define ROWnum    120      //�ɼ�����

unsigned char Image1[ROW][COLUMN];
unsigned char Image2[ROW][COLUMN];
uint8  end_flag=0; 
uint8 start_flag=0;
uint8 row=0;
uint8 lock=0;
uint8 WhichBuffer = 1;
uint8 setvalue=110;//��ֵ
uint8 real_pointx,real_pointy,NOpoint,rowAdr;
float sumtuan,testsum[5],testsum_average;
//int prok;

void camera_init(void)
{
  static GPIO_InitTypeDef dmaReq_port_struct;
  dmaReq_port_struct.GPIO_PTx = PTE;
  dmaReq_port_struct.GPIO_Pins = GPIO_Pin11;
  dmaReq_port_struct.GPIO_Dir = DIR_INPUT;
  dmaReq_port_struct.GPIO_PinControl =IRQC_DMAFA | INPUT_PULL_UP;//�½��ز���DMA����,��������
  LPLD_GPIO_Init(dmaReq_port_struct);
  
  static GPIO_InitTypeDef href_port_struct;  //���жϽ��ܶ˿�
  href_port_struct.GPIO_PTx = PTE;    
  href_port_struct.GPIO_Pins = GPIO_Pin10;   
  href_port_struct.GPIO_Dir = DIR_INPUT;        //����
  href_port_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;  //�ڲ�����|�½����ж�
  href_port_struct.GPIO_Isr = porte_isr;        //�жϺ���
  LPLD_GPIO_Init(href_port_struct);
  LPLD_GPIO_EnableIrq(href_port_struct);
  
  static GPIO_InitTypeDef vsync_port_struct;  //���жϽ��ܶ˿�
  vsync_port_struct.GPIO_PTx = PTE;    
  vsync_port_struct.GPIO_Pins = GPIO_Pin12;   
  vsync_port_struct.GPIO_Dir = DIR_INPUT;        //����
  vsync_port_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;    //�ڲ�����|�½����ж�
  vsync_port_struct.GPIO_Isr = porte_isr;        //�жϺ���
  LPLD_GPIO_Init(vsync_port_struct);
  LPLD_GPIO_EnableIrq(vsync_port_struct);
  
  //����ͷ����Ƭ�����ݿڳ�ʼ����PTE0~PTE7
  static GPIO_InitTypeDef data_port_struct;
  data_port_struct.GPIO_PTx = PTE;
  data_port_struct.GPIO_Dir = DIR_INPUT;
  data_port_struct.GPIO_Pins = GPIO_Pin0_7;
  data_port_struct.GPIO_PinControl = IRQC_DIS|INPUT_PULL_DIS;
  LPLD_GPIO_Init(data_port_struct);
  
  //DMA��������
  static DMA_InitTypeDef  dma_init_struct;
  dma_init_struct.DMA_CHx = DMA_CH0;    //CH0ͨ��
  dma_init_struct.DMA_Req = PORTE_DMAREQ;     //PORTB22Ϊ����Դ
  dma_init_struct.DMA_MajorLoopCnt = COLUMN;   //��ѭ������ֵ���вɼ����������
  dma_init_struct.DMA_MinorByteCnt = 1; //��ѭ���ֽڼ�����ÿ�δ���1�ֽ�
  dma_init_struct.DMA_SourceAddr = (uint32)&PTE->PDIR; //Դ��ַ��PTC0-PTC7,Port Data Input Register
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
  LPLD_UART_EnableIrq(uart4_init_struct);//�ж�ʹ��
  LPLD_UART_Init(uart4_init_struct); //��ʼ��UART
  
  static UART_InitTypeDef uart0_init_struct;
  uart0_init_struct.UART_Uartx = UART0; //UART0������������ͷ
  uart0_init_struct.UART_BaudRate = 115200; 
  uart0_init_struct.UART_RxPin = PTB16;  //��������ΪPTB16
  uart0_init_struct.UART_TxPin = PTB17;  //��������ΪPTB17
  LPLD_UART_Init(uart0_init_struct); //��ʼ��UART
  
  MT9V032_CFG_init();//MT9V032����
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

void my_delay(long t)
{
    while(t--);
}

void porte_isr()
{  
  if(LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin12)) // ���ж�          
  {     
    LPLD_GPIO_ClearIntFlag(PORTE);
    if( (WhichBuffer==1&&lock!=1) || (WhichBuffer==2&&lock!=2) )//��Ҫ��ͼ1��ͼ1û���ڴ������߽�Ҫ��ͼ2��ͼ2û���ڴ���
      start_flag=1; //�����������ĵ�һ֡ͼ��DMA������־���ɼ���ʼ
    else
      start_flag=0;  //æ������ͼ
    rowAdr=0;
    row=0;
  } 
  else if(LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin10)&&start_flag==1) //���жϣ����вɼ�                                                 
  {
    LPLD_GPIO_ClearIntFlag(PORTE);
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

void Calculate_Middle_Point(void)
{
  int i,j,k=0,minj=COLUMN,maxj=0,mini=ROWend,maxi=ROWbegin,prok=0;
 
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
        /**********�����������**********/
    if (prok>0)
    {
      for (i=pointy-prok/2>0 ? pointy-prok/2 : 0;i<=pointy+prok/2;i++)
        for (j=pointx-prok/2>0 ? pointx-prok/2 : 0;j<=pointx+prok/2;j++)
        {
           if(Image1[i][j]>=setvalue)
            sumtuan=sumtuan+1;
        }
     sumtuan=sumtuan/prok/prok;
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
    /**********�����������**********/
    if (prok>0)
    {
      for (i=pointy-prok/2>0 ? pointy-prok/2 : 0;i<=pointy+prok/2;i++)
        for (j=pointx-prok/2>0 ? pointx-prok/2 : 0;j<=pointx+prok/2;j++)
        {
          if (Image2[i][j]>=setvalue)
            sumtuan=sumtuan+1;
        }
      sumtuan=sumtuan/prok/prok;
    }
  } 
   lock=0; //���ͼ������
   //���û������
    testsum[0]=testsum[1];
  testsum[1]=testsum[2];
  testsum[2]=testsum[3];
  testsum[3]=testsum[4];
  testsum[4]=sumtuan;
  testsum_average=(testsum[0]+testsum[1]+testsum[2]+testsum[3]+testsum[4])/5;//ƽ��ֵ�˲�
  if (prok==0 || testsum_average<0.55)
    NOpoint=1;
  else 
  {
    NOpoint=0;
    real_pointy=pointy;//һ��ͼ���������е㣡����
    real_pointx=pointx;//һ��ͼ���������е㣡����
  }

  sumtuan=0;
}


void picture2pc(void)
{
  int i,j;
   if(end_flag)
  {
    disable_irq(PORTE_IRQn); 
    LPLD_UART_PutChar(UART4,0X01);
    LPLD_UART_PutChar(UART4,0XFE);
    
    for(i=0;i<ROWend-ROWbegin;i++)
    {
      for(j=0;j<COLUMN;j++)
      {       
        LPLD_UART_PutChar(UART4,Image1[i][j]);
      }
    }
    LPLD_UART_PutChar(UART4,0XFE);
    LPLD_UART_PutChar(UART4,0X01);
    enable_irq(PORTE_IRQn);
    end_flag=0;
  }
  
}
