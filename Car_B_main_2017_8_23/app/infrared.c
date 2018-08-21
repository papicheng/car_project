#include "infrared.h"
#include "common.h"
#include "timer.h"
#include "camera_test.h"
uint8 pass=0;//��ǰ�ű����

uint8 move_flag=0;//������־(���PWM),����ǰ�ѿ�ʼ������PWM

void infrared_init(void)
{
  static GPIO_InitTypeDef Count_Port_init;
  Count_Port_init.GPIO_PTx = PTA; 
  Count_Port_init.GPIO_Pins = GPIO_Pin13;
  Count_Port_init.GPIO_Dir = DIR_INPUT;
  Count_Port_init.GPIO_PinControl=IRQC_RI|INPUT_PULL_DOWN;//  �������ж�                        
  Count_Port_init.GPIO_Isr =infrared_count; 
  LPLD_GPIO_Init(Count_Port_init);
  disable_irq(PORTA_IRQn);
  
}
void infrared_count (void)  //�������
{
  if(LPLD_GPIO_IsPinxExt(PORTA, GPIO_Pin13))
  {
    LPLD_GPIO_ClearIntFlag(PORTA);
    pass++;
    passflag=1;
    //LPLD_UART_PutChar(UART4,pass);//���͹��ű���
  }
    
}
void start(void)//��������
{
  while(NOpoint);
  move_flag=1;
  
}
