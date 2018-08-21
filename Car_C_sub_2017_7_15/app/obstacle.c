
#include "obstacle.h"
#include "common.h"
GPIO_InitTypeDef obinterrupt0_struct;
GPIO_InitTypeDef obinterrupt1_struct;
GPIO_InitTypeDef obinterrupt2_struct;
GPIO_InitTypeDef obinterrupt3_struct;
//����������������E26-AA16  E27-AA17 E28-AA18 A4-AA19 A5-AA12 A7-AA13�ɴ����ж�
void ob_gpio_init(void)
{
  /*---------------���š�������-------*/
  obinterrupt0_struct.GPIO_PTx = PTA;    //�ϰ����ң�����ת�� 
  obinterrupt0_struct.GPIO_Pins = GPIO_Pin12;   
  obinterrupt0_struct.GPIO_Dir = DIR_OUTPUT;        //���
  obinterrupt0_struct.GPIO_Output=OUTPUT_L ;
  obinterrupt0_struct.GPIO_PinControl = OUTPUT_SR_SLOW|OUTPUT_DSL;//INPUT_PULL_UP|IRQC_FA;     //�ڲ�����|�½����ж�
  LPLD_GPIO_Init(obinterrupt0_struct);
  obinterrupt1_struct.GPIO_PTx = PTA;    //�ϰ����ң�����ת�� 
  obinterrupt1_struct.GPIO_Pins = GPIO_Pin13;   
  obinterrupt1_struct.GPIO_Dir = DIR_OUTPUT;        //���
  obinterrupt1_struct.GPIO_Output=OUTPUT_L ;
  obinterrupt1_struct.GPIO_PinControl = OUTPUT_SR_SLOW|OUTPUT_DSL;//INPUT_PULL_UP|IRQC_FA;     //�ڲ�����|�½����ж�
  LPLD_GPIO_Init(obinterrupt1_struct);
  /*---------------С��š�������-------*/
  obinterrupt2_struct.GPIO_PTx = PTA;    //�ϰ����ң�����ת�� 
  obinterrupt2_struct.GPIO_Pins = GPIO_Pin19;   
  obinterrupt2_struct.GPIO_Dir = DIR_OUTPUT;        //���
  obinterrupt2_struct.GPIO_Output=OUTPUT_L ;
  obinterrupt2_struct.GPIO_PinControl = OUTPUT_SR_SLOW|OUTPUT_DSL;//INPUT_PULL_UP|IRQC_FA;     //�ڲ�����|�½����ж�
  LPLD_GPIO_Init(obinterrupt2_struct);
  
  obinterrupt3_struct.GPIO_PTx = PTA; //�ϰ���������ת��   
  obinterrupt3_struct.GPIO_Pins = GPIO_Pin17;   
  obinterrupt3_struct.GPIO_Dir = DIR_OUTPUT;        //���
  obinterrupt3_struct.GPIO_Output=OUTPUT_L ;
  obinterrupt3_struct.GPIO_PinControl = OUTPUT_SR_SLOW|OUTPUT_DSL;//INPUT_PULL_UP|IRQC_FA;     //�ڲ�����|�½����ж�
  LPLD_GPIO_Init(obinterrupt3_struct);
}
void obstacle_output(void)
{
  
  
  
}
