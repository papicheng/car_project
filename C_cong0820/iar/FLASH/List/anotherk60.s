///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      20/Aug/2017  21:29:17
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\app\anotherk60.c
//    Command line =  
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\app\anotherk60.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\FLASH\List
//        -lB
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\FLASH\List
//        -o
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\FLASH\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\app\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\CPU\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\common\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\LPLD\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\LPLD\HW\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\FatFs\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\FatFs\option\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\USB\common\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\USB\driver\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\USB\descriptor\
//        -I
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\USB\class\
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\iar\FLASH\List\anotherk60.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Key_delay
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
        EXTERN ob_gpio_init
        EXTERN pit_init
        EXTERN real_pointx
        EXTERN real_pointy

        PUBLIC infrared_pwm
        PUBLIC main
        PUBLIC nvic_init

// G:\机器人团队\Freescale\2016.10.22培训资料\库及例程包\LPLD_OSKinetis_V3\project\C_cong0820\app\anotherk60.c
//    1 /*
//    2   信标组从单片机程序
//    3   避障
//    4   红外计数
//    5  */
//    6 #include "common.h"

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
//    7 #include "camera.h"
//    8 #include "timer.h"
//    9 #include "obstacle.h" 
//   10 #include "oled.h"
//   11 
//   12 extern uint8 NOpoint;
//   13 extern uint8 real_pointx,real_pointy;
//   14 
//   15 void nvic_init(void) ;
//   16 void infrared_pwm(void);
//   17 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 void main (void)
//   19 {
main:
        PUSH     {R7,LR}
//   20   DisableInterrupts;
        CPSID    I
//   21   camera_init();
        BL       camera_init
//   22   infrared_pwm();
        BL       infrared_pwm
//   23   led_gpio_int();
        BL       led_gpio_int
//   24   LED_Init();
        BL       LED_Init
//   25   ob_gpio_init();
        BL       ob_gpio_init
//   26   pit_init();
        BL       pit_init
//   27   nvic_init();
        BL       nvic_init
//   28   enable_irq(PORTE_IRQn);
        MOVS     R0,#+91
        BL       NVIC_EnableIRQ
//   29   enable_irq(PIT0_IRQn);
        MOVS     R0,#+68
        BL       NVIC_EnableIRQ
//   30   EnableInterrupts;
        CPSIE    I
//   31   while(1)
//   32   {
//   33     //picture2pc();
//   34     Key_delay();
??main_0:
        BL       Key_delay
//   35     LED_P6x8Str(0, 0,  "NOpoint");
        LDR.N    R2,??DataTable3_1
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LED_P6x8Str
//   36     LED_PrintValueFP(50,0, NOpoint, 1);
        MOVS     R3,#+1
        LDR.N    R0,??DataTable3_2
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+50
        BL       LED_PrintValueFP
//   37     
//   38     LED_P6x8Str(0, 2,  "real_pointx");
        LDR.N    R2,??DataTable3_3
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LED_P6x8Str
//   39     LED_PrintValueFP(80,2,real_pointx,3);
        MOVS     R3,#+3
        LDR.N    R0,??DataTable3_4
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+80
        BL       LED_PrintValueFP
//   40     
//   41     LED_P6x8Str(0, 4,  "real_pointy");
        LDR.N    R2,??DataTable3_5
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LED_P6x8Str
//   42     LED_PrintValueFP(80,4,real_pointy,3);
        MOVS     R3,#+3
        LDR.N    R0,??DataTable3_6
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+80
        BL       LED_PrintValueFP
        B.N      ??main_0
//   43     
//   44   } 
//   45 }
//   46 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   47 void nvic_init(void)  
//   48 {
nvic_init:
        PUSH     {R7,LR}
//   49    static NVIC_InitTypeDef nvic_init_struct0;
//   50    
//   51   nvic_init_struct0.NVIC_IRQChannel=PIT0_IRQn;//中断IRQn_Type号   
        MOVS     R0,#+68
        LDR.N    R1,??DataTable3_7
        STRB     R0,[R1, #+0]
//   52   nvic_init_struct0.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
        MOVS     R0,#+5
        LDR.N    R1,??DataTable3_7
        STR      R0,[R1, #+4]
//   53   nvic_init_struct0.NVIC_IRQChannelPreemptionPriority=1;//抢占优先级
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_7
        STR      R0,[R1, #+8]
//   54   nvic_init_struct0.NVIC_IRQChannelSubPriority=1;//NVIC响应式优先级
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_7
        STR      R0,[R1, #+12]
//   55   LPLD_NVIC_Init(nvic_init_struct0);
        LDR.N    R1,??DataTable3_7
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   56   
//   57   static NVIC_InitTypeDef nvic_init_struct1;
//   58   nvic_init_struct1.NVIC_IRQChannel=PORTE_IRQn;//中断IRQn_Type号        摄像头图像
        MOVS     R0,#+91
        LDR.N    R1,??DataTable3_8
        STRB     R0,[R1, #+0]
//   59   nvic_init_struct1.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2;//NVIC 中断分组
        MOVS     R0,#+5
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+4]
//   60   nvic_init_struct1.NVIC_IRQChannelPreemptionPriority=0;//NVIC抢占式优先级
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+8]
//   61   nvic_init_struct1.NVIC_IRQChannelSubPriority=0;//NVIC响应式优先级
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+12]
//   62   LPLD_NVIC_Init(nvic_init_struct1);
        LDR.N    R1,??DataTable3_8
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   63   
//   64 }
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
//   65 void infrared_pwm(void)
//   66 {
infrared_pwm:
        PUSH     {R5-R7,LR}
//   67   static FTM_InitTypeDef ftm_init_struct;
//   68   ftm_init_struct.FTM_Ftmx = FTM0;	           //使能FTM0通道
        LDR.N    R0,??DataTable3_9  ;; 0x40038000
        LDR.N    R1,??DataTable3_10
        STR      R0,[R1, #+0]
//   69   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	 //使能PWM模式
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_10
        STRB     R0,[R1, #+4]
//   70   ftm_init_struct.FTM_PwmFreq = 100;         //PWM频率50Hz
        MOVS     R0,#+100
        LDR.N    R1,??DataTable3_10
        STR      R0,[R1, #+8]
//   71   LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable3_10
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   72   LPLD_FTM_PWM_Enable(FTM0,FTM_Ch5,9000,PTD5,ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+97
        MOVW     R2,#+9000
        MOVS     R1,#+5
        LDR.N    R0,??DataTable3_9  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   73   LPLD_FTM_PWM_Enable(FTM0,FTM_Ch6,9000,PTD6,ALIGN_LEFT);//使能PWM 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+98
        MOVW     R2,#+9000
        MOVS     R1,#+6
        LDR.N    R0,??DataTable3_9  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   74   LPLD_FTM_PWM_Enable(FTM0,FTM_Ch7,9000,PTD7,ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+99
        MOVW     R2,#+9000
        MOVS     R1,#+7
        LDR.N    R0,??DataTable3_9  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   75 }
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     NOpoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     real_pointx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     real_pointy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     ??nvic_init_struct0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     ??nvic_init_struct1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     ??ftm_init_struct

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??ftm_init_struct:
        DS8 28

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
//   76 
// 
//  68 bytes in section .bss
//  32 bytes in section .rodata
// 370 bytes in section .text
// 
// 370 bytes of CODE  memory
//  32 bytes of CONST memory
//  68 bytes of DATA  memory
//
//Errors: none
//Warnings: none
