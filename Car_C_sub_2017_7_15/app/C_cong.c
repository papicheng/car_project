/**
 * --------------基于"拉普兰德K60底层库V3"的工程（C_cong）-----------------
 * @file C_cong.c
 * @version 0.0
 * @date 2013-9-29
 * @brief 关于该工程的描述
 *
 * 版权所有:北京拉普兰德电子技术有限公司
 * http://www.lpld.cn
 * mail:support@lpld.cn
 * 硬件平台:  LPLD K60 Card / LPLD K60 Nano
 *
 * 本工程基于"拉普兰德K60底层库V3"开发，
 * 所有开源代码均在"lib"文件夹下，用户不必更改该目录下代码，
 * 所有用户工程需保存在"project"文件夹下，以工程名定义文件夹名，
 * 底层库使用方法见相关文档。
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
    ftm_init_struct.FTM_Ftmx = FTM0;             //使能FTM0通道
    ftm_init_struct.FTM_Mode = FTM_MODE_PWM;   //使能PWM模式
    ftm_init_struct.FTM_PwmFreq = 100;         //PWM频率50Hz
    LPLD_FTM_Init( ftm_init_struct );
    LPLD_FTM_PWM_Enable( FTM0, FTM_Ch5, 9000, PTD5, ALIGN_LEFT );
    LPLD_FTM_PWM_Enable( FTM0, FTM_Ch6, 9000, PTD6, ALIGN_LEFT ); //使能PWM
    LPLD_FTM_PWM_Enable( FTM0, FTM_Ch7, 9000, PTD7, ALIGN_LEFT );
}
void nvic_init( void )
{
    static NVIC_InitTypeDef nvic_init_struct0;
    nvic_init_struct0.NVIC_IRQChannel = PIT0_IRQn; //中断IRQn_Type号
    nvic_init_struct0.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2 ; //NVIC 中断分组
    nvic_init_struct0.NVIC_IRQChannelPreemptionPriority = 1; //抢占优先级
    nvic_init_struct0.NVIC_IRQChannelSubPriority = 1; //NVIC响应式优先级
    LPLD_NVIC_Init( nvic_init_struct0 );
    static NVIC_InitTypeDef nvic_init_struct1;
    nvic_init_struct1.NVIC_IRQChannel = PORTE_IRQn; //中断IRQn_Type号        摄像头图像
    nvic_init_struct1.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2; //NVIC 中断分组
    nvic_init_struct1.NVIC_IRQChannelPreemptionPriority = 0; //NVIC抢占式优先级
    nvic_init_struct1.NVIC_IRQChannelSubPriority = 0; //NVIC响应式优先级
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

