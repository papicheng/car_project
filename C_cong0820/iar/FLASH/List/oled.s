///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      07/Feb/2018  18:55:53
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\app\oled.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\app\oled.c
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
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\FLASH\List\oled.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4

        PUBLIC F6x8
        PUBLIC LED_DLY_ms
        PUBLIC LED_Fill
        PUBLIC LED_Init
        PUBLIC LED_P6x8Char
        PUBLIC LED_P6x8Str
        PUBLIC LED_PrintValueC
        PUBLIC LED_PrintValueF
        PUBLIC LED_PrintValueFP
        PUBLIC LED_PrintValueI
        PUBLIC LED_Set_Pos
        PUBLIC LED_WrCmd
        PUBLIC LED_WrDat
        PUBLIC SetAddressingMode
        PUBLIC SetColumnAddress
        PUBLIC SetContrastControl
        PUBLIC SetPageAddress
        PUBLIC SetStartColumn
        PUBLIC SetStartLine
        PUBLIC SetStartPage
        PUBLIC Set_Charge_Pump
        PUBLIC Set_Common_Config
        PUBLIC Set_Common_Remap
        PUBLIC Set_Display_Clock
        PUBLIC Set_Display_Offset
        PUBLIC Set_Display_On_Off
        PUBLIC Set_Entire_Display
        PUBLIC Set_Inverse_Display
        PUBLIC Set_Multiplex_Ratio
        PUBLIC Set_NOP
        PUBLIC Set_Precharge_Period
        PUBLIC Set_Segment_Remap
        PUBLIC Set_VCOMH
        PUBLIC cursor_line
        PUBLIC display
        PUBLIC led_gpio_int
        PUBLIC mode
        PUBLIC mode_pre
        PUBLIC page
        PUBLIC place
        PUBLIC press
        PUBLIC show_fill

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\app\oled.c
//    1 
//    2 //#include "camera.h"
//    3 #include "oled.h"
//    4 #include "common.h"
//    5 //OLED显示屏
//    6 //定义输出
//    7 #define LED_SCLK(x) LPLD_GPIO_Output_b(PTC, 16, x)// d0
//    8 #define LED_SDA(x)  LPLD_GPIO_Output_b(PTC, 17, x)//d1
//    9 #define LED_RST(x)  LPLD_GPIO_Output_b(PTC, 18, x)//复位低能电平
//   10 #define LED_DC(x)   LPLD_GPIO_Output_b(PTC, 19, x)//偏置常低
//   11 //OLED显示函数
//   12 
//   13 
//   14 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 void led_gpio_int(void)
//   16 {
led_gpio_int:
        PUSH     {R7,LR}
//   17   static GPIO_InitTypeDef led_Port_init;
//   18   led_Port_init.GPIO_PTx = PTC;
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//   19   led_Port_init.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_1
        STRB     R0,[R1, #+12]
//   20   led_Port_init.GPIO_Pins = GPIO_Pin16|GPIO_Pin17|GPIO_Pin18|GPIO_Pin19;
        MOVS     R0,#+983040
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+4]
//   21   led_Port_init.GPIO_Output  = OUTPUT_H ;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_1
        STRB     R0,[R1, #+13]
//   22   LPLD_GPIO_Init(led_Port_init);
        LDR.W    R1,??DataTable7_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   23 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??led_Port_init:
        DS8 20

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Speed1:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "Speed2:"
//   24 
//   25 
//   26   
//   27 /*定义ASCII码表*/

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   28 const unsigned char F6x8[][6] =
F6x8:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 7, 0, 7, 0, 0, 20, 127
        DC8 20, 127, 20, 0, 36, 42, 127, 42, 18, 0, 98, 100, 8, 19, 35, 0, 54
        DC8 73, 85, 34, 80, 0, 0, 5, 3, 0, 0, 0, 0, 28, 34, 65, 0, 0, 0, 65, 34
        DC8 28, 0, 0, 20, 8, 62, 8, 20, 0, 8, 8, 62, 8, 8, 0, 0, 0, 160, 96, 0
        DC8 0, 8, 8, 8, 8, 8, 0, 0, 96, 96, 0, 0, 0, 32, 16, 8, 4, 2, 0, 62, 81
        DC8 73, 69, 62, 0, 0, 66, 127, 64, 0, 0, 66, 97, 81, 73, 70, 0, 33, 65
        DC8 69, 75, 49, 0, 24, 20, 18, 127, 16, 0, 39, 69, 69, 69, 57, 0, 60
        DC8 74, 73, 73, 48, 0, 1, 113, 9, 5, 3, 0, 54, 73, 73, 73, 54, 0, 6, 73
        DC8 73, 41, 30, 0, 0, 54, 54, 0, 0, 0, 0, 86, 54, 0, 0, 0, 8, 20, 34
        DC8 65, 0, 0, 20, 20, 20, 20, 20, 0, 0, 65, 34, 20, 8, 0, 2, 1, 81, 9
        DC8 6, 0, 50, 73, 89, 81, 62, 0, 124, 18, 17, 18, 124, 0, 127, 73, 73
        DC8 73, 54, 0, 62, 65, 65, 65, 34, 0, 127, 65, 65, 34, 28, 0, 127, 73
        DC8 73, 73, 65, 0, 127, 9, 9, 9, 1, 0, 62, 65, 73, 73, 122, 0, 127, 8
        DC8 8, 8, 127, 0, 0, 65, 127, 65, 0, 0, 32, 64, 65, 63, 1, 0, 127, 8
        DC8 20, 34, 65, 0, 127, 64, 64, 64, 64, 0, 127, 2, 12, 2, 127, 0, 127
        DC8 4, 8, 16, 127, 0, 62, 65, 65, 65, 62, 0, 127, 9, 9, 9, 6, 0, 62, 65
        DC8 81, 33, 94, 0, 127, 9, 25, 41, 70, 0, 70, 73, 73, 73, 49, 0, 1, 1
        DC8 127, 1, 1, 0, 63, 64, 64, 64, 63, 0, 31, 32, 64, 32, 31, 0, 63, 64
        DC8 56, 64, 63, 0, 99, 20, 8, 20, 99, 0, 7, 8, 112, 8, 7, 0, 97, 81, 73
        DC8 69, 67, 0, 0, 127, 65, 65, 0, 0, 2, 4, 8, 16, 32, 0, 0, 65, 65, 127
        DC8 0, 0, 4, 2, 1, 2, 4, 0, 64, 64, 64, 64, 64, 0, 0, 1, 2, 4, 0, 0, 32
        DC8 84, 84, 84, 120, 0, 127, 72, 68, 68, 56, 0, 56, 68, 68, 68, 32, 0
        DC8 56, 68, 68, 72, 127, 0, 56, 84, 84, 84, 24, 0, 8, 126, 9, 1, 2, 0
        DC8 24, 164, 164, 164, 124, 0, 127, 8, 4, 4, 120, 0, 0, 68, 125, 64, 0
        DC8 0, 64, 128, 132, 125, 0, 0, 127, 16, 40, 68, 0, 0, 0, 65, 127, 64
        DC8 0, 0, 124, 4, 24, 4, 120, 0, 124, 8, 4, 4, 120, 0, 56, 68, 68, 68
        DC8 56, 0, 252, 36, 36, 36, 24, 0, 24, 36, 36, 24, 252, 0, 124, 8, 4, 4
        DC8 8, 0, 72, 84, 84, 84, 32, 0, 4, 63, 68, 64, 32, 0, 60, 64, 64, 32
        DC8 124, 0, 28, 32, 64, 32, 28, 0, 60, 64, 48, 64, 60, 0, 68, 40, 16
        DC8 40, 68, 0, 28, 160, 160, 160, 124, 0, 68, 100, 84, 76, 68, 20, 20
        DC8 20, 20, 20, 20
//   29 {
//   30 	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
//   31 	{ 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
//   32 	{ 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
//   33 	{ 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
//   34 	{ 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
//   35 	{ 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
//   36 	{ 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
//   37 	{ 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
//   38 	{ 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
//   39 	{ 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
//   40 	{ 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
//   41 	{ 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
//   42 	{ 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
//   43 	{ 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
//   44 	{ 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
//   45 	{ 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
//   46 	{ 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
//   47 	{ 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
//   48 	{ 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
//   49 	{ 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
//   50 	{ 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
//   51 	{ 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
//   52 	{ 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
//   53 	{ 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
//   54 	{ 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
//   55 	{ 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
//   56 	{ 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
//   57 	{ 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
//   58 	{ 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
//   59 	{ 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
//   60 	{ 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
//   61 	{ 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
//   62 	{ 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
//   63 	{ 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
//   64 	{ 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
//   65 	{ 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
//   66 	{ 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
//   67 	{ 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
//   68 	{ 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
//   69 	{ 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
//   70 	{ 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
//   71 	{ 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
//   72 	{ 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
//   73 	{ 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
//   74 	{ 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
//   75 	{ 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
//   76 	{ 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
//   77 	{ 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
//   78 	{ 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
//   79 	{ 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
//   80 	{ 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
//   81 	{ 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
//   82 	{ 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
//   83 	{ 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
//   84 	{ 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
//   85 	{ 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
//   86 	{ 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
//   87 	{ 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
//   88 	{ 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
//   89 	{ 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [ 91
//   90 	{ 0x00, 0x02, 0x04 ,0x08, 0x10, 0x20 },    // \92
//   91 	{ 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
//   92 	{ 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
//   93 	{ 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
//   94 	{ 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
//   95 	{ 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
//   96 	{ 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
//   97 	{ 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
//   98 	{ 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
//   99 	{ 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
//  100 	{ 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
//  101 	{ 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
//  102 	{ 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
//  103 	{ 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
//  104 	{ 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
//  105 	{ 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
//  106 	{ 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
//  107 	{ 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
//  108 	{ 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
//  109 	{ 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
//  110 	{ 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
//  111 	{ 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
//  112 	{ 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
//  113 	{ 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
//  114 	{ 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
//  115 	{ 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
//  116 	{ 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
//  117 	{ 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
//  118 	{ 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
//  119 	{ 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
//  120 	{ 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
//  121 	{ 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
//  122 };
//  123 
//  124 //写数据函数

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  125 void LED_WrDat(unsigned char data)   
//  126 {
LED_WrDat:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  127 	unsigned char i = 8;
        MOVS     R5,#+8
//  128 	//LED_CS=0;
//  129 	LED_DC(1);
        MOVS     R2,#+1
        MOVS     R1,#+19
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  130 	LED_SCLK(0);  
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??LED_WrDat_0
//  131 	while (i--)
//  132 	{
//  133 		if (data & 0x80)
//  134 		{
//  135 			LED_SDA(1);
//  136 		}
//  137 		else
//  138 		{
//  139 			LED_SDA(0);
??LED_WrDat_1:
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  140 		}
//  141 		LED_SCLK(1); 
??LED_WrDat_2:
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  142 		asm("nop");     
        nop
//  143 		LED_SCLK(0);    
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  144 		data <<= 1;    
        LSLS     R4,R4,#+1
??LED_WrDat_0:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LED_WrDat_3
        LSLS     R0,R4,#+24
        BPL.N    ??LED_WrDat_1
        MOVS     R2,#+1
        MOVS     R1,#+17
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??LED_WrDat_2
//  145 	}
//  146 }
??LED_WrDat_3:
        POP      {R0,R4,R5,PC}    ;; return
//  147 //写入命令函数

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  148 void LED_WrCmd(unsigned char cmd) 
//  149 {
LED_WrCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  150 	unsigned char i = 8;
        MOVS     R5,#+8
//  151 	//LED_CS = 0;
//  152 	LED_DC(0);
        MOVS     R2,#+0
        MOVS     R1,#+19
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  153 	LED_SCLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??LED_WrCmd_0
//  154 	while (i--)
//  155 	{
//  156 		if (cmd & 0x80)
//  157 		{
//  158 			LED_SDA(1);
//  159 		}
//  160 		else
//  161 		{
//  162 			LED_SDA(0);
??LED_WrCmd_1:
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  163 		}
//  164 		LED_SCLK(1);
??LED_WrCmd_2:
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  165 		asm("nop");           
        nop
//  166 		LED_SCLK(0);    
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  167 		cmd <<= 1;   
        LSLS     R4,R4,#+1
??LED_WrCmd_0:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LED_WrCmd_3
        LSLS     R0,R4,#+24
        BPL.N    ??LED_WrCmd_1
        MOVS     R2,#+1
        MOVS     R1,#+17
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??LED_WrCmd_2
//  168 	} 	
//  169 	//LED_CS = 1;
//  170 }
??LED_WrCmd_3:
        POP      {R0,R4,R5,PC}    ;; return
//  171 //设置显示坐标位置

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 void LED_Set_Pos(unsigned char x, unsigned char y)
//  173 { 
LED_Set_Pos:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  174 	LED_WrCmd(0xb0+y);
        SUBS     R0,R1,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  175 	LED_WrCmd(((x&0xf0)>>4)|0x10);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  176 	LED_WrCmd((x&0x0f)|0x00); 
        ANDS     R0,R4,#0xF
        BL       LED_WrCmd
//  177 }
        POP      {R4,PC}          ;; return
//  178 //清屏函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  179 void LED_Fill(unsigned char bmp_data)
//  180 {
LED_Fill:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  181 	unsigned char y,x;
//  182 	
//  183 	for(y=0;y<8;y++)
        MOVS     R5,#+0
        B.N      ??LED_Fill_0
//  184 	{
//  185 		LED_WrCmd(0xb0+y);   //0xb0+0~7表示页0~页7?
//  186 		LED_WrCmd(0x00);       //0x00+0~16表示将128列分成16组其地址在某组中的第几列
//  187 		LED_WrCmd(0x10);      //0x10+0~16表示将128列分成16组其地址所在第几组
//  188 		for(x=0;x<128;x++)
//  189 			LED_WrDat(bmp_data);
??LED_Fill_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrDat
        ADDS     R6,R6,#+1
??LED_Fill_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??LED_Fill_1
        ADDS     R5,R5,#+1
??LED_Fill_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??LED_Fill_3
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
        MOVS     R0,#+0
        BL       LED_WrCmd
        MOVS     R0,#+16
        BL       LED_WrCmd
        MOVS     R6,#+0
        B.N      ??LED_Fill_2
//  190 	}
//  191 }
??LED_Fill_3:
        POP      {R4-R6,PC}       ;; return
//  192 //延时函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  193 void LED_DLY_ms(unsigned int ms)
//  194 {                         
LED_DLY_ms:
        B.N      ??LED_DLY_ms_0
//  195   uint16 a;
//  196   while(ms)
//  197   {
//  198     a=6675;
??LED_DLY_ms_1:
        MOVW     R1,#+6675
//  199     while(a--);
??LED_DLY_ms_2:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??LED_DLY_ms_2
//  200     ms--;
        SUBS     R0,R0,#+1
//  201   }
??LED_DLY_ms_0:
        CMP      R0,#+0
        BNE.N    ??LED_DLY_ms_1
//  202   return;
        BX       LR               ;; return
//  203 }
//  204 /*__________________________________
//  205 |  名称:                           |
//  206 |  作用:写数据等                   |
//  207 |_________________________________*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  208 void SetStartColumn(unsigned char d)
//  209 {
SetStartColumn:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  210 	LED_WrCmd(0x00+d%16);	// Set Lower Column Start Address for Page Addressing Mode
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+16
        SDIV     R1,R4,R0
        MLS      R1,R1,R0,R4
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  211 							// Default => 0x00
//  212 	LED_WrCmd(0x10+d/16);	// Set Higher Column Start Address for Page Addressing Mode
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+16
        SDIV     R0,R4,R0
        ADDS     R0,R0,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  213 							// Default => 0x10
//  214 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  215 void SetAddressingMode(unsigned char d)
//  216 {
SetAddressingMode:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  217 	LED_WrCmd(0x20);			// Set Memory Addressing Mode
        MOVS     R0,#+32
        BL       LED_WrCmd
//  218 	LED_WrCmd(d);			// Default => 0x02
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  219 							// 0x00 => Horizontal Addressing Mode
//  220 							// 0x01 => Vertical Addressing Mode
//  221 							// 0x02 => Page Addressing Mode
//  222 }
        POP      {R4,PC}          ;; return
//  223 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  224 void SetColumnAddress(unsigned char a, unsigned char b)
//  225 {
SetColumnAddress:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  226 	LED_WrCmd(0x21);			// Set Column Address
        MOVS     R0,#+33
        BL       LED_WrCmd
//  227 	LED_WrCmd(a);			// Default => 0x00 (Column Start Address)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  228 	LED_WrCmd(b);			// Default => 0x7F (Column End Address)
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  229 }
        POP      {R0,R4,R5,PC}    ;; return
//  230 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  231 void SetPageAddress(unsigned char a, unsigned char b)
//  232 {
SetPageAddress:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  233 	LED_WrCmd(0x22);			// Set Page Address
        MOVS     R0,#+34
        BL       LED_WrCmd
//  234 	LED_WrCmd(a);			// Default => 0x00 (Page Start Address)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  235 	LED_WrCmd(b);			// Default => 0x07 (Page End Address)
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  236 }
        POP      {R0,R4,R5,PC}    ;; return
//  237 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  238 void SetStartLine(unsigned char d)
//  239 {
SetStartLine:
        PUSH     {R7,LR}
//  240 	LED_WrCmd(0x40|d);		// Set Display Start Line
        ORRS     R0,R0,#0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  241 							// Default => 0x40 (0x00)
//  242 }
        POP      {R0,PC}          ;; return
//  243 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  244 void SetContrastControl(unsigned char d)
//  245 {
SetContrastControl:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  246 	LED_WrCmd(0x81);			// Set Contrast Control
        MOVS     R0,#+129
        BL       LED_WrCmd
//  247 	LED_WrCmd(d);			// Default => 0x7F
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  248 }
        POP      {R4,PC}          ;; return
//  249 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  250 void Set_Charge_Pump(unsigned char d)
//  251 {
Set_Charge_Pump:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  252 	LED_WrCmd(0x8D);			// Set Charge Pump
        MOVS     R0,#+141
        BL       LED_WrCmd
//  253 	LED_WrCmd(0x10|d);		// Default => 0x10
        ORRS     R0,R4,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  254 							// 0x10 (0x00) => Disable Charge Pump
//  255 							// 0x14 (0x04) => Enable Charge Pump
//  256 }
        POP      {R4,PC}          ;; return
//  257 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  258 void Set_Segment_Remap(unsigned char d)
//  259 {
Set_Segment_Remap:
        PUSH     {R7,LR}
//  260 	LED_WrCmd(0xA0|d);		// Set Segment Re-Map
        ORRS     R0,R0,#0xA0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  261 							// Default => 0xA0
//  262 							// 0xA0 (0x00) => Column Address 0 Mapped to SEG0
//  263 							// 0xA1 (0x01) => Column Address 0 Mapped to SEG127
//  264 }
        POP      {R0,PC}          ;; return
//  265 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  266 void Set_Entire_Display(unsigned char d)
//  267 {
Set_Entire_Display:
        PUSH     {R7,LR}
//  268 	LED_WrCmd(0xA4|d);		// Set Entire Display On / Off
        ORRS     R0,R0,#0xA4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  269 							// Default => 0xA4
//  270 							// 0xA4 (0x00) => Normal Display
//  271 							// 0xA5 (0x01) => Entire Display On
//  272 }
        POP      {R0,PC}          ;; return
//  273 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  274 void Set_Inverse_Display(unsigned char d)
//  275 {
Set_Inverse_Display:
        PUSH     {R7,LR}
//  276 	LED_WrCmd(0xA6|d);		// Set Inverse Display On/Off
        ORRS     R0,R0,#0xA6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  277 							// Default => 0xA6
//  278 							// 0xA6 (0x00) => Normal Display
//  279 							// 0xA7 (0x01) => Inverse Display On
//  280 }
        POP      {R0,PC}          ;; return
//  281 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  282 void Set_Multiplex_Ratio(unsigned char d)
//  283 {
Set_Multiplex_Ratio:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  284 	LED_WrCmd(0xA8);			// Set Multiplex Ratio
        MOVS     R0,#+168
        BL       LED_WrCmd
//  285 	LED_WrCmd(d);			// Default => 0x3F (1/64 Duty)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  286 }
        POP      {R4,PC}          ;; return
//  287 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  288 void Set_Display_On_Off(unsigned char d)
//  289 {
Set_Display_On_Off:
        PUSH     {R7,LR}
//  290 	LED_WrCmd(0xAE|d);		// Set Display On/Off
        ORRS     R0,R0,#0xAE
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  291 							// Default => 0xAE
//  292 							// 0xAE (0x00) => Display Off
//  293 							// 0xAF (0x01) => Display On
//  294 }
        POP      {R0,PC}          ;; return
//  295 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  296 void SetStartPage(unsigned char d)
//  297 {
SetStartPage:
        PUSH     {R7,LR}
//  298 	LED_WrCmd(0xB0|d);		// Set Page Start Address for Page Addressing Mode
        ORRS     R0,R0,#0xB0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  299 							// Default => 0xB0 (0x00)
//  300 }
        POP      {R0,PC}          ;; return
//  301 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  302 void Set_Common_Remap(unsigned char d)
//  303 {
Set_Common_Remap:
        PUSH     {R7,LR}
//  304 	LED_WrCmd(0xC0|d);		// Set COM Output Scan Direction
        ORRS     R0,R0,#0xC0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  305 							// Default => 0xC0
//  306 							// 0xC0 (0x00) => Scan from COM0 to 63
//  307 							// 0xC8 (0x08) => Scan from COM63 to 0
//  308 }
        POP      {R0,PC}          ;; return
//  309 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  310 void Set_Display_Offset(unsigned char d)
//  311 {
Set_Display_Offset:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  312 	LED_WrCmd(0xD3);			// Set Display Offset
        MOVS     R0,#+211
        BL       LED_WrCmd
//  313 	LED_WrCmd(d);			// Default => 0x00
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  314 }
        POP      {R4,PC}          ;; return
//  315 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  316 void Set_Display_Clock(unsigned char d)
//  317 {
Set_Display_Clock:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  318 	LED_WrCmd(0xD5);			// Set Display Clock Divide Ratio / Oscillator Frequency
        MOVS     R0,#+213
        BL       LED_WrCmd
//  319 	LED_WrCmd(d);			// Default => 0x80
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  320 							// D[3:0] => Display Clock Divider
//  321 							// D[7:4] => Oscillator Frequency
//  322 }
        POP      {R4,PC}          ;; return
//  323 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  324 void Set_Precharge_Period(unsigned char d)
//  325 {
Set_Precharge_Period:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  326 	LED_WrCmd(0xD9);			// Set Pre-Charge Period
        MOVS     R0,#+217
        BL       LED_WrCmd
//  327 	LED_WrCmd(d);			// Default => 0x22 (2 Display Clocks [Phase 2] / 2 Display Clocks [Phase 1])
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  328 							// D[3:0] => Phase 1 Period in 1~15 Display Clocks
//  329 							// D[7:4] => Phase 2 Period in 1~15 Display Clocks
//  330 }
        POP      {R4,PC}          ;; return
//  331 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  332 void Set_Common_Config(unsigned char d)
//  333 {
Set_Common_Config:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  334 	LED_WrCmd(0xDA);			// Set COM Pins Hardware Configuration
        MOVS     R0,#+218
        BL       LED_WrCmd
//  335 	LED_WrCmd(0x02|d);		// Default => 0x12 (0x10)
        ORRS     R0,R4,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  336 							// Alternative COM Pin Configuration
//  337 							// Disable COM Left/Right Re-Map
//  338 }
        POP      {R4,PC}          ;; return
//  339 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  340 void Set_VCOMH(unsigned char d)
//  341 {
Set_VCOMH:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  342 	LED_WrCmd(0xDB);			// Set VCOMH Deselect Level
        MOVS     R0,#+219
        BL       LED_WrCmd
//  343 	LED_WrCmd(d);			// Default => 0x20 (0.77*VCC)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  344 }
        POP      {R4,PC}          ;; return
//  345 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  346 void Set_NOP(void)
//  347 {
Set_NOP:
        PUSH     {R7,LR}
//  348 	LED_WrCmd(0xE3);			// Command for No Operation
        MOVS     R0,#+227
        BL       LED_WrCmd
//  349 }
        POP      {R0,PC}          ;; return
//  350 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  351 void LED_Init(void)        
//  352 {       
LED_Init:
        PUSH     {R7,LR}
//  353       // led_gpio_int();
//  354        LED_DLY_ms(50);
        MOVS     R0,#+50
        BL       LED_DLY_ms
//  355         LED_DC(0);		
        MOVS     R2,#+0
        MOVS     R1,#+19
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  356 	LED_SDA(0);
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  357         LED_SCLK(0);		
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  358 	LED_RST(0);
        MOVS     R2,#+0
        MOVS     R1,#+18
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  359         LED_DLY_ms(50);
        MOVS     R0,#+50
        BL       LED_DLY_ms
//  360 	LED_SCLK(1);		
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  361 	LED_RST(0);
        MOVS     R2,#+0
        MOVS     R1,#+18
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  362 //	for(i=0;i<100;i++)asm("nop");     //从上电到下面开始初始化要有足够的时间，即等待RC复位完毕	
//  363         LED_DLY_ms(50);
        MOVS     R0,#+50
        BL       LED_DLY_ms
//  364 	LED_RST(1);
        MOVS     R2,#+1
        MOVS     R1,#+18
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  365 
//  366 	Set_Display_On_Off(0x00);		  // Display Off (0x00/0x01)
        MOVS     R0,#+0
        BL       Set_Display_On_Off
//  367 	Set_Display_Clock(0x80);		  // Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       Set_Display_Clock
//  368 	Set_Multiplex_Ratio(0x3F);	  // 1/64 Duty (0x0F~0x3F)
        MOVS     R0,#+63
        BL       Set_Multiplex_Ratio
//  369 	Set_Display_Offset(0x00);		  // Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+0
        BL       Set_Display_Offset
//  370 	SetStartLine(0x00);			  // Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+0
        BL       SetStartLine
//  371 	Set_Charge_Pump(0x04);		  // Enable Embedded DC/DC Converter (0x00/0x04)
        MOVS     R0,#+4
        BL       Set_Charge_Pump
//  372 	SetAddressingMode(0x02);	  // Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+2
        BL       SetAddressingMode
//  373 	Set_Segment_Remap(0x01);	  // Set SEG/Column Mapping     0x00左右反置 0x01正常
        MOVS     R0,#+1
        BL       Set_Segment_Remap
//  374 	Set_Common_Remap(0x08);	  // Set COM/Row Scan Direction 0x00上下反置 0x08正常
        MOVS     R0,#+8
        BL       Set_Common_Remap
//  375 	Set_Common_Config(0x10);	  // Set Sequential Configuration (0x00/0x10)
        MOVS     R0,#+16
        BL       Set_Common_Config
//  376 	SetContrastControl(0xCF); // Set SEG Output Current
        MOVS     R0,#+207
        BL       SetContrastControl
//  377 	Set_Precharge_Period(0xF1);	  // Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       Set_Precharge_Period
//  378 	Set_VCOMH(0x40);			  // Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       Set_VCOMH
//  379 	Set_Entire_Display(0x00);		  // Disable Entire Display On (0x00/0x01)
        MOVS     R0,#+0
        BL       Set_Entire_Display
//  380 	Set_Inverse_Display(0x00);	  // Disable Inverse Display On (0x00/0x01)  
        MOVS     R0,#+0
        BL       Set_Inverse_Display
//  381 	Set_Display_On_Off(0x01);		  // Display On (0x00/0x01)
        MOVS     R0,#+1
        BL       Set_Display_On_Off
//  382 	LED_Fill(0x00);                               //初始清屏
        MOVS     R0,#+0
        BL       LED_Fill
//  383 	LED_Set_Pos(0,0); 	
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LED_Set_Pos
//  384 } 
        POP      {R0,PC}          ;; return
//  385 //显示一个6x8标准ASCII字符

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  386 void LED_P6x8Char(unsigned char x,unsigned char y,unsigned char ch)
//  387 {
LED_P6x8Char:
        PUSH     {R3-R5,LR}
//  388 	 unsigned char c=0,i=0;     
        MOVS     R4,#+0
        MOVS     R5,#+0
//  389 	   
//  390 	c =ch-32;
        SUBS     R4,R2,#+32
//  391 	if(x>122)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+123
        BLT.N    ??LED_P6x8Char_0
//  392 	{
//  393 		x=0;
        MOVS     R0,#+0
//  394 		y++;
        ADDS     R1,R1,#+1
//  395 	}
//  396 	LED_Set_Pos(x,y);    
??LED_P6x8Char_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_Set_Pos
//  397 	for(i=0;i<6;i++)
        MOVS     R5,#+0
        B.N      ??LED_P6x8Char_1
//  398 	{     
//  399 		LED_WrDat(F6x8[c][i]);  
??LED_P6x8Char_2:
        LDR.W    R0,??DataTable7_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+6
        MLA      R0,R1,R4,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R0]
        BL       LED_WrDat
//  400 	}
        ADDS     R5,R5,#+1
??LED_P6x8Char_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BLT.N    ??LED_P6x8Char_2
//  401 }
        POP      {R0,R4,R5,PC}    ;; return
//  402 
//  403 //功能描述：写入一组6x8标准ASCII字符串 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  404 void LED_P6x8Str(unsigned char x,unsigned char y,unsigned char ch[])
//  405 {
LED_P6x8Str:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  406 	unsigned char c=0,i=0,j=0;      
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R7,#+0
        B.N      ??LED_P6x8Str_0
//  407 	while (ch[j]!='\0')
//  408 	{    
//  409 		c =ch[j]-32;
//  410 		if(x>126)
//  411 		{
//  412 			x=0;
//  413 			y++;
//  414 		}
//  415 		LED_Set_Pos(x,y);    
//  416 		for(i=0;i<6;i++)
//  417 		{     
//  418 			LED_WrDat(F6x8[c][i]);  
??LED_P6x8Str_1:
        LDR.W    R0,??DataTable7_2
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOVS     R1,#+6
        MLA      R0,R1,R8,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R0]
        BL       LED_WrDat
//  419 		}
        ADDS     R9,R9,#+1
??LED_P6x8Str_2:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+6
        BLT.N    ??LED_P6x8Str_1
//  420 		x+=6;
        ADDS     R4,R4,#+6
//  421 		j++;
        ADDS     R7,R7,#+1
??LED_P6x8Str_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        CMP      R0,#+0
        BEQ.N    ??LED_P6x8Str_3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R7, R6]
        SUBS     R8,R0,#+32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BLT.N    ??LED_P6x8Str_4
        MOVS     R4,#+0
        ADDS     R5,R5,#+1
??LED_P6x8Str_4:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_Set_Pos
        MOVS     R9,#+0
        B.N      ??LED_P6x8Str_2
//  422 	}
//  423 }
??LED_P6x8Str_3:
        POP      {R0,R4-R9,PC}    ;; return
//  424 //将一个char型数转换成3位数进行显示

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  425 void LED_PrintValueC(unsigned char x, unsigned char y, char data)
//  426 {
LED_PrintValueC:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  427 	unsigned char i,j,k;
//  428 	if(data<=0)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??LED_PrintValueC_0
//  429 	{
//  430 		LED_P6x8Char(x,y,'-');
        MOVS     R2,#+45
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  431 		data = - data;	
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        RSBS     R6,R6,#+0
        B.N      ??LED_PrintValueC_1
//  432 	}
//  433 	else
//  434 	{
//  435 		LED_P6x8Char(x,y,'+');
??LED_PrintValueC_0:
        MOVS     R2,#+43
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  436 	}
//  437 	i = data/100;
??LED_PrintValueC_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+100
        SDIV     R0,R6,R0
//  438 	j = (data%100)/10;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,#+100
        SDIV     R2,R6,R1
        MLS      R1,R1,R2,R6
        MOVS     R2,#+10
        SDIV     R7,R1,R2
//  439 	k = data%10;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,#+10
        SDIV     R2,R6,R1
        MLS      R6,R1,R2,R6
//  440 	LED_P6x8Char(x+6,y,i+48);
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  441 	LED_P6x8Char(x+12,y,j+48);
        ADDS     R2,R7,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  442 	LED_P6x8Char(x+18,y,k+48);		
        ADDS     R2,R6,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  443 }
        POP      {R0,R4-R7,PC}    ;; return
//  444 //功能描述：将一个int型数转换成5位数进行显示

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  445 void LED_PrintValueI(unsigned char x, unsigned char y, int data)
//  446 {
LED_PrintValueI:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  447 	unsigned char i,j,k,l,m;  
//  448 	if(data < 0)
        CMP      R6,#+0
        BPL.N    ??LED_PrintValueI_0
//  449 	{
//  450 		LED_P6x8Char(x,y,'-');
        MOVS     R2,#+45
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  451 		data = - data;	
        RSBS     R6,R6,#+0
        B.N      ??LED_PrintValueI_1
//  452 	}
//  453 	else
//  454 	{
//  455 		LED_P6x8Char(x,y,'+');
??LED_PrintValueI_0:
        MOVS     R2,#+43
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  456 	}
//  457 	
//  458 	l  = data/10000;
??LED_PrintValueI_1:
        MOVW     R0,#+10000
        SDIV     R0,R6,R0
//  459 	m= (data%10000)/1000;
        MOVW     R1,#+10000
        SDIV     R2,R6,R1
        MLS      R1,R1,R2,R6
        MOV      R2,#+1000
        SDIV     R7,R1,R2
//  460 	i = (data%1000)/100;
        MOV      R1,#+1000
        SDIV     R2,R6,R1
        MLS      R1,R1,R2,R6
        MOVS     R2,#+100
        SDIV     R8,R1,R2
//  461 	j = (data%100)/10;
        MOVS     R1,#+100
        SDIV     R2,R6,R1
        MLS      R1,R1,R2,R6
        MOVS     R2,#+10
        SDIV     R9,R1,R2
//  462 	k = data%10;
        MOVS     R1,#+10
        SDIV     R2,R6,R1
        MLS      R6,R1,R2,R6
//  463 	LED_P6x8Char(x+6,y,l+48);
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  464 	LED_P6x8Char(x+12,y,m+48);
        ADDS     R2,R7,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  465 	LED_P6x8Char(x+18,y,i+48);
        ADDS     R2,R8,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  466 	LED_P6x8Char(x+24,y,j+48);
        ADDS     R2,R9,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  467 	LED_P6x8Char(x+30,y,k+48);		
        ADDS     R2,R6,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+30
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  468 }
        POP      {R0,R4-R9,PC}    ;; return
//  469 //显示unsigned int型

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  470  void LED_PrintValueFP(unsigned char x, unsigned char y, unsigned int data, unsigned char num)
//  471  {
LED_PrintValueFP:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  472  	unsigned char m,i,j,k;  	
//  473  	//LED_P6x8Char(x, y, '.');
//  474 	m= data/1000;
        MOV      R0,#+1000
        UDIV     R0,R2,R0
//  475 	i = (data%1000)/100;
        MOV      R1,#+1000
        UDIV     R6,R2,R1
        MLS      R1,R1,R6,R2
        MOVS     R6,#+100
        UDIV     R6,R1,R6
//  476 	j = (data%100)/10;
        MOVS     R1,#+100
        UDIV     R7,R2,R1
        MLS      R1,R1,R7,R2
        MOVS     R7,#+10
        UDIV     R7,R1,R7
//  477 	k = data%10;
        MOVS     R1,#+10
        UDIV     R12,R2,R1
        MLS      R8,R1,R12,R2
//  478 	switch(num)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BEQ.N    ??LED_PrintValueFP_0
        BCC.N    ??LED_PrintValueFP_1
        CMP      R3,#+3
        BEQ.N    ??LED_PrintValueFP_2
        BCC.N    ??LED_PrintValueFP_3
        CMP      R3,#+4
        BEQ.N    ??LED_PrintValueFP_4
        B.N      ??LED_PrintValueFP_1
//  479 	{
//  480 		case 1:  	LED_P6x8Char(x+6,y,k+48);
??LED_PrintValueFP_0:
        ADDS     R2,R8,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  481 				break;
        B.N      ??LED_PrintValueFP_1
//  482 		case 2:  	LED_P6x8Char(x+6,y,j+48);
??LED_PrintValueFP_3:
        ADDS     R2,R7,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  483 				LED_P6x8Char(x+12,y,k+48);
        ADDS     R2,R8,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  484 				break;
        B.N      ??LED_PrintValueFP_1
//  485 		case 3:	LED_P6x8Char(x+6,y,i+48);
??LED_PrintValueFP_2:
        ADDS     R2,R6,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  486 				LED_P6x8Char(x+12,y,j+48);
        ADDS     R2,R7,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  487 				LED_P6x8Char(x+18,y,k+48);
        ADDS     R2,R8,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  488 				break;
        B.N      ??LED_PrintValueFP_1
//  489 		case 4: 	LED_P6x8Char(x+6,y,m+48);
??LED_PrintValueFP_4:
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  490 				LED_P6x8Char(x+12,y,i+48);
        ADDS     R2,R6,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  491 				LED_P6x8Char(x+18,y,j+48);
        ADDS     R2,R7,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  492 				LED_P6x8Char(x+24,y,k+48);
        ADDS     R2,R8,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  493 				break;	
//  494 	}
//  495  }
??LED_PrintValueFP_1:
        POP      {R4-R8,PC}       ;; return
//  496 //功能描述：将一个float型数转换成整数部分5位带小数和符号的数据并进行显示

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  497  void LED_PrintValueF(unsigned char x, unsigned char y, float data, unsigned char num)
//  498  {
LED_PrintValueF:
        PUSH     {R3-R11,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOV      R9,R2
//  499  	unsigned char l,m,i,j,k;  //万千百十个
//  500  	unsigned char databiti = 6; //整数位数
        MOVS     R7,#+6
//  501         unsigned int tempdataui = 0;
        MOVS     R4,#+0
//  502   	int tempdataii = (int)data; //整数部分
        MOV      R0,R9
        BL       __aeabi_f2iz
        MOVS     R4,R0
//  503  	long int tempdatalp = (long int)((data - (int)data)*10000); //取小数位后4位
        MOV      R0,R9
        BL       __aeabi_f2iz
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable7_3  ;; 0x461c4000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R8,R0
//  504  	
//  505  	//整数部分显示
//  506  	if(data < 0.0000001)  LED_P6x8Char(x, y,'-'); 
        MOV      R0,R9
        LDR.N    R1,??DataTable7_4  ;; 0x33d6bf95
        BL       __aeabi_cfcmple
        BCS.N    ??LED_PrintValueF_0
        MOVS     R2,#+45
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
        B.N      ??LED_PrintValueF_1
//  507  	else LED_P6x8Char(x, y,'+');
??LED_PrintValueF_0:
        MOVS     R2,#+43
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  508 	if(tempdataii < 0)tempdataii = - tempdataii;  //去掉整数部分负号
??LED_PrintValueF_1:
        CMP      R4,#+0
        BPL.N    ??LED_PrintValueF_2
        RSBS     R4,R4,#+0
//  509 	tempdataui = tempdataii;
//  510  	l  = tempdataui/10000;
??LED_PrintValueF_2:
        MOVW     R0,#+10000
        UDIV     R0,R4,R0
//  511 	m= (tempdataui%10000)/1000;
        MOVW     R1,#+10000
        UDIV     R2,R4,R1
        MLS      R1,R1,R2,R4
        MOV      R2,#+1000
        UDIV     R9,R1,R2
//  512 	i = (tempdataui%1000)/100;
        MOV      R1,#+1000
        UDIV     R2,R4,R1
        MLS      R1,R1,R2,R4
        MOVS     R2,#+100
        UDIV     R10,R1,R2
//  513 	j = (tempdataui%100)/10;
        MOVS     R1,#+100
        UDIV     R2,R4,R1
        MLS      R1,R1,R2,R4
        MOVS     R2,#+10
        UDIV     R11,R1,R2
//  514 	k = tempdataui%10;
        MOVS     R1,#+10
        UDIV     R2,R4,R1
        MLS      R4,R1,R2,R4
//  515  	if (l != 0)  //五位
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LED_PrintValueF_3
//  516  	{
//  517  		LED_P6x8Char(x+6,y,l+48);
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  518  		LED_P6x8Char(x+12,y,m+48);
        ADDS     R2,R9,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  519 		LED_P6x8Char(x+18,y,i+48);
        ADDS     R2,R10,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  520 		LED_P6x8Char(x+24,y,j+48);
        ADDS     R2,R11,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  521 		LED_P6x8Char(x+30,y,k+48);
        ADDS     R2,R4,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+30
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
        B.N      ??LED_PrintValueF_4
//  522  	}
//  523  	else if(m != 0) //四位
??LED_PrintValueF_3:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??LED_PrintValueF_5
//  524  	{
//  525  		databiti = 5;
        MOVS     R7,#+5
//  526  		LED_P6x8Char(x+6,y,m+48);
        ADDS     R2,R9,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  527  		LED_P6x8Char(x+12,y,i+48);
        ADDS     R2,R10,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  528 		LED_P6x8Char(x+18,y,j+48);
        ADDS     R2,R11,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  529 		LED_P6x8Char(x+24,y,k+48);
        ADDS     R2,R4,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
        B.N      ??LED_PrintValueF_4
//  530  	}
//  531   	else if(i != 0) //三位
??LED_PrintValueF_5:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BEQ.N    ??LED_PrintValueF_6
//  532   	{
//  533   		databiti = 4;
        MOVS     R7,#+4
//  534   	 	LED_P6x8Char(x+6,y,i+48);
        ADDS     R2,R10,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  535  		LED_P6x8Char(x+12,y,j+48);
        ADDS     R2,R11,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  536 		LED_P6x8Char(x+18,y,k+48);
        ADDS     R2,R4,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
        B.N      ??LED_PrintValueF_4
//  537   	}
//  538   	else if(j != 0) //两位
??LED_PrintValueF_6:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BEQ.N    ??LED_PrintValueF_7
//  539   	{
//  540     		databiti = 3;	
        MOVS     R7,#+3
//  541   		LED_P6x8Char(x+6,y,j+48);
        ADDS     R2,R11,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  542  		LED_P6x8Char(x+12,y,k+48);
        ADDS     R2,R4,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
        B.N      ??LED_PrintValueF_4
//  543   	}
//  544 	else 	
//  545 	{
//  546 		databiti = 2;
??LED_PrintValueF_7:
        MOVS     R7,#+2
//  547 		LED_P6x8Char(x+6,y,k+48);
        ADDS     R2,R4,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  548 	}	
//  549  	if(tempdatalp < 0)tempdatalp = - tempdatalp;	//去掉小数部分负号
??LED_PrintValueF_4:
        CMP      R8,#+0
        BPL.N    ??LED_PrintValueF_8
        RSBS     R8,R8,#+0
//  550 	switch(num)
??LED_PrintValueF_8:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.N    ??LED_PrintValueF_9
        CMP      R0,#+2
        BEQ.N    ??LED_PrintValueF_10
        BCC.N    ??LED_PrintValueF_11
        CMP      R0,#+4
        BEQ.N    ??LED_PrintValueF_12
        BCC.N    ??LED_PrintValueF_13
        B.N      ??LED_PrintValueF_14
//  551 	{
//  552 		case 0: break;
??LED_PrintValueF_9:
        B.N      ??LED_PrintValueF_14
//  553 		case 1:  LED_PrintValueFP(x + databiti * 6, y, (unsigned int)(tempdatalp / 1000),num);break;
??LED_PrintValueF_11:
        LDRB     R3,[SP, #+0]
        MOV      R0,#+1000
        SDIV     R2,R8,R0
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        MUL      R0,R0,R7
        UXTAB    R0,R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_PrintValueFP
        B.N      ??LED_PrintValueF_14
//  554 		case 2:  LED_PrintValueFP(x + databiti * 6, y, (unsigned int)(tempdatalp / 100),num);break;
??LED_PrintValueF_10:
        LDRB     R3,[SP, #+0]
        MOVS     R0,#+100
        SDIV     R2,R8,R0
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        MUL      R0,R0,R7
        UXTAB    R0,R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_PrintValueFP
        B.N      ??LED_PrintValueF_14
//  555 		case 3:  LED_PrintValueFP(x + databiti * 6, y, (unsigned int)(tempdatalp / 10),num);break;
??LED_PrintValueF_13:
        LDRB     R3,[SP, #+0]
        MOVS     R0,#+10
        SDIV     R2,R8,R0
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        MUL      R0,R0,R7
        UXTAB    R0,R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_PrintValueFP
        B.N      ??LED_PrintValueF_14
//  556 		case 4:  LED_PrintValueFP(x + databiti * 6, y, (unsigned int)(tempdatalp),num);break;					
??LED_PrintValueF_12:
        LDRB     R3,[SP, #+0]
        MOV      R2,R8
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        MUL      R0,R0,R7
        UXTAB    R0,R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_PrintValueFP
//  557 	}
//  558  }
??LED_PrintValueF_14:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  559 void display(void)
//  560 {     int16 Speed1=0;
display:
        PUSH     {R3-R5,LR}
        MOVS     R4,#+0
//  561       int16 Speed2=0;
        MOVS     R5,#+0
//  562      // Speed1=ch0_pulseacc;
//  563       //Speed2=ch1_pulseacc;
//  564       LED_P6x8Str(12,0,"Speed1:");
        LDR.N    R2,??DataTable7_5
        MOVS     R1,#+0
        MOVS     R0,#+12
        BL       LED_P6x8Str
//  565       LED_PrintValueC(75,0,Speed1);
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+0
        MOVS     R0,#+75
        BL       LED_PrintValueC
//  566       LED_P6x8Str(12,1,"Speed2:");
        LDR.N    R2,??DataTable7_6
        MOVS     R1,#+1
        MOVS     R0,#+12
        BL       LED_P6x8Str
//  567       LED_PrintValueI(75,1,(Speed2));
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        MOVS     R2,R5
        MOVS     R1,#+1
        MOVS     R0,#+75
        BL       LED_PrintValueI
//  568 } 
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     ??led_Port_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     F6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x461c4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x33d6bf95

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     ?_1
//  569 //float *par[2][6]={{&Speed_g_pre,&car_angle_kp,&car_angle_kd,&Speed_kp,&Speed_kd,&Speed_ki},{&CONTROL_ROW,&direction_P,&direction_D,&epc,&edc,&ratio}};

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//  570 char press=1;
press:
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//  571 char mode=0;
mode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//  572 char mode_pre;
mode_pre:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  573 int  page=0;
page:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  574 int show_fill;
show_fill:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  575 int cursor_line;
cursor_line:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  576 float place;
place:
        DS8 4

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  577 //void key_delay(int ms);
//  578 /*void keycontrol(void)
//  579 {
//  580  //模式1，参数调整 
//  581   if(mode==1)
//  582   {
//  583    if(press==1)
//  584    {
//  585     show_fill=1;
//  586     press=0;
//  587     if(page==0)
//  588     {
//  589       LED_Fill(0x00);
//  590       LED_P6x8Str(12,0,"Voltage:");
//  591       LED_PrintValueF(75,0,Voltage,3);
//  592       LED_P6x8Str(12,1,"Speed:");
//  593       LED_PrintValueF(75,1,Speed_g_pre,0);
//  594       LED_P6x8Str(12,2,"angle_p:");
//  595       LED_PrintValueF(75,2,car_angle_kp,0);
//  596       LED_P6x8Str(12,3,"angle_d:");
//  597       LED_PrintValueF(75,3,car_angle_kd,1);
//  598       LED_P6x8Str(12,4,"Speed_kp:");
//  599       LED_PrintValueF(75,4,Speed_kp,1);
//  600       LED_P6x8Str(12,5,"Speed_kd:");
//  601       LED_PrintValueF(75,5,Speed_kd,2);
//  602       LED_P6x8Str(12,6,"Speed_ki:");
//  603       LED_PrintValueF(75,6,Speed_ki,4);
//  604       //LED_P6x8Str(12,6,"quan:");
//  605       //LED_PrintValueF(75,6,quan,2);
//  606     }
//  607     if(page==1)
//  608     {
//  609       LED_Fill(0x00);
//  610       LED_P6x8Str(12,0,"Voltage:");
//  611       LED_PrintValueF(75,0,Voltage,3);
//  612       LED_P6x8Str(12,1,"Row:");
//  613       LED_PrintValueI(75,1,CONTROL_ROW);
//  614       LED_P6x8Str(12,2,"dir_P:");
//  615       LED_PrintValueF(75,2,direction_P,0);
//  616       LED_P6x8Str(12,3,"dir_D:");
//  617       LED_PrintValueF(75,3,direction_D,3);
//  618       LED_P6x8Str(12,4,"epc:");
//  619       LED_PrintValueF(75,4,epc,3);
//  620       LED_P6x8Str(12,5,"edc:");
//  621       LED_PrintValueF(75,5,edc,3);
//  622       LED_P6x8Str(12,6,"ratio:");
//  623       LED_PrintValueF(75,6,ratio,2);
//  624     }
//  625       LED_P6x8Str(0,cursor_line,"_");
//  626    }
//  627     if(page==2)
//  628     { 
//  629       if(show_fill)
//  630       { 
//  631         LED_Fill(0x00);
//  632         show_fill=0;
//  633       }
//  634       if(sampleover)
//  635       {
//  636         disable_irq(PORTB_IRQn);
//  637         row_DMA_flag=0;
//  638         sampleover=0;
//  639         //解压图像
//  640         img_extract();
//  641         search();
//  642         Centre_Calculate();
//  643         Centre_Err_Calculate();
//  644         //清PORTB中断标志
//  645         LPLD_GPIO_ClearIntFlag(PORTB);      
//  646         enable_irq(PORTB_IRQn);
//  647       }
//  648      //图像显示
//  649       uint8 i,j,data;
//  650       int temp,cnt;
//  651       for(j=0;j<ROW;j++)
//  652       {  
//  653         if(line_storage_bool[j][M]) Image[j][(int)Mid_storage[j]+39]=0;
//  654         if(line_storage_bool[j][L]) Image[j][(int)line_storage[j][L]+2]=0;
//  655         if(line_storage_bool[j][R]) Image[j][(int)line_storage[j][R]-2]=0;
//  656       }
//  657       for(j=0;j<8;j++)
//  658      { 
//  659        LED_WrCmd(0xb0+j);
//  660        LED_WrCmd(0x01);
//  661        LED_WrCmd(0x10);
//  662        for(i=0;i<80;i++)
//  663        { 
//  664          temp=0; 
//  665          for(cnt=7;cnt>=0;cnt--)
//  666          {  
//  667            temp|=Image[j*8+cnt][i]/255; 
//  668            temp=temp<<1;  
//  669          }
//  670          data=temp>>1;
//  671          LED_WrDat(data);
//  672        }
//  673      }     
//  674     }
//  675     if(DN)
//  676     {
//  677       key_delay(20);
//  678       if(DN)
//  679       { 
//  680         press=1;
//  681         place=1;
//  682         cursor_line++; 
//  683         while(DN);
//  684       }
//  685     }        
//  686     if(UP)
//  687     {
//  688       key_delay(20);
//  689       if(UP)
//  690       {
//  691         press=1;
//  692         place=1;
//  693         cursor_line--; 
//  694         while(UP);
//  695       }     
//  696     }
//  697     if(cursor_line<0)
//  698       cursor_line=7;
//  699     if(cursor_line>7)
//  700       cursor_line=0;
//  701     if(cursor_line==0)
//  702     {
//  703      if(RT)
//  704      {
//  705        key_delay(20);
//  706        if(RT)
//  707        {
//  708          press=1;
//  709          page++;
//  710          while(RT);
//  711        }
//  712      } 
//  713       if(LT)
//  714      {
//  715        key_delay(20);
//  716        if(LT)
//  717        {
//  718          press=1;
//  719          page--;
//  720          while(LT);
//  721        }
//  722      }
//  723      if(page<0) page=2;
//  724      if(page>2) page=0;
//  725    }
//  726    if(cursor_line)
//  727    {
//  728      if(ESC)
//  729      {
//  730        key_delay(20);
//  731        if(ESC)
//  732        {
//  733          press=1;
//  734          place*=10; 
//  735          while(ESC);
//  736        }
//  737      }
//  738      if(OK)
//  739      {
//  740        key_delay(20);
//  741        if(OK)
//  742        {
//  743          press=1;
//  744          place*=0.1; 
//  745          while(OK);
//  746        }
//  747      }
//  748      if(place>1000) place=1000;
//  749      if(place<0.001) place=0.001;    
//  750      if(RT)
//  751      {
//  752        key_delay(20);
//  753        if(RT)
//  754        {
//  755          press=1;
//  756          *par[page][cursor_line-1]=*par[page][cursor_line-1]+place;
//  757          while(RT);
//  758        }
//  759      }
//  760      if(LT)
//  761      {
//  762        key_delay(20);
//  763        if(LT)
//  764        {
//  765          press=1;
//  766          *par[page][cursor_line-1]=*par[page][cursor_line-1]-place;
//  767          while(LT);
//  768        }
//  769      }
//  770      
//  771    }
//  772   }
//  773 }
//  774 void key_delay(int ms)
//  775 {                         
//  776     int a;
//  777     while(ms)
//  778     {
//  779        a=1000;
//  780        while(a--);
//  781        ms--;
//  782     }
//  783     return;
//  784 }
//  785 */
// 
//    38 bytes in section .bss
//     1 byte  in section .data
//   568 bytes in section .rodata
// 2 584 bytes in section .text
// 
// 2 584 bytes of CODE  memory
//   568 bytes of CONST memory
//    39 bytes of DATA  memory
//
//Errors: none
//Warnings: none
