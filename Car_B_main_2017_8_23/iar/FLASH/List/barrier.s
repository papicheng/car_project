///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      23/Aug/2017  10:34:53
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\barrier.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\barrier.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List
//        -lB
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List
//        -o
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "E:\IAR Systems\Embedded
//        Workbench 7.3\arm\INC\c\DLib_Config_Normal.h" -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\app\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\CPU\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\common\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\LPLD\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\LPLD\HW\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\FatFs\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\FatFs\option\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\USB\common\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\USB\driver\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\USB\descriptor\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\..\..\..\lib\USB\class\
//        -Ol -I "E:\IAR Systems\Embedded Workbench 7.3\arm\CMSIS\Include\" -D
//        ARM_MATH_CM4
//    List file    =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List\barrier.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memcpy4

        PUBLIC PTD_isr
        PUBLIC PTE_isr
        PUBLIC barrier_init

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\barrier.c
//    1 
//    2 #include "barrier.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.N    R2,??DataTable3  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//    3 #include "common.h"
//    4 
//    5 
//    6 //PE1---PA14, PD9---PC14

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    7 void barrier_init(void)
//    8 {
barrier_init:
        PUSH     {R7,LR}
//    9   static GPIO_InitTypeDef barrierL_struct;//左障碍
//   10   barrierL_struct.GPIO_PTx = PTD;    
        LDR.N    R0,??DataTable3_1  ;; 0x400ff0c0
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   11   barrierL_struct.GPIO_Pins = GPIO_Pin9|GPIO_Pin8;   
        MOV      R0,#+768
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+4]
//   12   barrierL_struct.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_2
        STRB     R0,[R1, #+12]
//   13   barrierL_struct.GPIO_PinControl = IRQC_RI |INPUT_PULL_DOWN;//上升沿触发中断
        LDR.N    R0,??DataTable3_3  ;; 0x90002
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+8]
//   14   barrierL_struct.GPIO_Isr = PTD_isr;        //中断函数
        ADR.W    R0,PTD_isr
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+16]
//   15   LPLD_GPIO_Init(barrierL_struct);
        LDR.N    R1,??DataTable3_2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   16   disable_irq(PORTD_IRQn);
        MOVS     R0,#+90
        BL       NVIC_DisableIRQ
//   17   
//   18   static GPIO_InitTypeDef barrierR_struct;//右障碍
//   19   barrierR_struct.GPIO_PTx = PTE;    
        LDR.N    R0,??DataTable3_4  ;; 0x400ff100
        LDR.N    R1,??DataTable3_5
        STR      R0,[R1, #+0]
//   20   barrierR_struct.GPIO_Pins = GPIO_Pin27|GPIO_Pin28;   
        MOVS     R0,#+402653184
        LDR.N    R1,??DataTable3_5
        STR      R0,[R1, #+4]
//   21   barrierR_struct.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_5
        STRB     R0,[R1, #+12]
//   22   barrierR_struct.GPIO_PinControl = IRQC_RI |INPUT_PULL_DOWN;//上升沿触发中断
        LDR.N    R0,??DataTable3_3  ;; 0x90002
        LDR.N    R1,??DataTable3_5
        STR      R0,[R1, #+8]
//   23   barrierR_struct.GPIO_Isr = PTE_isr;        //中断函数
        ADR.W    R0,PTE_isr
        LDR.N    R1,??DataTable3_5
        STR      R0,[R1, #+16]
//   24   LPLD_GPIO_Init(barrierR_struct);
        LDR.N    R1,??DataTable3_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   25   disable_irq(PORTE_IRQn);
        MOVS     R0,#+91
        BL       NVIC_DisableIRQ
//   26   
//   27   
//   28 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??barrierL_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??barrierR_struct:
        DS8 20
//   29 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   30 void PTD_isr(void)//车右转
//   31 {
//   32   if(LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin9))      //左边发现障碍
PTD_isr:
        LDR.N    R0,??DataTable3_6  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+22
        BPL.N    ??PTD_isr_0
//   33   {
//   34     LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable3_6  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//   35     /*while(LPLD_GPIO_Input_b(PTD, 9)!=0)
//   36     {
//   37       LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,5350 );//中值为4900,不打死,直到从机质低电平才结束次循环
//   38     }*/
//   39   }
//   40   
//   41 }
??PTD_isr_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   42 void PTE_isr(void)//车左转
//   43 {
//   44   if(LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin1))      //右边发现障碍
PTE_isr:
        LDR.N    R0,??DataTable3_7  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??PTE_isr_0
//   45   {
//   46     LPLD_GPIO_ClearIntFlag(PORTE);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable3_7  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//   47     /*while(LPLD_GPIO_Input_b(PTE, 1)!=0)
//   48     {
//   49       LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,4350 );  
//   50     }*/
//   51   }
//   52 }
??PTE_isr_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     ??barrierL_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x90002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     ??barrierR_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x4004c0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x4004d0a0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//  40 bytes in section .bss
// 208 bytes in section .text
// 
// 208 bytes of CODE memory
//  40 bytes of DATA memory
//
//Errors: none
//Warnings: none
