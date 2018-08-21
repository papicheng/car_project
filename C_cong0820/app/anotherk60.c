/*
  信标组从单片机程序
  避障
  红外计数
 */
#include "common.h"
#include "camera.h"
#include "timer.h"
#include "obstacle.h" 
#include "oled.h"

extern uint8 NOpoint;
extern uint8 real_pointx,real_pointy;

void nvic_init(void) ;
void infrared_pwm(void);

void main (void)
{
  DisableInterrupts;
  camera_init();
  infrared_pwm();
  led_gpio_int();
  LED_Init();
  ob_gpio_init();
  pit_init();
  nvic_init();
  enable_irq(PORTE_IRQn);
  enable_irq(PIT0_IRQn);
  EnableInterrupts;
  while(1)
  {
    //picture2pc();
    Key_delay();
    LED_P6x8Str(0, 0,  "NOpoint");
    LED_PrintValueFP(50,0, NOpoint, 1);
    
    LED_P6x8Str(0, 2,  "real_pointx");
    LED_PrintValueFP(80,2,real_pointx,3);
    
    LED_P6x8Str(0, 4,  "real_pointy");
    LED_PrintValueFP(80,4,real_pointy,3);
    
  } 
}

void nvic_init(void)  
{
   static NVIC_InitTypeDef nvic_init_struct0;
   
  nvic_init_struct0.NVIC_IRQChannel=PIT0_IRQn;//中断IRQn_Type号   
  nvic_init_struct0.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
  nvic_init_struct0.NVIC_IRQChannelPreemptionPriority=1;//抢占优先级
  nvic_init_struct0.NVIC_IRQChannelSubPriority=1;//NVIC响应式优先级
  LPLD_NVIC_Init(nvic_init_struct0);
  
  static NVIC_InitTypeDef nvic_init_struct1;
  nvic_init_struct1.NVIC_IRQChannel=PORTE_IRQn;//中断IRQn_Type号        摄像头图像
  nvic_init_struct1.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2;//NVIC 中断分组
  nvic_init_struct1.NVIC_IRQChannelPreemptionPriority=0;//NVIC抢占式优先级
  nvic_init_struct1.NVIC_IRQChannelSubPriority=0;//NVIC响应式优先级
  LPLD_NVIC_Init(nvic_init_struct1);
  
}
void infrared_pwm(void)
{
  static FTM_InitTypeDef ftm_init_struct;
  ftm_init_struct.FTM_Ftmx = FTM0;	           //使能FTM0通道
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	 //使能PWM模式
  ftm_init_struct.FTM_PwmFreq = 100;         //PWM频率50Hz
  LPLD_FTM_Init(ftm_init_struct);
  LPLD_FTM_PWM_Enable(FTM0,FTM_Ch5,9000,PTD5,ALIGN_LEFT);
  LPLD_FTM_PWM_Enable(FTM0,FTM_Ch6,9000,PTD6,ALIGN_LEFT);//使能PWM 
  LPLD_FTM_PWM_Enable(FTM0,FTM_Ch7,9000,PTD7,ALIGN_LEFT);
}

