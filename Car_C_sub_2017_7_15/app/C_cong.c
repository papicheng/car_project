/**
 * --------------����"��������K60�ײ��V3"�Ĺ��̣�C_cong��-----------------
 * @file C_cong.c
 * @version 0.0
 * @date 2013-9-29
 * @brief ���ڸù��̵�����
 *
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * http://www.lpld.cn
 * mail:support@lpld.cn
 * Ӳ��ƽ̨:  LPLD K60 Card / LPLD K60 Nano
 *
 * �����̻���"��������K60�ײ��V3"������
 * ���п�Դ�������"lib"�ļ����£��û����ظ��ĸ�Ŀ¼�´��룬
 * �����û������豣����"project"�ļ����£��Թ����������ļ�������
 * �ײ��ʹ�÷���������ĵ���
 *
 */
#include "common.h"
#include "camera.h"
#include "timer.h"
#include "obstacle.h"
#include "oled.h"
void infrared_pwm( void )
{
    static FTM_InitTypeDef ftm_init_struct;
    ftm_init_struct.FTM_Ftmx = FTM0;             //ʹ��FTM0ͨ��
    ftm_init_struct.FTM_Mode = FTM_MODE_PWM;   //ʹ��PWMģʽ
    ftm_init_struct.FTM_PwmFreq = 100;         //PWMƵ��50Hz
    LPLD_FTM_Init( ftm_init_struct );
    LPLD_FTM_PWM_Enable( FTM0, FTM_Ch5, 9000, PTD5, ALIGN_LEFT );
    LPLD_FTM_PWM_Enable( FTM0, FTM_Ch6, 9000, PTD6, ALIGN_LEFT ); //ʹ��PWM
    LPLD_FTM_PWM_Enable( FTM0, FTM_Ch7, 9000, PTD7, ALIGN_LEFT );
}
void nvic_init( void )
{
    static NVIC_InitTypeDef nvic_init_struct0;
    nvic_init_struct0.NVIC_IRQChannel = PIT0_IRQn; //�ж�IRQn_Type��
    nvic_init_struct0.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2 ; //NVIC �жϷ���
    nvic_init_struct0.NVIC_IRQChannelPreemptionPriority = 1; //��ռ���ȼ�
    nvic_init_struct0.NVIC_IRQChannelSubPriority = 1; //NVIC��Ӧʽ���ȼ�
    LPLD_NVIC_Init( nvic_init_struct0 );
    static NVIC_InitTypeDef nvic_init_struct1;
    nvic_init_struct1.NVIC_IRQChannel = PORTE_IRQn; //�ж�IRQn_Type��        ����ͷͼ��
    nvic_init_struct1.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2; //NVIC �жϷ���
    nvic_init_struct1.NVIC_IRQChannelPreemptionPriority = 0; //NVIC��ռʽ���ȼ�
    nvic_init_struct1.NVIC_IRQChannelSubPriority = 0; //NVIC��Ӧʽ���ȼ�
    LPLD_NVIC_Init( nvic_init_struct1 );
}
void main( void )
{
    nvic_init();
    DisableInterrupts;
    camera_init();
//    infrared_pwm();
    led_gpio_int();
    LED_Init();
//    ob_gpio_init();
    pit_init();
    enable_irq( PORTE_IRQn );
    enable_irq( PIT0_IRQn );
    EnableInterrupts;
    while( 1 )
    {
//        picture2pc();
        LED_P6x8Str( 0, 0,  "NOpoint" );
        LED_PrintValueFP( 50, 0, NOpoint, 1 );
        LED_P6x8Str( 0, 2,  "real_pointx" );
        LED_PrintValueFP( 80, 2, real_pointx, 3 );
        LED_P6x8Str( 0, 4,  "real_pointy" );
        LED_PrintValueFP( 80, 4, real_pointy, 3 );
    }
}

