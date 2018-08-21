///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      07/Feb/2018  18:55:52
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\app\obstacle.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\app\obstacle.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\FLASH\List
//        -lB
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\FLASH\List
//        -o
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\FLASH\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "E:\IAR Systems\Embedded
//        Workbench 7.3\arm\INC\c\DLib_Config_Normal.h" -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\app\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\CPU\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\common\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\LPLD\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\LPLD\HW\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\FatFs\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\FatFs\option\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\USB\common\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\USB\driver\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\USB\descriptor\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\..\..\..\lib\USB\class\
//        -Ol -I "E:\IAR Systems\Embedded Workbench 7.3\arm\CMSIS\Include\" -D
//        ARM_MATH_CM4
//    List file    =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\FLASH\List\obstacle.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memcpy4

        PUBLIC ob_gpio_init
        PUBLIC obinterrupt0_struct
        PUBLIC obinterrupt1_struct
        PUBLIC obinterrupt2_struct
        PUBLIC obinterrupt3_struct
        PUBLIC obstacle_output

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\app\obstacle.c
//    1 
//    2 #include "obstacle.h"
//    3 #include "common.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 GPIO_InitTypeDef obinterrupt0_struct;
obinterrupt0_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    5 GPIO_InitTypeDef obinterrupt1_struct;
obinterrupt1_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    6 GPIO_InitTypeDef obinterrupt2_struct;
obinterrupt2_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 GPIO_InitTypeDef obinterrupt3_struct;
obinterrupt3_struct:
        DS8 20
//    8 //单纯主从引脚连接E26-AA16  E27-AA17 E28-AA18 A4-AA19 A5-AA12 A7-AA13可触发中断

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    9 void ob_gpio_init(void)
//   10 {
ob_gpio_init:
        PUSH     {R7,LR}
//   11   /*---------------大打脚————-------*/
//   12   obinterrupt0_struct.GPIO_PTx = PTA;    //障碍在右，向左转角 
        LDR.N    R0,??DataTable0  ;; 0x400ff000
        LDR.N    R1,??DataTable0_1
        STR      R0,[R1, #+0]
//   13   obinterrupt0_struct.GPIO_Pins = GPIO_Pin12;   
        MOV      R0,#+4096
        LDR.N    R1,??DataTable0_1
        STR      R0,[R1, #+4]
//   14   obinterrupt0_struct.GPIO_Dir = DIR_OUTPUT;        //输出
        MOVS     R0,#+1
        LDR.N    R1,??DataTable0_1
        STRB     R0,[R1, #+12]
//   15   obinterrupt0_struct.GPIO_Output=OUTPUT_L ;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable0_1
        STRB     R0,[R1, #+13]
//   16   obinterrupt0_struct.GPIO_PinControl = OUTPUT_SR_SLOW;//INPUT_PULL_UP|IRQC_FA;     //内部上拉|下降沿中断
        MOVS     R0,#+4
        LDR.N    R1,??DataTable0_1
        STR      R0,[R1, #+8]
//   17   LPLD_GPIO_Init(obinterrupt0_struct);
        LDR.N    R1,??DataTable0_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   18   obinterrupt1_struct.GPIO_PTx = PTA;    //障碍在右，向左转角 
        LDR.N    R0,??DataTable0  ;; 0x400ff000
        LDR.N    R1,??DataTable0_2
        STR      R0,[R1, #+0]
//   19   obinterrupt1_struct.GPIO_Pins = GPIO_Pin13;   
        MOV      R0,#+8192
        LDR.N    R1,??DataTable0_2
        STR      R0,[R1, #+4]
//   20   obinterrupt1_struct.GPIO_Dir = DIR_OUTPUT;        //输出
        MOVS     R0,#+1
        LDR.N    R1,??DataTable0_2
        STRB     R0,[R1, #+12]
//   21   obinterrupt1_struct.GPIO_Output=OUTPUT_L ;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable0_2
        STRB     R0,[R1, #+13]
//   22   obinterrupt1_struct.GPIO_PinControl = OUTPUT_SR_SLOW;//INPUT_PULL_UP|IRQC_FA;     //内部上拉|下降沿中断
        MOVS     R0,#+4
        LDR.N    R1,??DataTable0_2
        STR      R0,[R1, #+8]
//   23   LPLD_GPIO_Init(obinterrupt1_struct);
        LDR.N    R1,??DataTable0_2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   24   /*---------------小打脚————-------*/
//   25   obinterrupt2_struct.GPIO_PTx = PTA;    //障碍在右，向左转角 
        LDR.N    R0,??DataTable0  ;; 0x400ff000
        LDR.N    R1,??DataTable0_3
        STR      R0,[R1, #+0]
//   26   obinterrupt2_struct.GPIO_Pins = GPIO_Pin19;   
        MOVS     R0,#+524288
        LDR.N    R1,??DataTable0_3
        STR      R0,[R1, #+4]
//   27   obinterrupt2_struct.GPIO_Dir = DIR_OUTPUT;        //输出
        MOVS     R0,#+1
        LDR.N    R1,??DataTable0_3
        STRB     R0,[R1, #+12]
//   28   obinterrupt2_struct.GPIO_Output=OUTPUT_L ;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable0_3
        STRB     R0,[R1, #+13]
//   29   obinterrupt2_struct.GPIO_PinControl = OUTPUT_SR_SLOW;//INPUT_PULL_UP|IRQC_FA;     //内部上拉|下降沿中断
        MOVS     R0,#+4
        LDR.N    R1,??DataTable0_3
        STR      R0,[R1, #+8]
//   30   LPLD_GPIO_Init(obinterrupt2_struct);
        LDR.N    R1,??DataTable0_3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   31   
//   32   obinterrupt3_struct.GPIO_PTx = PTA; //障碍在左，向右转角   
        LDR.N    R0,??DataTable0  ;; 0x400ff000
        LDR.N    R1,??DataTable0_4
        STR      R0,[R1, #+0]
//   33   obinterrupt3_struct.GPIO_Pins = GPIO_Pin17;   
        MOVS     R0,#+131072
        LDR.N    R1,??DataTable0_4
        STR      R0,[R1, #+4]
//   34   obinterrupt3_struct.GPIO_Dir = DIR_OUTPUT;        //输出
        MOVS     R0,#+1
        LDR.N    R1,??DataTable0_4
        STRB     R0,[R1, #+12]
//   35   obinterrupt3_struct.GPIO_Output=OUTPUT_L ;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable0_4
        STRB     R0,[R1, #+13]
//   36   obinterrupt3_struct.GPIO_PinControl = OUTPUT_SR_SLOW;//INPUT_PULL_UP|IRQC_FA;     //内部上拉|下降沿中断
        MOVS     R0,#+4
        LDR.N    R1,??DataTable0_4
        STR      R0,[R1, #+8]
//   37   LPLD_GPIO_Init(obinterrupt3_struct);
        LDR.N    R1,??DataTable0_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   38 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     obinterrupt0_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     obinterrupt1_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     obinterrupt2_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_4:
        DC32     obinterrupt3_struct

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 void obstacle_output(void)
//   40 {
//   41   
//   42   
//   43   
//   44 }
obstacle_output:
        BX       LR               ;; return

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
//  80 bytes in section .bss
// 226 bytes in section .text
// 
// 226 bytes of CODE memory
//  80 bytes of DATA memory
//
//Errors: none
//Warnings: none
