///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      23/Aug/2017  10:35:08
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\infrared.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\infrared.c
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
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List\infrared.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN NOpoint
        EXTERN __aeabi_memcpy4
        EXTERN passflag

        PUBLIC infrared_count
        PUBLIC infrared_init
        PUBLIC move_flag
        PUBLIC pass
        PUBLIC start

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\infrared.c
//    1 #include "infrared.h"

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
//    2 #include "common.h"
//    3 #include "timer.h"
//    4 #include "camera_test.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    5 uint8 pass=0;//当前信标序号
pass:
        DS8 1
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    7 uint8 move_flag=0;//发车标志(输出PWM),发车前已开始计算电机PWM
move_flag:
        DS8 1
//    8 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    9 void infrared_init(void)
//   10 {
infrared_init:
        PUSH     {R7,LR}
//   11   static GPIO_InitTypeDef Count_Port_init;
//   12   Count_Port_init.GPIO_PTx = PTA; 
        LDR.N    R0,??DataTable3_1  ;; 0x400ff000
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   13   Count_Port_init.GPIO_Pins = GPIO_Pin13;
        MOV      R0,#+8192
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+4]
//   14   Count_Port_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_2
        STRB     R0,[R1, #+12]
//   15   Count_Port_init.GPIO_PinControl=IRQC_RI|INPUT_PULL_DOWN;//  上升沿中断                        
        LDR.N    R0,??DataTable3_3  ;; 0x90002
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+8]
//   16   Count_Port_init.GPIO_Isr =infrared_count; 
        ADR.W    R0,infrared_count
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+16]
//   17   LPLD_GPIO_Init(Count_Port_init);
        LDR.N    R1,??DataTable3_2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   18   disable_irq(PORTA_IRQn);
        MOVS     R0,#+87
        BL       NVIC_DisableIRQ
//   19   
//   20 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??Count_Port_init:
        DS8 20

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   21 void infrared_count (void)  //红外计数
//   22 {
//   23   if(LPLD_GPIO_IsPinxExt(PORTA, GPIO_Pin13))
infrared_count:
        LDR.N    R0,??DataTable3_4  ;; 0x400490a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BPL.N    ??infrared_count_0
//   24   {
//   25     LPLD_GPIO_ClearIntFlag(PORTA);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable3_4  ;; 0x400490a0
        STR      R0,[R1, #+0]
//   26     pass++;
        LDR.N    R0,??DataTable3_5
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3_5
        STRB     R0,[R1, #+0]
//   27     passflag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_6
        STRB     R0,[R1, #+0]
//   28     //LPLD_UART_PutChar(UART4,pass);//发送过信标数
//   29   }
//   30     
//   31 }
??infrared_count_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void start(void)//发车程序
//   33 {
//   34   while(NOpoint);
start:
??start_0:
        LDR.N    R0,??DataTable3_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??start_0
//   35   move_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_8
        STRB     R0,[R1, #+0]
//   36   
//   37 }
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
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     ??Count_Port_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x90002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     pass

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     passflag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     NOpoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     move_flag

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
//  22 bytes in section .bss
// 168 bytes in section .text
// 
// 168 bytes of CODE memory
//  22 bytes of DATA memory
//
//Errors: none
//Warnings: 3
