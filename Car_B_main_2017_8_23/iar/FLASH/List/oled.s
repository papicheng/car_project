///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      23/Aug/2017  10:35:10
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\oled.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\oled.c
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
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List\oled.s
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

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\oled.c
//    1 
//    2 
//    3 #include "oled.h"
//    4 //OLED显示屏
//    5 //定义输出
//    6 #define LED_SCLK(x) LPLD_GPIO_Output_b(PTC, 16, x)// d0
//    7 #define LED_SDA(x)  LPLD_GPIO_Output_b(PTC, 17, x)//d1
//    8 #define LED_RST(x)  LPLD_GPIO_Output_b(PTC, 18, x)//复位低能电平
//    9 #define LED_DC(x)   LPLD_GPIO_Output_b(PTC, 19, x)//偏置常低
//   10 //OLED显示函数
//   11 
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void led_gpio_int(void)
//   14 {
led_gpio_int:
        PUSH     {R7,LR}
//   15   static GPIO_InitTypeDef led_Port_init;
//   16   led_Port_init.GPIO_PTx = PTC;
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//   17   led_Port_init.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_1
        STRB     R0,[R1, #+12]
//   18   led_Port_init.GPIO_Pins = GPIO_Pin16|GPIO_Pin17|GPIO_Pin18|GPIO_Pin19;
        MOVS     R0,#+983040
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+4]
//   19   led_Port_init.GPIO_Output  = OUTPUT_H ;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_1
        STRB     R0,[R1, #+13]
//   20   LPLD_GPIO_Init(led_Port_init);
        LDR.W    R1,??DataTable7_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   21 }
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
//   22 
//   23 /*定义ASCII码表*/

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   24 const unsigned char F6x8[][6] =
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
//   25 {
//   26 	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
//   27 	{ 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
//   28 	{ 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
//   29 	{ 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
//   30 	{ 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
//   31 	{ 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
//   32 	{ 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
//   33 	{ 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
//   34 	{ 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
//   35 	{ 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
//   36 	{ 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
//   37 	{ 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
//   38 	{ 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
//   39 	{ 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
//   40 	{ 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
//   41 	{ 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
//   42 	{ 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
//   43 	{ 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
//   44 	{ 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
//   45 	{ 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
//   46 	{ 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
//   47 	{ 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
//   48 	{ 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
//   49 	{ 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
//   50 	{ 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
//   51 	{ 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
//   52 	{ 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
//   53 	{ 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
//   54 	{ 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
//   55 	{ 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
//   56 	{ 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
//   57 	{ 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
//   58 	{ 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
//   59 	{ 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
//   60 	{ 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
//   61 	{ 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
//   62 	{ 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
//   63 	{ 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
//   64 	{ 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
//   65 	{ 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
//   66 	{ 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
//   67 	{ 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
//   68 	{ 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
//   69 	{ 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
//   70 	{ 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
//   71 	{ 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
//   72 	{ 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
//   73 	{ 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
//   74 	{ 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
//   75 	{ 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
//   76 	{ 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
//   77 	{ 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
//   78 	{ 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
//   79 	{ 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
//   80 	{ 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
//   81 	{ 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
//   82 	{ 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
//   83 	{ 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
//   84 	{ 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
//   85 	{ 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [ 91
//   86 	{ 0x00, 0x02, 0x04 ,0x08, 0x10, 0x20 },    // \92
//   87 	{ 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
//   88 	{ 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
//   89 	{ 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
//   90 	{ 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
//   91 	{ 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
//   92 	{ 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
//   93 	{ 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
//   94 	{ 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
//   95 	{ 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
//   96 	{ 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
//   97 	{ 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
//   98 	{ 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
//   99 	{ 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
//  100 	{ 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
//  101 	{ 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
//  102 	{ 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
//  103 	{ 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
//  104 	{ 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
//  105 	{ 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
//  106 	{ 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
//  107 	{ 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
//  108 	{ 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
//  109 	{ 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
//  110 	{ 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
//  111 	{ 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
//  112 	{ 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
//  113 	{ 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
//  114 	{ 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
//  115 	{ 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
//  116 	{ 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
//  117 	{ 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
//  118 };
//  119 
//  120 //写数据函数

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  121 void LED_WrDat(unsigned char data)   
//  122 {
LED_WrDat:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  123 	unsigned char i = 8;
        MOVS     R5,#+8
//  124 	//LED_CS=0;
//  125 	LED_DC(1);
        MOVS     R2,#+1
        MOVS     R1,#+19
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  126 	LED_SCLK(0);  
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??LED_WrDat_0
//  127 	while (i--)
//  128 	{
//  129 		if (data & 0x80)
//  130 		{
//  131 			LED_SDA(1);
//  132 		}
//  133 		else
//  134 		{
//  135 			LED_SDA(0);
??LED_WrDat_1:
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  136 		}
//  137 		LED_SCLK(1); 
??LED_WrDat_2:
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  138 		asm("nop");     
        nop
//  139 		LED_SCLK(0);    
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  140 		data <<= 1;    
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
//  141 	}
//  142 }
??LED_WrDat_3:
        POP      {R0,R4,R5,PC}    ;; return
//  143 //写入命令函数

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  144 void LED_WrCmd(unsigned char cmd) 
//  145 {
LED_WrCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  146 	unsigned char i = 8;
        MOVS     R5,#+8
//  147 	//LED_CS = 0;
//  148 	LED_DC(0);
        MOVS     R2,#+0
        MOVS     R1,#+19
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  149 	LED_SCLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??LED_WrCmd_0
//  150 	while (i--)
//  151 	{
//  152 		if (cmd & 0x80)
//  153 		{
//  154 			LED_SDA(1);
//  155 		}
//  156 		else
//  157 		{
//  158 			LED_SDA(0);
??LED_WrCmd_1:
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  159 		}
//  160 		LED_SCLK(1);
??LED_WrCmd_2:
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  161 		asm("nop");           
        nop
//  162 		LED_SCLK(0);    
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  163 		cmd <<= 1;   
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
//  164 	} 	
//  165 	//LED_CS = 1;
//  166 }
??LED_WrCmd_3:
        POP      {R0,R4,R5,PC}    ;; return
//  167 //设置显示坐标位置

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  168 void LED_Set_Pos(unsigned char x, unsigned char y)
//  169 { 
LED_Set_Pos:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  170 	LED_WrCmd(0xb0+y);
        SUBS     R0,R1,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  171 	LED_WrCmd(((x&0xf0)>>4)|0x10);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  172 	LED_WrCmd((x&0x0f)|0x00); 
        ANDS     R0,R4,#0xF
        BL       LED_WrCmd
//  173 }
        POP      {R4,PC}          ;; return
//  174 //清屏函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  175 void LED_Fill(unsigned char bmp_data)
//  176 {
LED_Fill:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  177 	unsigned char y,x;
//  178 	
//  179 	for(y=0;y<8;y++)
        MOVS     R5,#+0
        B.N      ??LED_Fill_0
//  180 	{
//  181 		LED_WrCmd(0xb0+y);   //0xb0+0~7表示页0~页7?
//  182 		LED_WrCmd(0x00);       //0x00+0~16表示将128列分成16组其地址在某组中的第几列
//  183 		LED_WrCmd(0x10);      //0x10+0~16表示将128列分成16组其地址所在第几组
//  184 		for(x=0;x<128;x++)
//  185 			LED_WrDat(bmp_data);
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
//  186 	}
//  187 }
??LED_Fill_3:
        POP      {R4-R6,PC}       ;; return
//  188 //延时函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  189 void LED_DLY_ms(unsigned int ms)
//  190 {                         
LED_DLY_ms:
        B.N      ??LED_DLY_ms_0
//  191   uint16 a;
//  192   while(ms)
//  193   {
//  194     a=6675;
??LED_DLY_ms_1:
        MOVW     R1,#+6675
//  195     while(a--);
??LED_DLY_ms_2:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??LED_DLY_ms_2
//  196     ms--;
        SUBS     R0,R0,#+1
//  197   }
??LED_DLY_ms_0:
        CMP      R0,#+0
        BNE.N    ??LED_DLY_ms_1
//  198   return;
        BX       LR               ;; return
//  199 }
//  200 /*__________________________________
//  201 |  名称:                           |
//  202 |  作用:写数据等                   |
//  203 |_________________________________*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  204 void SetStartColumn(unsigned char d)
//  205 {
SetStartColumn:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  206 	LED_WrCmd(0x00+d%16);	// Set Lower Column Start Address for Page Addressing Mode
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+16
        SDIV     R1,R4,R0
        MLS      R1,R1,R0,R4
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  207 							// Default => 0x00
//  208 	LED_WrCmd(0x10+d/16);	// Set Higher Column Start Address for Page Addressing Mode
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+16
        SDIV     R0,R4,R0
        ADDS     R0,R0,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  209 							// Default => 0x10
//  210 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  211 void SetAddressingMode(unsigned char d)
//  212 {
SetAddressingMode:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  213 	LED_WrCmd(0x20);			// Set Memory Addressing Mode
        MOVS     R0,#+32
        BL       LED_WrCmd
//  214 	LED_WrCmd(d);			// Default => 0x02
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  215 							// 0x00 => Horizontal Addressing Mode
//  216 							// 0x01 => Vertical Addressing Mode
//  217 							// 0x02 => Page Addressing Mode
//  218 }
        POP      {R4,PC}          ;; return
//  219 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  220 void SetColumnAddress(unsigned char a, unsigned char b)
//  221 {
SetColumnAddress:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  222 	LED_WrCmd(0x21);			// Set Column Address
        MOVS     R0,#+33
        BL       LED_WrCmd
//  223 	LED_WrCmd(a);			// Default => 0x00 (Column Start Address)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  224 	LED_WrCmd(b);			// Default => 0x7F (Column End Address)
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  225 }
        POP      {R0,R4,R5,PC}    ;; return
//  226 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  227 void SetPageAddress(unsigned char a, unsigned char b)
//  228 {
SetPageAddress:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  229 	LED_WrCmd(0x22);			// Set Page Address
        MOVS     R0,#+34
        BL       LED_WrCmd
//  230 	LED_WrCmd(a);			// Default => 0x00 (Page Start Address)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  231 	LED_WrCmd(b);			// Default => 0x07 (Page End Address)
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  232 }
        POP      {R0,R4,R5,PC}    ;; return
//  233 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  234 void SetStartLine(unsigned char d)
//  235 {
SetStartLine:
        PUSH     {R7,LR}
//  236 	LED_WrCmd(0x40|d);		// Set Display Start Line
        ORRS     R0,R0,#0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  237 							// Default => 0x40 (0x00)
//  238 }
        POP      {R0,PC}          ;; return
//  239 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  240 void SetContrastControl(unsigned char d)
//  241 {
SetContrastControl:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  242 	LED_WrCmd(0x81);			// Set Contrast Control
        MOVS     R0,#+129
        BL       LED_WrCmd
//  243 	LED_WrCmd(d);			// Default => 0x7F
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  244 }
        POP      {R4,PC}          ;; return
//  245 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  246 void Set_Charge_Pump(unsigned char d)
//  247 {
Set_Charge_Pump:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  248 	LED_WrCmd(0x8D);			// Set Charge Pump
        MOVS     R0,#+141
        BL       LED_WrCmd
//  249 	LED_WrCmd(0x10|d);		// Default => 0x10
        ORRS     R0,R4,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  250 							// 0x10 (0x00) => Disable Charge Pump
//  251 							// 0x14 (0x04) => Enable Charge Pump
//  252 }
        POP      {R4,PC}          ;; return
//  253 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  254 void Set_Segment_Remap(unsigned char d)
//  255 {
Set_Segment_Remap:
        PUSH     {R7,LR}
//  256 	LED_WrCmd(0xA0|d);		// Set Segment Re-Map
        ORRS     R0,R0,#0xA0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  257 							// Default => 0xA0
//  258 							// 0xA0 (0x00) => Column Address 0 Mapped to SEG0
//  259 							// 0xA1 (0x01) => Column Address 0 Mapped to SEG127
//  260 }
        POP      {R0,PC}          ;; return
//  261 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  262 void Set_Entire_Display(unsigned char d)
//  263 {
Set_Entire_Display:
        PUSH     {R7,LR}
//  264 	LED_WrCmd(0xA4|d);		// Set Entire Display On / Off
        ORRS     R0,R0,#0xA4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  265 							// Default => 0xA4
//  266 							// 0xA4 (0x00) => Normal Display
//  267 							// 0xA5 (0x01) => Entire Display On
//  268 }
        POP      {R0,PC}          ;; return
//  269 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  270 void Set_Inverse_Display(unsigned char d)
//  271 {
Set_Inverse_Display:
        PUSH     {R7,LR}
//  272 	LED_WrCmd(0xA6|d);		// Set Inverse Display On/Off
        ORRS     R0,R0,#0xA6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  273 							// Default => 0xA6
//  274 							// 0xA6 (0x00) => Normal Display
//  275 							// 0xA7 (0x01) => Inverse Display On
//  276 }
        POP      {R0,PC}          ;; return
//  277 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  278 void Set_Multiplex_Ratio(unsigned char d)
//  279 {
Set_Multiplex_Ratio:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  280 	LED_WrCmd(0xA8);			// Set Multiplex Ratio
        MOVS     R0,#+168
        BL       LED_WrCmd
//  281 	LED_WrCmd(d);			// Default => 0x3F (1/64 Duty)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  282 }
        POP      {R4,PC}          ;; return
//  283 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  284 void Set_Display_On_Off(unsigned char d)
//  285 {
Set_Display_On_Off:
        PUSH     {R7,LR}
//  286 	LED_WrCmd(0xAE|d);		// Set Display On/Off
        ORRS     R0,R0,#0xAE
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  287 							// Default => 0xAE
//  288 							// 0xAE (0x00) => Display Off
//  289 							// 0xAF (0x01) => Display On
//  290 }
        POP      {R0,PC}          ;; return
//  291 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  292 void SetStartPage(unsigned char d)
//  293 {
SetStartPage:
        PUSH     {R7,LR}
//  294 	LED_WrCmd(0xB0|d);		// Set Page Start Address for Page Addressing Mode
        ORRS     R0,R0,#0xB0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  295 							// Default => 0xB0 (0x00)
//  296 }
        POP      {R0,PC}          ;; return
//  297 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  298 void Set_Common_Remap(unsigned char d)
//  299 {
Set_Common_Remap:
        PUSH     {R7,LR}
//  300 	LED_WrCmd(0xC0|d);		// Set COM Output Scan Direction
        ORRS     R0,R0,#0xC0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  301 							// Default => 0xC0
//  302 							// 0xC0 (0x00) => Scan from COM0 to 63
//  303 							// 0xC8 (0x08) => Scan from COM63 to 0
//  304 }
        POP      {R0,PC}          ;; return
//  305 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  306 void Set_Display_Offset(unsigned char d)
//  307 {
Set_Display_Offset:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  308 	LED_WrCmd(0xD3);			// Set Display Offset
        MOVS     R0,#+211
        BL       LED_WrCmd
//  309 	LED_WrCmd(d);			// Default => 0x00
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  310 }
        POP      {R4,PC}          ;; return
//  311 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  312 void Set_Display_Clock(unsigned char d)
//  313 {
Set_Display_Clock:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  314 	LED_WrCmd(0xD5);			// Set Display Clock Divide Ratio / Oscillator Frequency
        MOVS     R0,#+213
        BL       LED_WrCmd
//  315 	LED_WrCmd(d);			// Default => 0x80
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  316 							// D[3:0] => Display Clock Divider
//  317 							// D[7:4] => Oscillator Frequency
//  318 }
        POP      {R4,PC}          ;; return
//  319 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  320 void Set_Precharge_Period(unsigned char d)
//  321 {
Set_Precharge_Period:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  322 	LED_WrCmd(0xD9);			// Set Pre-Charge Period
        MOVS     R0,#+217
        BL       LED_WrCmd
//  323 	LED_WrCmd(d);			// Default => 0x22 (2 Display Clocks [Phase 2] / 2 Display Clocks [Phase 1])
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  324 							// D[3:0] => Phase 1 Period in 1~15 Display Clocks
//  325 							// D[7:4] => Phase 2 Period in 1~15 Display Clocks
//  326 }
        POP      {R4,PC}          ;; return
//  327 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  328 void Set_Common_Config(unsigned char d)
//  329 {
Set_Common_Config:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  330 	LED_WrCmd(0xDA);			// Set COM Pins Hardware Configuration
        MOVS     R0,#+218
        BL       LED_WrCmd
//  331 	LED_WrCmd(0x02|d);		// Default => 0x12 (0x10)
        ORRS     R0,R4,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  332 							// Alternative COM Pin Configuration
//  333 							// Disable COM Left/Right Re-Map
//  334 }
        POP      {R4,PC}          ;; return
//  335 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  336 void Set_VCOMH(unsigned char d)
//  337 {
Set_VCOMH:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  338 	LED_WrCmd(0xDB);			// Set VCOMH Deselect Level
        MOVS     R0,#+219
        BL       LED_WrCmd
//  339 	LED_WrCmd(d);			// Default => 0x20 (0.77*VCC)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_WrCmd
//  340 }
        POP      {R4,PC}          ;; return
//  341 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  342 void Set_NOP(void)
//  343 {
Set_NOP:
        PUSH     {R7,LR}
//  344 	LED_WrCmd(0xE3);			// Command for No Operation
        MOVS     R0,#+227
        BL       LED_WrCmd
//  345 }
        POP      {R0,PC}          ;; return
//  346 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  347 void LED_Init(void)        
//  348 {       
LED_Init:
        PUSH     {R7,LR}
//  349       // led_gpio_int();
//  350        LED_DLY_ms(50);
        MOVS     R0,#+50
        BL       LED_DLY_ms
//  351         LED_DC(0);		
        MOVS     R2,#+0
        MOVS     R1,#+19
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  352 	LED_SDA(0);
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  353         LED_SCLK(0);		
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  354 	LED_RST(0);
        MOVS     R2,#+0
        MOVS     R1,#+18
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  355         LED_DLY_ms(50);
        MOVS     R0,#+50
        BL       LED_DLY_ms
//  356 	LED_SCLK(1);		
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  357 	LED_RST(0);
        MOVS     R2,#+0
        MOVS     R1,#+18
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  358 //	for(i=0;i<100;i++)asm("nop");     //从上电到下面开始初始化要有足够的时间，即等待RC复位完毕	
//  359         LED_DLY_ms(50);
        MOVS     R0,#+50
        BL       LED_DLY_ms
//  360 	LED_RST(1);
        MOVS     R2,#+1
        MOVS     R1,#+18
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  361 
//  362 	Set_Display_On_Off(0x00);		  // Display Off (0x00/0x01)
        MOVS     R0,#+0
        BL       Set_Display_On_Off
//  363 	Set_Display_Clock(0x80);		  // Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       Set_Display_Clock
//  364 	Set_Multiplex_Ratio(0x3F);	  // 1/64 Duty (0x0F~0x3F)
        MOVS     R0,#+63
        BL       Set_Multiplex_Ratio
//  365 	Set_Display_Offset(0x00);		  // Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+0
        BL       Set_Display_Offset
//  366 	SetStartLine(0x00);			  // Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+0
        BL       SetStartLine
//  367 	Set_Charge_Pump(0x04);		  // Enable Embedded DC/DC Converter (0x00/0x04)
        MOVS     R0,#+4
        BL       Set_Charge_Pump
//  368 	SetAddressingMode(0x02);	  // Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+2
        BL       SetAddressingMode
//  369 	Set_Segment_Remap(0x01);	  // Set SEG/Column Mapping     0x00左右反置 0x01正常
        MOVS     R0,#+1
        BL       Set_Segment_Remap
//  370 	Set_Common_Remap(0x08);	  // Set COM/Row Scan Direction 0x00上下反置 0x08正常
        MOVS     R0,#+8
        BL       Set_Common_Remap
//  371 	Set_Common_Config(0x10);	  // Set Sequential Configuration (0x00/0x10)
        MOVS     R0,#+16
        BL       Set_Common_Config
//  372 	SetContrastControl(0xCF); // Set SEG Output Current
        MOVS     R0,#+207
        BL       SetContrastControl
//  373 	Set_Precharge_Period(0xF1);	  // Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       Set_Precharge_Period
//  374 	Set_VCOMH(0x40);			  // Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       Set_VCOMH
//  375 	Set_Entire_Display(0x00);		  // Disable Entire Display On (0x00/0x01)
        MOVS     R0,#+0
        BL       Set_Entire_Display
//  376 	Set_Inverse_Display(0x00);	  // Disable Inverse Display On (0x00/0x01)  
        MOVS     R0,#+0
        BL       Set_Inverse_Display
//  377 	Set_Display_On_Off(0x01);		  // Display On (0x00/0x01)
        MOVS     R0,#+1
        BL       Set_Display_On_Off
//  378 	LED_Fill(0x00);                               //初始清屏
        MOVS     R0,#+0
        BL       LED_Fill
//  379 	LED_Set_Pos(0,0); 	
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LED_Set_Pos
//  380 } 
        POP      {R0,PC}          ;; return
//  381 //显示一个6x8标准ASCII字符

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  382 void LED_P6x8Char(unsigned char x,unsigned char y,unsigned char ch)
//  383 {
LED_P6x8Char:
        PUSH     {R3-R5,LR}
//  384 	 unsigned char c=0,i=0;     
        MOVS     R4,#+0
        MOVS     R5,#+0
//  385 	   
//  386 	c =ch-32;
        SUBS     R4,R2,#+32
//  387 	if(x>122)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+123
        BLT.N    ??LED_P6x8Char_0
//  388 	{
//  389 		x=0;
        MOVS     R0,#+0
//  390 		y++;
        ADDS     R1,R1,#+1
//  391 	}
//  392 	LED_Set_Pos(x,y);    
??LED_P6x8Char_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_Set_Pos
//  393 	for(i=0;i<6;i++)
        MOVS     R5,#+0
        B.N      ??LED_P6x8Char_1
//  394 	{     
//  395 		LED_WrDat(F6x8[c][i]);  
??LED_P6x8Char_2:
        LDR.W    R0,??DataTable7_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+6
        MLA      R0,R1,R4,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R0]
        BL       LED_WrDat
//  396 	}
        ADDS     R5,R5,#+1
??LED_P6x8Char_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BLT.N    ??LED_P6x8Char_2
//  397 }
        POP      {R0,R4,R5,PC}    ;; return
//  398 
//  399 //功能描述：写入一组6x8标准ASCII字符串 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  400 void LED_P6x8Str(unsigned char x,unsigned char y,unsigned char ch[])
//  401 {
LED_P6x8Str:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  402 	unsigned char c=0,i=0,j=0;      
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R7,#+0
        B.N      ??LED_P6x8Str_0
//  403 	while (ch[j]!='\0')
//  404 	{    
//  405 		c =ch[j]-32;
//  406 		if(x>126)
//  407 		{
//  408 			x=0;
//  409 			y++;
//  410 		}
//  411 		LED_Set_Pos(x,y);    
//  412 		for(i=0;i<6;i++)
//  413 		{     
//  414 			LED_WrDat(F6x8[c][i]);  
??LED_P6x8Str_1:
        LDR.W    R0,??DataTable7_2
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOVS     R1,#+6
        MLA      R0,R1,R8,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R0]
        BL       LED_WrDat
//  415 		}
        ADDS     R9,R9,#+1
??LED_P6x8Str_2:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+6
        BLT.N    ??LED_P6x8Str_1
//  416 		x+=6;
        ADDS     R4,R4,#+6
//  417 		j++;
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
//  418 	}
//  419 }
??LED_P6x8Str_3:
        POP      {R0,R4-R9,PC}    ;; return
//  420 //将一个char型数转换成3位数进行显示

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  421 void LED_PrintValueC(unsigned char x, unsigned char y, char data)
//  422 {
LED_PrintValueC:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  423 	unsigned char i,j,k;
//  424 	if(data<=0)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??LED_PrintValueC_0
//  425 	{
//  426 		LED_P6x8Char(x,y,'-');
        MOVS     R2,#+45
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  427 		data = - data;	
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        RSBS     R6,R6,#+0
        B.N      ??LED_PrintValueC_1
//  428 	}
//  429 	else
//  430 	{
//  431 		LED_P6x8Char(x,y,'+');
??LED_PrintValueC_0:
        MOVS     R2,#+43
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  432 	}
//  433 	i = data/100;
??LED_PrintValueC_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+100
        SDIV     R0,R6,R0
//  434 	j = (data%100)/10;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,#+100
        SDIV     R2,R6,R1
        MLS      R1,R1,R2,R6
        MOVS     R2,#+10
        SDIV     R7,R1,R2
//  435 	k = data%10;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,#+10
        SDIV     R2,R6,R1
        MLS      R6,R1,R2,R6
//  436 	LED_P6x8Char(x+6,y,i+48);
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  437 	LED_P6x8Char(x+12,y,j+48);
        ADDS     R2,R7,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  438 	LED_P6x8Char(x+18,y,k+48);		
        ADDS     R2,R6,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  439 }
        POP      {R0,R4-R7,PC}    ;; return
//  440 //功能描述：将一个int型数转换成5位数进行显示

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  441 void LED_PrintValueI(unsigned char x, unsigned char y, int data)
//  442 {
LED_PrintValueI:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  443 	unsigned char i,j,k,l,m;  
//  444 	if(data < 0)
        CMP      R6,#+0
        BPL.N    ??LED_PrintValueI_0
//  445 	{
//  446 		LED_P6x8Char(x,y,'-');
        MOVS     R2,#+45
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  447 		data = - data;	
        RSBS     R6,R6,#+0
        B.N      ??LED_PrintValueI_1
//  448 	}
//  449 	else
//  450 	{
//  451 		LED_P6x8Char(x,y,'+');
??LED_PrintValueI_0:
        MOVS     R2,#+43
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  452 	}
//  453 	
//  454 	l  = data/10000;
??LED_PrintValueI_1:
        MOVW     R0,#+10000
        SDIV     R0,R6,R0
//  455 	m= (data%10000)/1000;
        MOVW     R1,#+10000
        SDIV     R2,R6,R1
        MLS      R1,R1,R2,R6
        MOV      R2,#+1000
        SDIV     R7,R1,R2
//  456 	i = (data%1000)/100;
        MOV      R1,#+1000
        SDIV     R2,R6,R1
        MLS      R1,R1,R2,R6
        MOVS     R2,#+100
        SDIV     R8,R1,R2
//  457 	j = (data%100)/10;
        MOVS     R1,#+100
        SDIV     R2,R6,R1
        MLS      R1,R1,R2,R6
        MOVS     R2,#+10
        SDIV     R9,R1,R2
//  458 	k = data%10;
        MOVS     R1,#+10
        SDIV     R2,R6,R1
        MLS      R6,R1,R2,R6
//  459 	LED_P6x8Char(x+6,y,l+48);
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  460 	LED_P6x8Char(x+12,y,m+48);
        ADDS     R2,R7,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  461 	LED_P6x8Char(x+18,y,i+48);
        ADDS     R2,R8,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  462 	LED_P6x8Char(x+24,y,j+48);
        ADDS     R2,R9,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  463 	LED_P6x8Char(x+30,y,k+48);		
        ADDS     R2,R6,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+30
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  464 }
        POP      {R0,R4-R9,PC}    ;; return
//  465 //显示unsigned int型

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  466  void LED_PrintValueFP(unsigned char x, unsigned char y, unsigned int data, unsigned char num)
//  467  {
LED_PrintValueFP:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  468  	unsigned char m,i,j,k;  	
//  469  	//LED_P6x8Char(x, y, '.');
//  470 	m= data/1000;
        MOV      R0,#+1000
        UDIV     R0,R2,R0
//  471 	i = (data%1000)/100;
        MOV      R1,#+1000
        UDIV     R6,R2,R1
        MLS      R1,R1,R6,R2
        MOVS     R6,#+100
        UDIV     R6,R1,R6
//  472 	j = (data%100)/10;
        MOVS     R1,#+100
        UDIV     R7,R2,R1
        MLS      R1,R1,R7,R2
        MOVS     R7,#+10
        UDIV     R7,R1,R7
//  473 	k = data%10;
        MOVS     R1,#+10
        UDIV     R12,R2,R1
        MLS      R8,R1,R12,R2
//  474 	switch(num)
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
//  475 	{
//  476 		case 1:  	LED_P6x8Char(x+6,y,k+48);
??LED_PrintValueFP_0:
        ADDS     R2,R8,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  477 				break;
        B.N      ??LED_PrintValueFP_1
//  478 		case 2:  	LED_P6x8Char(x+6,y,j+48);
??LED_PrintValueFP_3:
        ADDS     R2,R7,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  479 				LED_P6x8Char(x+12,y,k+48);
        ADDS     R2,R8,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  480 				break;
        B.N      ??LED_PrintValueFP_1
//  481 		case 3:	LED_P6x8Char(x+6,y,i+48);
??LED_PrintValueFP_2:
        ADDS     R2,R6,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  482 				LED_P6x8Char(x+12,y,j+48);
        ADDS     R2,R7,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  483 				LED_P6x8Char(x+18,y,k+48);
        ADDS     R2,R8,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  484 				break;
        B.N      ??LED_PrintValueFP_1
//  485 		case 4: 	LED_P6x8Char(x+6,y,m+48);
??LED_PrintValueFP_4:
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  486 				LED_P6x8Char(x+12,y,i+48);
        ADDS     R2,R6,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  487 				LED_P6x8Char(x+18,y,j+48);
        ADDS     R2,R7,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  488 				LED_P6x8Char(x+24,y,k+48);
        ADDS     R2,R8,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  489 				break;	
//  490 	}
//  491  }
??LED_PrintValueFP_1:
        POP      {R4-R8,PC}       ;; return
//  492 //功能描述：将一个float型数转换成整数部分5位带小数和符号的数据并进行显示

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  493  void LED_PrintValueF(unsigned char x, unsigned char y, float data, unsigned char num)
//  494  {
LED_PrintValueF:
        PUSH     {R3-R11,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOV      R9,R2
//  495  	unsigned char l,m,i,j,k;  //万千百十个
//  496  	unsigned char databiti = 6; //整数位数
        MOVS     R7,#+6
//  497         unsigned int tempdataui = 0;
        MOVS     R4,#+0
//  498   	int tempdataii = (int)data; //整数部分
        MOV      R0,R9
        BL       __aeabi_f2iz
        MOVS     R4,R0
//  499  	long int tempdatalp = (long int)((data - (int)data)*10000); //取小数位后4位
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
//  500  	
//  501  	//整数部分显示
//  502  	if(data < 0.0000001)  LED_P6x8Char(x, y,'-'); 
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
//  503  	else LED_P6x8Char(x, y,'+');
??LED_PrintValueF_0:
        MOVS     R2,#+43
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  504 	if(tempdataii < 0)tempdataii = - tempdataii;  //去掉整数部分负号
??LED_PrintValueF_1:
        CMP      R4,#+0
        BPL.N    ??LED_PrintValueF_2
        RSBS     R4,R4,#+0
//  505 	tempdataui = tempdataii;
//  506  	l  = tempdataui/10000;
??LED_PrintValueF_2:
        MOVW     R0,#+10000
        UDIV     R0,R4,R0
//  507 	m= (tempdataui%10000)/1000;
        MOVW     R1,#+10000
        UDIV     R2,R4,R1
        MLS      R1,R1,R2,R4
        MOV      R2,#+1000
        UDIV     R9,R1,R2
//  508 	i = (tempdataui%1000)/100;
        MOV      R1,#+1000
        UDIV     R2,R4,R1
        MLS      R1,R1,R2,R4
        MOVS     R2,#+100
        UDIV     R10,R1,R2
//  509 	j = (tempdataui%100)/10;
        MOVS     R1,#+100
        UDIV     R2,R4,R1
        MLS      R1,R1,R2,R4
        MOVS     R2,#+10
        UDIV     R11,R1,R2
//  510 	k = tempdataui%10;
        MOVS     R1,#+10
        UDIV     R2,R4,R1
        MLS      R4,R1,R2,R4
//  511  	if (l != 0)  //五位
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LED_PrintValueF_3
//  512  	{
//  513  		LED_P6x8Char(x+6,y,l+48);
        ADDS     R2,R0,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  514  		LED_P6x8Char(x+12,y,m+48);
        ADDS     R2,R9,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  515 		LED_P6x8Char(x+18,y,i+48);
        ADDS     R2,R10,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  516 		LED_P6x8Char(x+24,y,j+48);
        ADDS     R2,R11,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  517 		LED_P6x8Char(x+30,y,k+48);
        ADDS     R2,R4,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+30
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
        B.N      ??LED_PrintValueF_4
//  518  	}
//  519  	else if(m != 0) //四位
??LED_PrintValueF_3:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??LED_PrintValueF_5
//  520  	{
//  521  		databiti = 5;
        MOVS     R7,#+5
//  522  		LED_P6x8Char(x+6,y,m+48);
        ADDS     R2,R9,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  523  		LED_P6x8Char(x+12,y,i+48);
        ADDS     R2,R10,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  524 		LED_P6x8Char(x+18,y,j+48);
        ADDS     R2,R11,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  525 		LED_P6x8Char(x+24,y,k+48);
        ADDS     R2,R4,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
        B.N      ??LED_PrintValueF_4
//  526  	}
//  527   	else if(i != 0) //三位
??LED_PrintValueF_5:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BEQ.N    ??LED_PrintValueF_6
//  528   	{
//  529   		databiti = 4;
        MOVS     R7,#+4
//  530   	 	LED_P6x8Char(x+6,y,i+48);
        ADDS     R2,R10,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  531  		LED_P6x8Char(x+12,y,j+48);
        ADDS     R2,R11,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  532 		LED_P6x8Char(x+18,y,k+48);
        ADDS     R2,R4,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
        B.N      ??LED_PrintValueF_4
//  533   	}
//  534   	else if(j != 0) //两位
??LED_PrintValueF_6:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BEQ.N    ??LED_PrintValueF_7
//  535   	{
//  536     		databiti = 3;	
        MOVS     R7,#+3
//  537   		LED_P6x8Char(x+6,y,j+48);
        ADDS     R2,R11,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  538  		LED_P6x8Char(x+12,y,k+48);
        ADDS     R2,R4,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
        B.N      ??LED_PrintValueF_4
//  539   	}
//  540 	else 	
//  541 	{
//  542 		databiti = 2;
??LED_PrintValueF_7:
        MOVS     R7,#+2
//  543 		LED_P6x8Char(x+6,y,k+48);
        ADDS     R2,R4,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R5,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LED_P6x8Char
//  544 	}	
//  545  	if(tempdatalp < 0)tempdatalp = - tempdatalp;	//去掉小数部分负号
??LED_PrintValueF_4:
        CMP      R8,#+0
        BPL.N    ??LED_PrintValueF_8
        RSBS     R8,R8,#+0
//  546 	switch(num)
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
//  547 	{
//  548 		case 0: break;
??LED_PrintValueF_9:
        B.N      ??LED_PrintValueF_14
//  549 		case 1:  LED_PrintValueFP(x + databiti * 6, y, (unsigned int)(tempdatalp / 1000),num);break;
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
//  550 		case 2:  LED_PrintValueFP(x + databiti * 6, y, (unsigned int)(tempdatalp / 100),num);break;
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
//  551 		case 3:  LED_PrintValueFP(x + databiti * 6, y, (unsigned int)(tempdatalp / 10),num);break;
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
//  552 		case 4:  LED_PrintValueFP(x + databiti * 6, y, (unsigned int)(tempdatalp),num);break;					
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
//  553 	}
//  554  }
??LED_PrintValueF_14:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  555 void display(void)
//  556 {     int16 Speed1=0;
display:
        PUSH     {R3-R5,LR}
        MOVS     R4,#+0
//  557       int16 Speed2=0;
        MOVS     R5,#+0
//  558      // Speed1=ch0_pulseacc;
//  559       //Speed2=ch1_pulseacc;
//  560       LED_P6x8Str(12,0,"Speed1:");
        LDR.N    R2,??DataTable7_5
        MOVS     R1,#+0
        MOVS     R0,#+12
        BL       LED_P6x8Str
//  561       LED_PrintValueC(75,0,Speed1);
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+0
        MOVS     R0,#+75
        BL       LED_PrintValueC
//  562       LED_P6x8Str(12,1,"Speed2:");
        LDR.N    R2,??DataTable7_6
        MOVS     R1,#+1
        MOVS     R0,#+12
        BL       LED_P6x8Str
//  563       LED_PrintValueI(75,1,(Speed2));
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        MOVS     R2,R5
        MOVS     R1,#+1
        MOVS     R0,#+75
        BL       LED_PrintValueI
//  564 } 
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
//  565 //float *par[2][6]={{&Speed_g_pre,&car_angle_kp,&car_angle_kd,&Speed_kp,&Speed_kd,&Speed_ki},{&CONTROL_ROW,&direction_P,&direction_D,&epc,&edc,&ratio}};

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//  566 char press=1;
press:
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//  567 char mode=0;
mode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//  568 char mode_pre;
mode_pre:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  569 int  page=0;
page:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  570 int show_fill;
show_fill:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  571 int cursor_line;
cursor_line:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  572 float place;
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
//  573 //void key_delay(int ms);
//  574 /*void keycontrol(void)
//  575 {
//  576  //模式1，参数调整 
//  577   if(mode==1)
//  578   {
//  579    if(press==1)
//  580    {
//  581     show_fill=1;
//  582     press=0;
//  583     if(page==0)
//  584     {
//  585       LED_Fill(0x00);
//  586       LED_P6x8Str(12,0,"Voltage:");
//  587       LED_PrintValueF(75,0,Voltage,3);
//  588       LED_P6x8Str(12,1,"Speed:");
//  589       LED_PrintValueF(75,1,Speed_g_pre,0);
//  590       LED_P6x8Str(12,2,"angle_p:");
//  591       LED_PrintValueF(75,2,car_angle_kp,0);
//  592       LED_P6x8Str(12,3,"angle_d:");
//  593       LED_PrintValueF(75,3,car_angle_kd,1);
//  594       LED_P6x8Str(12,4,"Speed_kp:");
//  595       LED_PrintValueF(75,4,Speed_kp,1);
//  596       LED_P6x8Str(12,5,"Speed_kd:");
//  597       LED_PrintValueF(75,5,Speed_kd,2);
//  598       LED_P6x8Str(12,6,"Speed_ki:");
//  599       LED_PrintValueF(75,6,Speed_ki,4);
//  600       //LED_P6x8Str(12,6,"quan:");
//  601       //LED_PrintValueF(75,6,quan,2);
//  602     }
//  603     if(page==1)
//  604     {
//  605       LED_Fill(0x00);
//  606       LED_P6x8Str(12,0,"Voltage:");
//  607       LED_PrintValueF(75,0,Voltage,3);
//  608       LED_P6x8Str(12,1,"Row:");
//  609       LED_PrintValueI(75,1,CONTROL_ROW);
//  610       LED_P6x8Str(12,2,"dir_P:");
//  611       LED_PrintValueF(75,2,direction_P,0);
//  612       LED_P6x8Str(12,3,"dir_D:");
//  613       LED_PrintValueF(75,3,direction_D,3);
//  614       LED_P6x8Str(12,4,"epc:");
//  615       LED_PrintValueF(75,4,epc,3);
//  616       LED_P6x8Str(12,5,"edc:");
//  617       LED_PrintValueF(75,5,edc,3);
//  618       LED_P6x8Str(12,6,"ratio:");
//  619       LED_PrintValueF(75,6,ratio,2);
//  620     }
//  621       LED_P6x8Str(0,cursor_line,"_");
//  622    }
//  623     if(page==2)
//  624     { 
//  625       if(show_fill)
//  626       { 
//  627         LED_Fill(0x00);
//  628         show_fill=0;
//  629       }
//  630       if(sampleover)
//  631       {
//  632         disable_irq(PORTB_IRQn);
//  633         row_DMA_flag=0;
//  634         sampleover=0;
//  635         //解压图像
//  636         img_extract();
//  637         search();
//  638         Centre_Calculate();
//  639         Centre_Err_Calculate();
//  640         //清PORTB中断标志
//  641         LPLD_GPIO_ClearIntFlag(PORTB);      
//  642         enable_irq(PORTB_IRQn);
//  643       }
//  644      //图像显示
//  645       uint8 i,j,data;
//  646       int temp,cnt;
//  647       for(j=0;j<ROW;j++)
//  648       {  
//  649         if(line_storage_bool[j][M]) Image[j][(int)Mid_storage[j]+39]=0;
//  650         if(line_storage_bool[j][L]) Image[j][(int)line_storage[j][L]+2]=0;
//  651         if(line_storage_bool[j][R]) Image[j][(int)line_storage[j][R]-2]=0;
//  652       }
//  653       for(j=0;j<8;j++)
//  654      { 
//  655        LED_WrCmd(0xb0+j);
//  656        LED_WrCmd(0x01);
//  657        LED_WrCmd(0x10);
//  658        for(i=0;i<80;i++)
//  659        { 
//  660          temp=0; 
//  661          for(cnt=7;cnt>=0;cnt--)
//  662          {  
//  663            temp|=Image[j*8+cnt][i]/255; 
//  664            temp=temp<<1;  
//  665          }
//  666          data=temp>>1;
//  667          LED_WrDat(data);
//  668        }
//  669      }     
//  670     }
//  671     if(DN)
//  672     {
//  673       key_delay(20);
//  674       if(DN)
//  675       { 
//  676         press=1;
//  677         place=1;
//  678         cursor_line++; 
//  679         while(DN);
//  680       }
//  681     }        
//  682     if(UP)
//  683     {
//  684       key_delay(20);
//  685       if(UP)
//  686       {
//  687         press=1;
//  688         place=1;
//  689         cursor_line--; 
//  690         while(UP);
//  691       }     
//  692     }
//  693     if(cursor_line<0)
//  694       cursor_line=7;
//  695     if(cursor_line>7)
//  696       cursor_line=0;
//  697     if(cursor_line==0)
//  698     {
//  699      if(RT)
//  700      {
//  701        key_delay(20);
//  702        if(RT)
//  703        {
//  704          press=1;
//  705          page++;
//  706          while(RT);
//  707        }
//  708      } 
//  709       if(LT)
//  710      {
//  711        key_delay(20);
//  712        if(LT)
//  713        {
//  714          press=1;
//  715          page--;
//  716          while(LT);
//  717        }
//  718      }
//  719      if(page<0) page=2;
//  720      if(page>2) page=0;
//  721    }
//  722    if(cursor_line)
//  723    {
//  724      if(ESC)
//  725      {
//  726        key_delay(20);
//  727        if(ESC)
//  728        {
//  729          press=1;
//  730          place*=10; 
//  731          while(ESC);
//  732        }
//  733      }
//  734      if(OK)
//  735      {
//  736        key_delay(20);
//  737        if(OK)
//  738        {
//  739          press=1;
//  740          place*=0.1; 
//  741          while(OK);
//  742        }
//  743      }
//  744      if(place>1000) place=1000;
//  745      if(place<0.001) place=0.001;    
//  746      if(RT)
//  747      {
//  748        key_delay(20);
//  749        if(RT)
//  750        {
//  751          press=1;
//  752          *par[page][cursor_line-1]=*par[page][cursor_line-1]+place;
//  753          while(RT);
//  754        }
//  755      }
//  756      if(LT)
//  757      {
//  758        key_delay(20);
//  759        if(LT)
//  760        {
//  761          press=1;
//  762          *par[page][cursor_line-1]=*par[page][cursor_line-1]-place;
//  763          while(LT);
//  764        }
//  765      }
//  766      
//  767    }
//  768   }
//  769 }
//  770 void key_delay(int ms)
//  771 {                         
//  772     int a;
//  773     while(ms)
//  774     {
//  775        a=1000;
//  776        while(a--);
//  777        ms--;
//  778     }
//  779     return;
//  780 }
//  781 */
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
