
/**
 2017.08.21����
 */
#include "common.h"
#include "camera_test.h"  
#include "timer.h"
#include "infrared.h"
#include "oled.h"
#include "botton.h"
#include "Freecars.h"
#include "barrier.h"
#include "myflash.h"

uint8 code_switch;   

void nvic_init(void);
void boma_init_gpio(void);

void main (void)
{
  DisableInterrupts;
  nvic_init();//�ж����ȼ�����
  camera_init();//����ͷ��س�ʼ��
  //infrared_init();//�������
  pit_init();//10ms��ʱ�ж�
  QD_init();//������,FTM2
  Servo_Init();  //��ʼ�����,FTM1
  DianG_Init(); //��� FTM0
  PID_Init();   //ת����ٶ�PID��ʼ��
  barrier_init();  //����
  boma_init_gpio();//���뿪�س�ʼ��
  //flash����
  LPLD_Flash_Init();
  parameter_flash();
  /*--------------OLED���ֳ�ʼ��-------------------*/
  led_gpio_int();//�˿�
  LED_Init();//��Ļ
  LED_Fill(0);
  /*--------------����-------------------*/
  botton_dial_switch_gpio_init(); //�����˿ڳ�ʼ��
  Key_Process();//��������
  
  enable_irq(PORTD_IRQn);//�ϰ��ж�
  enable_irq(PORTE_IRQn);//�ϰ��ж�
  enable_irq(PIT0_IRQn);//���ȼ����ú�ǵ�ʹ���ж�,��ʱ�ж�
  enable_irq(PORTB_IRQn);//��ͼ�ж�
  //enable_irq(PORTA_IRQn);//�����ж�
  
  EnableInterrupts;
  start();     //����
  while(1)
  {
    if( PTC8_I == 0 && PTC9_I == 0 && PTC10_I == 0 && PTC11_I == 0 )
      code_switch=0;            
    else if( PTC8_I == 0 && PTC9_I == 0 && PTC10_I == 0 && PTC11_I == 1 )
      code_switch=1;                                 
    else if( PTC8_I == 0 && PTC9_I == 0 && PTC10_I == 1 && PTC11_I == 0 )
      code_switch=2;                
    else if( PTC8_I == 0 && PTC9_I == 0 && PTC10_I == 1 && PTC11_I == 1 )
      code_switch=3;               
    else if( PTC8_I == 0 && PTC9_I == 1 && PTC10_I == 0 && PTC11_I == 0 )
      code_switch=4;             
    else if( PTC8_I == 0 && PTC9_I == 1 && PTC10_I == 0 && PTC11_I == 1 )
      code_switch=5;            
            
    else if( PTC8_I == 1 && PTC9_I == 1 && PTC10_I == 1 && PTC11_I == 1 )
      code_switch=16;  //���� 
    
    if(code_switch==0)
    {
      LED_P6x8Str(8, 2,(unsigned char*)"real_pointx"); 
      LED_PrintValueFP(70,2,real_pointx,3); 
      LED_P6x8Str(8, 3,(unsigned char*)"real_pointy"); 
      LED_PrintValueFP(70,3,real_pointy,3); 
      LED_P6x8Str(8, 4,(unsigned char*)"NOpoint"); 
      LED_PrintValueFP(70,4,NOpoint,1); 
    }
    else if(code_switch==1) //ƫ������
      pianhang_config();
    else if(code_switch==2) //��ͼ
    {
      disable_irq(PIT0_IRQn);
      picture_send();
      enable_irq(PIT0_IRQn);
    }
    else if(code_switch==3) //��˼������λ��PID����
    {
      push(0,(uint16)speed);
      push(1,(uint16)SetSpeed);
      sendDataToScope();
    }
    
  } 
}

void nvic_init(void)  
{
  static NVIC_InitTypeDef nvic_init_struct0;
  nvic_init_struct0.NVIC_IRQChannel=PIT0_IRQn;//   10ms��ʱ
  nvic_init_struct0.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC �жϷ���
  nvic_init_struct0.NVIC_IRQChannelPreemptionPriority=1;//��ռ���ȼ�
  nvic_init_struct0.NVIC_IRQChannelSubPriority=0;//NVIC��Ӧʽ���ȼ�
  LPLD_NVIC_Init(nvic_init_struct0);
  
  static NVIC_InitTypeDef nvic_init_struct1;
  nvic_init_struct1.NVIC_IRQChannel=PORTB_IRQn;//      ����ͷͼ��ɼ������ȼ����
  nvic_init_struct1.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2;//NVIC �жϷ���
  nvic_init_struct1.NVIC_IRQChannelPreemptionPriority=0;//NVIC��ռʽ���ȼ�
  nvic_init_struct1.NVIC_IRQChannelSubPriority=0;//NVIC��Ӧʽ���ȼ�
  LPLD_NVIC_Init(nvic_init_struct1);

  static NVIC_InitTypeDef  nvic_init_struct2;
  nvic_init_struct2.NVIC_IRQChannel=PORTD_IRQn;//      �ϰ��ж�
  nvic_init_struct2.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2;//NVIC �жϷ���
  nvic_init_struct2.NVIC_IRQChannelPreemptionPriority=1;//��ռ���ȼ�
  nvic_init_struct2.NVIC_IRQChannelSubPriority=2;//NVIC��Ӧʽ���ȼ�
  LPLD_NVIC_Init(nvic_init_struct2);
 
  static NVIC_InitTypeDef nvic_init_struct3;
  nvic_init_struct3.NVIC_IRQChannel=PORTE_IRQn;//  �ϰ��ж�
  nvic_init_struct3.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC �жϷ���
  nvic_init_struct3.NVIC_IRQChannelPreemptionPriority=1;//��ռ���ȼ�
  nvic_init_struct3.NVIC_IRQChannelSubPriority=3;//NVIC��Ӧʽ���ȼ�
  LPLD_NVIC_Init(nvic_init_struct3);
  
  static NVIC_InitTypeDef nvic_init_struct4;
  nvic_init_struct4.NVIC_IRQChannel=PORTA_IRQn ;//  �ű����
  nvic_init_struct4.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC �жϷ���
  nvic_init_struct4.NVIC_IRQChannelPreemptionPriority=1;//��ռ���ȼ�
  nvic_init_struct4.NVIC_IRQChannelSubPriority=1;//NVIC��Ӧʽ���ȼ�
  LPLD_NVIC_Init(nvic_init_struct4);
  
  static NVIC_InitTypeDef nvic_init_struct5;
  nvic_init_struct5.NVIC_IRQChannel=UART4_RX_TX_IRQn ;//  ͨ���ж�
  nvic_init_struct5.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC �жϷ���
  nvic_init_struct5.NVIC_IRQChannelPreemptionPriority=0;//��ռ���ȼ�
  nvic_init_struct5.NVIC_IRQChannelSubPriority=2;//NVIC��Ӧʽ���ȼ�
  LPLD_NVIC_Init(nvic_init_struct5);
  
  static NVIC_InitTypeDef nvic_init_struct6;    
  nvic_init_struct6.NVIC_IRQChannel=UART3_RX_TX_IRQn ;//  ͨ���ж�
  nvic_init_struct6.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC �жϷ���
  nvic_init_struct6.NVIC_IRQChannelPreemptionPriority=0;//��ռ���ȼ�
  nvic_init_struct6.NVIC_IRQChannelSubPriority=1;//NVIC��Ӧʽ���ȼ�
  LPLD_NVIC_Init(nvic_init_struct6);
}

void boma_init_gpio(void)
{
  static GPIO_InitTypeDef boma1_io_struct;
  boma1_io_struct.GPIO_PTx=PTC;
  boma1_io_struct.GPIO_Pins= GPIO_Pin8|GPIO_Pin9|GPIO_Pin10|GPIO_Pin11;
  boma1_io_struct.GPIO_Dir=DIR_INPUT;
  boma1_io_struct.GPIO_PinControl=INPUT_PULL_UP;
  LPLD_GPIO_Init(boma1_io_struct);
  
}


