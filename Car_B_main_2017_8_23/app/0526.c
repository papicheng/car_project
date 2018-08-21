
/**
 2017.08.21创建
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
  nvic_init();//中断优先级配置
  camera_init();//摄像头相关初始化
  //infrared_init();//红外计数
  pit_init();//10ms定时中断
  QD_init();//编码器,FTM2
  Servo_Init();  //初始化舵机,FTM1
  DianG_Init(); //电机 FTM0
  PID_Init();   //转向和速度PID初始化
  barrier_init();  //避障
  boma_init_gpio();//拨码开关初始化
  //flash部分
  LPLD_Flash_Init();
  parameter_flash();
  /*--------------OLED部分初始化-------------------*/
  led_gpio_int();//端口
  LED_Init();//屏幕
  LED_Fill(0);
  /*--------------按键-------------------*/
  botton_dial_switch_gpio_init(); //按键端口初始化
  Key_Process();//按键过程
  
  enable_irq(PORTD_IRQn);//障碍中断
  enable_irq(PORTE_IRQn);//障碍中断
  enable_irq(PIT0_IRQn);//优先级配置后记得使能中断,定时中断
  enable_irq(PORTB_IRQn);//采图中断
  //enable_irq(PORTA_IRQn);//计数中断
  
  EnableInterrupts;
  start();     //发车
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
      code_switch=16;  //竞赛 
    
    if(code_switch==0)
    {
      LED_P6x8Str(8, 2,(unsigned char*)"real_pointx"); 
      LED_PrintValueFP(70,2,real_pointx,3); 
      LED_P6x8Str(8, 3,(unsigned char*)"real_pointy"); 
      LED_PrintValueFP(70,3,real_pointy,3); 
      LED_P6x8Str(8, 4,(unsigned char*)"NOpoint"); 
      LED_PrintValueFP(70,4,NOpoint,1); 
    }
    else if(code_switch==1) //偏航调整
      pianhang_config();
    else if(code_switch==2) //传图
    {
      disable_irq(PIT0_IRQn);
      picture_send();
      enable_irq(PIT0_IRQn);
    }
    else if(code_switch==3) //飞思卡尔上位机PID调整
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
  nvic_init_struct0.NVIC_IRQChannel=PIT0_IRQn;//   10ms定时
  nvic_init_struct0.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
  nvic_init_struct0.NVIC_IRQChannelPreemptionPriority=1;//抢占优先级
  nvic_init_struct0.NVIC_IRQChannelSubPriority=0;//NVIC响应式优先级
  LPLD_NVIC_Init(nvic_init_struct0);
  
  static NVIC_InitTypeDef nvic_init_struct1;
  nvic_init_struct1.NVIC_IRQChannel=PORTB_IRQn;//      摄像头图像采集，优先级最高
  nvic_init_struct1.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2;//NVIC 中断分组
  nvic_init_struct1.NVIC_IRQChannelPreemptionPriority=0;//NVIC抢占式优先级
  nvic_init_struct1.NVIC_IRQChannelSubPriority=0;//NVIC响应式优先级
  LPLD_NVIC_Init(nvic_init_struct1);

  static NVIC_InitTypeDef  nvic_init_struct2;
  nvic_init_struct2.NVIC_IRQChannel=PORTD_IRQn;//      障碍中断
  nvic_init_struct2.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2;//NVIC 中断分组
  nvic_init_struct2.NVIC_IRQChannelPreemptionPriority=1;//抢占优先级
  nvic_init_struct2.NVIC_IRQChannelSubPriority=2;//NVIC响应式优先级
  LPLD_NVIC_Init(nvic_init_struct2);
 
  static NVIC_InitTypeDef nvic_init_struct3;
  nvic_init_struct3.NVIC_IRQChannel=PORTE_IRQn;//  障碍中断
  nvic_init_struct3.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
  nvic_init_struct3.NVIC_IRQChannelPreemptionPriority=1;//抢占优先级
  nvic_init_struct3.NVIC_IRQChannelSubPriority=3;//NVIC响应式优先级
  LPLD_NVIC_Init(nvic_init_struct3);
  
  static NVIC_InitTypeDef nvic_init_struct4;
  nvic_init_struct4.NVIC_IRQChannel=PORTA_IRQn ;//  信标计数
  nvic_init_struct4.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
  nvic_init_struct4.NVIC_IRQChannelPreemptionPriority=1;//抢占优先级
  nvic_init_struct4.NVIC_IRQChannelSubPriority=1;//NVIC响应式优先级
  LPLD_NVIC_Init(nvic_init_struct4);
  
  static NVIC_InitTypeDef nvic_init_struct5;
  nvic_init_struct5.NVIC_IRQChannel=UART4_RX_TX_IRQn ;//  通信中断
  nvic_init_struct5.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
  nvic_init_struct5.NVIC_IRQChannelPreemptionPriority=0;//抢占优先级
  nvic_init_struct5.NVIC_IRQChannelSubPriority=2;//NVIC响应式优先级
  LPLD_NVIC_Init(nvic_init_struct5);
  
  static NVIC_InitTypeDef nvic_init_struct6;    
  nvic_init_struct6.NVIC_IRQChannel=UART3_RX_TX_IRQn ;//  通信中断
  nvic_init_struct6.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
  nvic_init_struct6.NVIC_IRQChannelPreemptionPriority=0;//抢占优先级
  nvic_init_struct6.NVIC_IRQChannelSubPriority=1;//NVIC响应式优先级
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


