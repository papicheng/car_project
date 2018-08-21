
#include "barrier.h"
#include "common.h"


//PE1---PA14, PD9---PC14
void barrier_init(void)
{
  static GPIO_InitTypeDef barrierL_struct;//���ϰ�
  barrierL_struct.GPIO_PTx = PTD;    
  barrierL_struct.GPIO_Pins = GPIO_Pin9|GPIO_Pin8;   
  barrierL_struct.GPIO_Dir = DIR_INPUT;        //����
  barrierL_struct.GPIO_PinControl = IRQC_RI |INPUT_PULL_DOWN;//�����ش����ж�
  barrierL_struct.GPIO_Isr = PTD_isr;        //�жϺ���
  LPLD_GPIO_Init(barrierL_struct);
  disable_irq(PORTD_IRQn);
  
  static GPIO_InitTypeDef barrierR_struct;//���ϰ�
  barrierR_struct.GPIO_PTx = PTE;    
  barrierR_struct.GPIO_Pins = GPIO_Pin27|GPIO_Pin28;   
  barrierR_struct.GPIO_Dir = DIR_INPUT;        //����
  barrierR_struct.GPIO_PinControl = IRQC_RI |INPUT_PULL_DOWN;//�����ش����ж�
  barrierR_struct.GPIO_Isr = PTE_isr;        //�жϺ���
  LPLD_GPIO_Init(barrierR_struct);
  disable_irq(PORTE_IRQn);
  
  
}

void PTD_isr(void)//����ת
{
  if(LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin9))      //��߷����ϰ�
  {
    LPLD_GPIO_ClearIntFlag(PORTD);
    /*while(LPLD_GPIO_Input_b(PTD, 9)!=0)
    {
      LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,5350 );//��ֵΪ4900,������,ֱ���ӻ��ʵ͵�ƽ�Ž�����ѭ��
    }*/
  }
  
}
void PTE_isr(void)//����ת
{
  if(LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin1))      //�ұ߷����ϰ�
  {
    LPLD_GPIO_ClearIntFlag(PORTE);
    /*while(LPLD_GPIO_Input_b(PTE, 1)!=0)
    {
      LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,4350 );  
    }*/
  }
}
