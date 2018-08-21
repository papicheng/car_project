///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Aug/2017  09:52:51
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\app\C_cong.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\app\C_cong.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\FLASH\List
//        -lB
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\FLASH\List
//        -o
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\FLASH\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "E:\IAR Systems\Embedded
//        Workbench 7.3\arm\INC\c\DLib_Config_Normal.h" -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\app\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\CPU\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\common\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\LPLD\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\LPLD\HW\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\FatFs\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\FatFs\option\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\USB\common\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\USB\driver\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\USB\descriptor\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\USB\class\
//        -Ol -I "E:\IAR Systems\Embedded Workbench 7.3\arm\CMSIS\Include\" -D
//        ARM_MATH_CM4
//    List file    =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\FLASH\List\C_cong.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LED_Init
        EXTERN LED_P6x8Str
        EXTERN LED_PrintValueFP
        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN LPLD_NVIC_Init
        EXTERN NOpoint
        EXTERN __aeabi_memcpy4
        EXTERN camera_init
        EXTERN led_gpio_int
        EXTERN pit_init
        EXTERN real_pointx
        EXTERN real_pointy

        PUBLIC infrared_pwm
        PUBLIC main
        PUBLIC nvic_init

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\app\C_cong.c
//    1 /**
//    2  * --------------基于"拉普兰德K60底层库V3"的工程（C_cong）-----------------
//    3  * @file C_cong.c
//    4  * @version 0.0
//    5  * @date 2013-9-29
//    6  * @brief 关于该工程的描述
//    7  *
//    8  * 版权所有:北京拉普兰德电子技术有限公司
//    9  * http://www.lpld.cn
//   10  * mail:support@lpld.cn
//   11  * 硬件平台:  LPLD K60 Card / LPLD K60 Nano
//   12  *
//   13  * 本工程基于"拉普兰德K60底层库V3"开发，
//   14  * 所有开源代码均在"lib"文件夹下，用户不必更改该目录下代码，
//   15  * 所有用户工程需保存在"project"文件夹下，以工程名定义文件夹名，
//   16  * 底层库使用方法见相关文档。
//   17  *
//   18  */
//   19 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.N    R2,??DataTable3  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   20 #include "camera.h"
//   21 #include "timer.h"
//   22 #include "obstacle.h"
//   23 #include "oled.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void infrared_pwm( void )
//   25 {
infrared_pwm:
        PUSH     {R5-R7,LR}
//   26     static FTM_InitTypeDef ftm_init_struct;
//   27     ftm_init_struct.FTM_Ftmx = FTM0;             //使能FTM0通道
        LDR.N    R0,??DataTable3_1  ;; 0x40038000
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   28     ftm_init_struct.FTM_Mode = FTM_MODE_PWM;   //使能PWM模式
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_2
        STRB     R0,[R1, #+4]
//   29     ftm_init_struct.FTM_PwmFreq = 100;         //PWM频率50Hz
        MOVS     R0,#+100
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+8]
//   30     LPLD_FTM_Init( ftm_init_struct );
        LDR.N    R1,??DataTable3_2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   31     LPLD_FTM_PWM_Enable( FTM0, FTM_Ch5, 9000, PTD5, ALIGN_LEFT );
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+97
        MOVW     R2,#+9000
        MOVS     R1,#+5
        LDR.N    R0,??DataTable3_1  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   32     LPLD_FTM_PWM_Enable( FTM0, FTM_Ch6, 9000, PTD6, ALIGN_LEFT ); //使能PWM
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+98
        MOVW     R2,#+9000
        MOVS     R1,#+6
        LDR.N    R0,??DataTable3_1  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   33     LPLD_FTM_PWM_Enable( FTM0, FTM_Ch7, 9000, PTD7, ALIGN_LEFT );
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+99
        MOVW     R2,#+9000
        MOVS     R1,#+7
        LDR.N    R0,??DataTable3_1  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   34 }
        POP      {R0-R2,PC}       ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??ftm_init_struct:
        DS8 28

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void nvic_init( void )
//   36 {
nvic_init:
        PUSH     {R7,LR}
//   37     static NVIC_InitTypeDef nvic_init_struct0;
//   38     nvic_init_struct0.NVIC_IRQChannel = PIT0_IRQn; //中断IRQn_Type号
        MOVS     R0,#+68
        LDR.N    R1,??DataTable3_3
        STRB     R0,[R1, #+0]
//   39     nvic_init_struct0.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2 ; //NVIC 中断分组
        MOVS     R0,#+5
        LDR.N    R1,??DataTable3_3
        STR      R0,[R1, #+4]
//   40     nvic_init_struct0.NVIC_IRQChannelPreemptionPriority = 1; //抢占优先级
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_3
        STR      R0,[R1, #+8]
//   41     nvic_init_struct0.NVIC_IRQChannelSubPriority = 1; //NVIC响应式优先级
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_3
        STR      R0,[R1, #+12]
//   42     LPLD_NVIC_Init( nvic_init_struct0 );
        LDR.N    R1,??DataTable3_3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   43     static NVIC_InitTypeDef nvic_init_struct1;
//   44     nvic_init_struct1.NVIC_IRQChannel = PORTE_IRQn; //中断IRQn_Type号        摄像头图像
        MOVS     R0,#+91
        LDR.N    R1,??DataTable3_4
        STRB     R0,[R1, #+0]
//   45     nvic_init_struct1.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2; //NVIC 中断分组
        MOVS     R0,#+5
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+4]
//   46     nvic_init_struct1.NVIC_IRQChannelPreemptionPriority = 0; //NVIC抢占式优先级
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+8]
//   47     nvic_init_struct1.NVIC_IRQChannelSubPriority = 0; //NVIC响应式优先级
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+12]
//   48     LPLD_NVIC_Init( nvic_init_struct1 );
        LDR.N    R1,??DataTable3_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   49 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??nvic_init_struct0:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??nvic_init_struct1:
        DS8 20

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void main( void )
//   51 {
main:
        PUSH     {R7,LR}
//   52     nvic_init();
        BL       nvic_init
//   53     DisableInterrupts;
        CPSID    I
//   54     camera_init();
        BL       camera_init
//   55 //    infrared_pwm();
//   56     led_gpio_int();
        BL       led_gpio_int
//   57     LED_Init();
        BL       LED_Init
//   58 //    ob_gpio_init();
//   59     pit_init();
        BL       pit_init
//   60     enable_irq( PORTE_IRQn );
        MOVS     R0,#+91
        BL       NVIC_EnableIRQ
//   61     enable_irq( PIT0_IRQn );
        MOVS     R0,#+68
        BL       NVIC_EnableIRQ
//   62     EnableInterrupts;
        CPSIE    I
//   63     while( 1 )
//   64     {
//   65 //        picture2pc();
//   66         LED_P6x8Str( 0, 0,  "NOpoint" );
??main_0:
        LDR.N    R2,??DataTable3_5
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LED_P6x8Str
//   67         LED_PrintValueFP( 50, 0, NOpoint, 1 );
        MOVS     R3,#+1
        LDR.N    R0,??DataTable3_6
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+50
        BL       LED_PrintValueFP
//   68         LED_P6x8Str( 0, 2,  "real_pointx" );
        LDR.N    R2,??DataTable3_7
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LED_P6x8Str
//   69         LED_PrintValueFP( 80, 2, real_pointx, 3 );
        MOVS     R3,#+3
        LDR.N    R0,??DataTable3_8
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+80
        BL       LED_PrintValueFP
//   70         LED_P6x8Str( 0, 4,  "real_pointy" );
        LDR.N    R2,??DataTable3_9
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LED_P6x8Str
//   71         LED_PrintValueFP( 80, 4, real_pointy, 3 );
        MOVS     R3,#+3
        LDR.N    R0,??DataTable3_10
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+80
        BL       LED_PrintValueFP
        B.N      ??main_0
//   72     }
//   73 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     ??ftm_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     ??nvic_init_struct0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     ??nvic_init_struct1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     NOpoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     real_pointx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     real_pointy

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "NOpoint"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "real_pointx"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "real_pointy"

        END
//   74 
// 
//  68 bytes in section .bss
//  32 bytes in section .rodata
// 358 bytes in section .text
// 
// 358 bytes of CODE  memory
//  32 bytes of CONST memory
//  68 bytes of DATA  memory
//
//Errors: none
//Warnings: none
