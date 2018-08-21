///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      23/Aug/2017  10:34:55
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\botton.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\botton.c
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
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List\botton.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LED_Fill
        EXTERN LED_Init
        EXTERN LED_P6x8Char
        EXTERN LED_P6x8Str
        EXTERN LED_PrintValueFP
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN L_R_judge
        EXTERN SetCenterX
        EXTERN __aeabi_memcpy4
        EXTERN acce
        EXTERN flash_config
        EXTERN highspeed
        EXTERN lowspeed
        EXTERN lph1
        EXTERN lph2
        EXTERN lph3
        EXTERN lph4
        EXTERN lph5
        EXTERN lph6
        EXTERN lph7
        EXTERN real_pointx
        EXTERN real_pointy
        EXTERN rol
        EXTERN rph1
        EXTERN rph2
        EXTERN rph3
        EXTERN rph4
        EXTERN rph5
        EXTERN rph6
        EXTERN rph7
        EXTERN sprintf
        EXTERN turnspeed

        PUBLIC Course
        PUBLIC KeyScan
        PUBLIC Key_DataDown
        PUBLIC Key_DataUp
        PUBLIC Key_Down
        PUBLIC Key_Process
        PUBLIC Key_Up
        PUBLIC Key_delay
        PUBLIC LED_LIGHT
        PUBLIC PageInit
        PUBLIC PageNum
        PUBLIC SaveData
        PUBLIC ScreenData
        PUBLIC ScreenStr
        PUBLIC botton_dial_switch_gpio_init
        PUBLIC botton_gpio_init
        PUBLIC clear_screen_number
        PUBLIC course_judge
        PUBLIC delay
        PUBLIC dial_switch_init
        PUBLIC ph_DataDown
        PUBLIC ph_DataUp
        PUBLIC ph_course
        PUBLIC pianhang_config

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\botton.c
//    1 
//    2 #include "common.h"
//    3 #include "botton.h"
//    4 #include "oled.h"
//    5 #include "timer.h"
//    6 #include "camera_test.h" 
//    7 #include "myflash.h"
//    8 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    9 GPIO_InitTypeDef botton_gpio_init;
botton_gpio_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 GPIO_InitTypeDef dial_switch_init;
dial_switch_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 GPIO_InitTypeDef LED_LIGHT;
LED_LIGHT:
        DS8 20
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13 int clear_screen_number=0;
clear_screen_number:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   14 int course_judge=0;
course_judge:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   15 signed char Course = 0;//对一页中的变量进行指定
Course:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   16 signed char PageNum = 0x00;//页数变量
PageNum:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   17 int ScreenData[5][16];//表示第几页第几个变量的值
ScreenData:
        DS8 320

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   18 int8 ScreenStr[5][16][30];//第一维表示页数，第二维表示一页中的变量，第三维表示每一个变量的字符串
ScreenStr:
        DS8 2400
//   19 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   20 signed char ph_course;  //用于偏航调参行标志
ph_course:
        DS8 1
//   21 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 void botton_dial_switch_gpio_init(void)
//   23 {
botton_dial_switch_gpio_init:
        PUSH     {R7,LR}
//   24 
//   25    botton_gpio_init.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable2  ;; 0x400ff100
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   26    botton_gpio_init.GPIO_Pins = GPIO_Pin9;
        MOV      R0,#+512
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+4]
//   27    botton_gpio_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_1
        STRB     R0,[R1, #+12]
//   28    botton_gpio_init.GPIO_PinControl =INPUT_PULL_UP;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+8]
//   29    LPLD_GPIO_Init(botton_gpio_init);
        LDR.W    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   30    
//   31    botton_gpio_init.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable2  ;; 0x400ff100
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   32    botton_gpio_init.GPIO_Pins = GPIO_Pin8;
        MOV      R0,#+256
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+4]
//   33    botton_gpio_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_1
        STRB     R0,[R1, #+12]
//   34    botton_gpio_init.GPIO_PinControl =INPUT_PULL_UP;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+8]
//   35    LPLD_GPIO_Init(botton_gpio_init);
        LDR.W    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   36    
//   37    botton_gpio_init.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable2  ;; 0x400ff100
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   38    botton_gpio_init.GPIO_Pins = GPIO_Pin7;
        MOVS     R0,#+128
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+4]
//   39    botton_gpio_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_1
        STRB     R0,[R1, #+12]
//   40    botton_gpio_init.GPIO_PinControl =INPUT_PULL_UP;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+8]
//   41    LPLD_GPIO_Init(botton_gpio_init);
        LDR.W    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   42    
//   43    botton_gpio_init.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable2  ;; 0x400ff100
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   44    botton_gpio_init.GPIO_Pins = GPIO_Pin6;
        MOVS     R0,#+64
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+4]
//   45    botton_gpio_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_1
        STRB     R0,[R1, #+12]
//   46    botton_gpio_init.GPIO_PinControl =INPUT_PULL_UP;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+8]
//   47    LPLD_GPIO_Init(botton_gpio_init);
        LDR.W    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   48    
//   49    dial_switch_init.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable2  ;; 0x400ff100
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+0]
//   50    dial_switch_init.GPIO_Pins = GPIO_Pin10;
        MOV      R0,#+1024
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+4]
//   51    dial_switch_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3
        STRB     R0,[R1, #+12]
//   52    dial_switch_init.GPIO_PinControl =INPUT_PULL_UP;//IRQC_DMAFA |INPUT_PULL_UP;IRQC_FA|
        MOVS     R0,#+3
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+8]
//   53    LPLD_GPIO_Init(dial_switch_init);
        LDR.W    R1,??DataTable3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   54    
//   55    dial_switch_init.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable2  ;; 0x400ff100
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+0]
//   56    dial_switch_init.GPIO_Pins = GPIO_Pin11;
        MOV      R0,#+2048
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+4]
//   57    dial_switch_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3
        STRB     R0,[R1, #+12]
//   58    dial_switch_init.GPIO_PinControl =INPUT_PULL_UP;//IRQC_DMAFA |INPUT_PULL_UP;IRQC_FA|
        MOVS     R0,#+3
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+8]
//   59    LPLD_GPIO_Init(dial_switch_init);
        LDR.W    R1,??DataTable3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   60    
//   61    
//   62    //---------点亮灯作提示------------------
//   63    LED_LIGHT.GPIO_PTx=PTA;
        LDR.W    R0,??DataTable3_1  ;; 0x400ff000
        LDR.W    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   64    LED_LIGHT.GPIO_Pins = GPIO_Pin25|GPIO_Pin26|GPIO_Pin27|GPIO_Pin28;//A25接蜂鸣器，其余接三色灯
        MOVS     R0,#+503316480
        LDR.W    R1,??DataTable3_2
        STR      R0,[R1, #+4]
//   65    LED_LIGHT.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_2
        STRB     R0,[R1, #+12]
//   66    LPLD_GPIO_Init(LED_LIGHT);
        LDR.W    R1,??DataTable3_2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   67    LPLD_GPIO_Output_b(PTA, 26, 1);
        MOVS     R2,#+1
        MOVS     R1,#+26
        LDR.W    R0,??DataTable3_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   68    LPLD_GPIO_Output_b(PTA, 27, 1);
        MOVS     R2,#+1
        MOVS     R1,#+27
        LDR.W    R0,??DataTable3_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   69    LPLD_GPIO_Output_b(PTA, 28, 1);
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.W    R0,??DataTable3_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   70    BUZZER_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+25
        LDR.W    R0,??DataTable3_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   71 }
        POP      {R0,PC}          ;; return
//   72 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   73 void Key_delay()
//   74 {
//   75 	uint16 i, n;
//   76 	for (i = 0; i < 19000; i++)
Key_delay:
        MOVS     R0,#+0
        B.N      ??Key_delay_0
//   77 	{
//   78 		for (n = 0; n < 50; n++)
//   79 		{
//   80 			asm("nop");
??Key_delay_1:
        nop
//   81 		}
        ADDS     R1,R1,#+1
??Key_delay_2:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+50
        BLT.N    ??Key_delay_1
        ADDS     R0,R0,#+1
??Key_delay_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+19000
        CMP      R0,R1
        BGE.N    ??Key_delay_3
        MOVS     R1,#+0
        B.N      ??Key_delay_2
//   82 	}
//   83 }
??Key_delay_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   84 void delay(int n)
//   85 {
//   86   uint16 i, j;
//   87   for(i=0;i<60000;i++)
delay:
        MOVS     R1,#+0
        B.N      ??delay_0
//   88   {
//   89     for(j=0;j<n;j++)
//   90     {
//   91       asm("nop");
??delay_1:
        nop
//   92     }
        ADDS     R2,R2,#+1
??delay_2:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,R0
        BLT.N    ??delay_1
        ADDS     R1,R1,#+1
??delay_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+60000
        CMP      R1,R2
        BGE.N    ??delay_3
        MOVS     R2,#+0
        B.N      ??delay_2
//   93   }
//   94 }
??delay_3:
        BX       LR               ;; return
//   95 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   96 unsigned char KeyScan(void)
//   97 {
KeyScan:
        PUSH     {R7,LR}
//   98   if (PTE10_I == 0)
        LDR.W    R0,??DataTable3_3  ;; 0x43fe2228
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??KeyScan_0
//   99   {
//  100     return 5;
        MOVS     R0,#+5
        B.N      ??KeyScan_1
//  101   }
//  102   else if (PTE11_I == 0)//6
??KeyScan_0:
        LDR.W    R0,??DataTable3_4  ;; 0x43fe222c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??KeyScan_2
//  103   {
//  104     Key_delay();
        BL       Key_delay
//  105     if (PTE11_I == 0)
        LDR.W    R0,??DataTable3_4  ;; 0x43fe222c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??KeyScan_3
//  106     {
//  107       return 6;
        MOVS     R0,#+6
        B.N      ??KeyScan_1
//  108     }
//  109   }
//  110   else if (PTE6_I == 0)//6
??KeyScan_2:
        LDR.W    R0,??DataTable3_5  ;; 0x43fe2218
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??KeyScan_4
//  111   {
//  112     Key_delay();
        BL       Key_delay
//  113     if (PTE6_I == 0)
        LDR.W    R0,??DataTable3_5  ;; 0x43fe2218
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??KeyScan_3
//  114     {
//  115       return 4;
        MOVS     R0,#+4
        B.N      ??KeyScan_1
//  116     }
//  117   }
//  118   
//  119   else if (PTE7_I == 0)//1
??KeyScan_4:
        LDR.W    R0,??DataTable3_6  ;; 0x43fe221c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??KeyScan_5
//  120   {
//  121     Key_delay();
        BL       Key_delay
//  122     if (PTE7_I == 0)
        LDR.W    R0,??DataTable3_6  ;; 0x43fe221c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??KeyScan_3
//  123     {
//  124       return 3;
        MOVS     R0,#+3
        B.N      ??KeyScan_1
//  125     }
//  126   }
//  127   
//  128   else if (PTE8_I == 0)
??KeyScan_5:
        LDR.W    R0,??DataTable3_7  ;; 0x43fe2220
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??KeyScan_6
//  129   {
//  130     Key_delay();
        BL       Key_delay
//  131     if (PTE8_I == 0)
        LDR.W    R0,??DataTable3_7  ;; 0x43fe2220
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??KeyScan_3
//  132     {
//  133       return 1;
        MOVS     R0,#+1
        B.N      ??KeyScan_1
//  134     }
//  135   }
//  136   
//  137   else if (PTE9_I == 0)
??KeyScan_6:
        LDR.W    R0,??DataTable4  ;; 0x43fe2224
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??KeyScan_3
//  138   {
//  139     Key_delay();
        BL       Key_delay
//  140     if (PTE9_I == 0)
        LDR.W    R0,??DataTable4  ;; 0x43fe2224
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??KeyScan_3
//  141     {
//  142       return 2;
        MOVS     R0,#+2
        B.N      ??KeyScan_1
//  143     }
//  144   }
//  145   
//  146   return 10;
??KeyScan_3:
        MOVS     R0,#+10
??KeyScan_1:
        POP      {R1,PC}          ;; return
//  147 }
//  148 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 void SaveData(void)
//  150 {
//  151   
//  152   highspeed =(int)ScreenData[0][0];
SaveData:
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_9
        STRH     R0,[R1, #+0]
//  153   lowspeed=(int)ScreenData[0][1];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable3_10
        STRH     R0,[R1, #+0]
//  154   turnspeed=(int)ScreenData[0][2];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable3_11
        STRH     R0,[R1, #+0]
//  155   acce=(int)ScreenData[0][3];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable3_12
        STRH     R0,[R1, #+0]
//  156   
//  157   
//  158   L_R_judge[0][0] = (int)ScreenData[1][0];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+64]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+0]
//  159   L_R_judge[0][1] = (int)ScreenData[1][1];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+68]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+1]
//  160   L_R_judge[1][0] = (int)ScreenData[1][2];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+72]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+2]
//  161   L_R_judge[1][1] = (int)ScreenData[1][3];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+76]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+3]
//  162   L_R_judge[2][0] = (int)ScreenData[1][4];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+80]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+4]
//  163   L_R_judge[2][1] = (int)ScreenData[1][5];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+84]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+5]
//  164   L_R_judge[3][0] = (int)ScreenData[1][6];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+88]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+6]
//  165   L_R_judge[3][1] = (int)ScreenData[1][7];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+92]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+7]
//  166   L_R_judge[4][0] = (int)ScreenData[1][8];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+96]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+8]
//  167   L_R_judge[4][1] = (int)ScreenData[1][9];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+100]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+9]
//  168   L_R_judge[5][0] = (int)ScreenData[1][10];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+104]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+10]
//  169   L_R_judge[5][1] = (int)ScreenData[1][11];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+108]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+11]
//  170   L_R_judge[6][0] = (int)ScreenData[1][12];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+112]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+12]
//  171   L_R_judge[6][1] = (int)ScreenData[1][13];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+116]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+13]
//  172   L_R_judge[7][0] = (int)ScreenData[1][14];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+120]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+14]
//  173   L_R_judge[7][1] = (int)ScreenData[1][15];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+124]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+15]
//  174   
//  175   L_R_judge[8][0] = (int)ScreenData[2][0];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+128]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+16]
//  176   L_R_judge[8][1] = (int)ScreenData[2][1];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+132]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+17]
//  177   L_R_judge[9][0] = (int)ScreenData[2][2];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+136]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+18]
//  178   L_R_judge[9][1] = (int)ScreenData[2][3];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+140]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+19]
//  179   L_R_judge[10][0] = (int)ScreenData[2][4];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+144]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+20]
//  180   L_R_judge[10][1] = (int)ScreenData[2][5];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+148]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+21]
//  181   L_R_judge[11][0] = (int)ScreenData[2][6];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+152]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+22]
//  182   L_R_judge[11][1] = (int)ScreenData[2][7];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+156]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+23]
//  183   L_R_judge[12][0] = (int)ScreenData[2][8];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+160]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+24]
//  184   L_R_judge[12][1] = (int)ScreenData[2][9];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+164]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+25]
//  185   L_R_judge[13][0] = (int)ScreenData[2][10];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+168]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+26]
//  186   L_R_judge[13][1] = (int)ScreenData[2][11];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+172]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+27]
//  187   L_R_judge[14][0] = (int)ScreenData[2][12];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+176]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+28]
//  188   L_R_judge[14][1] = (int)ScreenData[2][13];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+180]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+29]
//  189   L_R_judge[15][0] = (int)ScreenData[2][14];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+184]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+30]
//  190   L_R_judge[15][1] = (int)ScreenData[2][15];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+188]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+31]
//  191   
//  192    L_R_judge[16][0] = (int)ScreenData[3][0];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+192]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+32]
//  193   L_R_judge[16][1] = (int)ScreenData[3][1];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+196]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+33]
//  194   L_R_judge[17][0] = (int)ScreenData[3][2];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+200]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+34]
//  195   L_R_judge[17][1] = (int)ScreenData[3][3];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+204]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+35]
//  196   L_R_judge[18][0] = (int)ScreenData[3][4];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+208]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+36]
//  197   L_R_judge[18][1] = (int)ScreenData[3][5];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+212]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+37]
//  198   L_R_judge[19][0] = (int)ScreenData[3][6];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+216]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+38]
//  199   L_R_judge[19][1] = (int)ScreenData[3][7];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+220]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+39]
//  200   L_R_judge[20][0] = (int)ScreenData[3][8];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+224]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+40]
//  201   L_R_judge[20][1] = (int)ScreenData[3][9];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+228]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+41]
//  202   L_R_judge[21][0] = (int)ScreenData[3][10];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+232]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+42]
//  203   L_R_judge[21][1] = (int)ScreenData[3][11];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+236]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+43]
//  204   L_R_judge[22][0] = (int)ScreenData[3][12];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+240]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+44]
//  205   L_R_judge[22][1] = (int)ScreenData[2][13];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+180]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+45]
//  206   L_R_judge[23][0] = (int)ScreenData[3][14];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+248]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+46]
//  207   L_R_judge[23][1] = (int)ScreenData[3][15];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+252]
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+47]
//  208   
//  209   
//  210 
//  211 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     botton_gpio_init

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  212 void PageInit(signed char sPageNum)
//  213 {
PageInit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  214   //写所有显示变量字符名称（三维数组赋初值）
//  215 
//  216 	int i;
//  217 	PageNum = sPageNum;//保存页码
        LDR.W    R0,??DataTable4_2
        STRB     R4,[R0, #+0]
//  218         //第一页
//  219         sprintf(ScreenStr[0][0], "HIGH_SPEED");  
        LDR.W    R1,??DataTable4_3
        LDR.W    R0,??DataTable4_4
        BL       sprintf
//  220         sprintf(ScreenStr[0][1], "LOW_SPEED");
        LDR.W    R1,??DataTable4_5
        LDR.W    R0,??DataTable4_6
        BL       sprintf
//  221         sprintf(ScreenStr[0][2], "turnspeed");
        LDR.W    R1,??DataTable4_7
        LDR.W    R0,??DataTable4_8
        BL       sprintf
//  222         sprintf(ScreenStr[0][3], "ACCE");
        LDR.W    R1,??DataTable4_9
        LDR.W    R0,??DataTable4_10
        BL       sprintf
//  223         
//  224         
//  225         //第二页
//  226 	sprintf(ScreenStr[1][0], "light_1");//期望点
        LDR.W    R1,??DataTable4_11
        LDR.W    R0,??DataTable4_12
        BL       sprintf
//  227         sprintf(ScreenStr[1][1], "light_2");//设定速度
        LDR.W    R1,??DataTable4_13
        LDR.W    R0,??DataTable4_14
        BL       sprintf
//  228         sprintf(ScreenStr[1][2], "light_3");//阈值
        LDR.W    R1,??DataTable4_15
        LDR.W    R0,??DataTable4_16
        BL       sprintf
//  229 	sprintf(ScreenStr[1][3], "light_4");//角度太大的速度
        LDR.W    R1,??DataTable4_17
        LDR.W    R0,??DataTable4_18
        BL       sprintf
//  230 	sprintf(ScreenStr[1][4], "light_5");//近距离的期望点
        LDR.W    R1,??DataTable4_19
        LDR.W    R0,??DataTable4_20
        BL       sprintf
//  231         sprintf(ScreenStr[1][5], "light_6");
        LDR.W    R1,??DataTable4_21
        LDR.W    R0,??DataTable4_22
        BL       sprintf
//  232         sprintf(ScreenStr[1][6], "light_7");
        LDR.W    R1,??DataTable4_23
        LDR.W    R0,??DataTable4_24
        BL       sprintf
//  233         sprintf(ScreenStr[1][7], "light_8");
        LDR.W    R1,??DataTable4_25
        LDR.W    R0,??DataTable4_26
        BL       sprintf
//  234         //第三页
//  235         sprintf(ScreenStr[2][0], "light_9");//期望点
        LDR.W    R1,??DataTable4_27
        LDR.W    R0,??DataTable4_28
        BL       sprintf
//  236         sprintf(ScreenStr[2][1], "light_10");//设定速度
        LDR.W    R1,??DataTable4_29
        LDR.W    R0,??DataTable4_30
        BL       sprintf
//  237         sprintf(ScreenStr[2][2], "light_11");//阈值
        LDR.W    R1,??DataTable4_31
        LDR.W    R0,??DataTable4_32
        BL       sprintf
//  238 	sprintf(ScreenStr[2][3], "light_12");//角度太大的速度
        LDR.W    R1,??DataTable4_33
        LDR.W    R0,??DataTable4_34
        BL       sprintf
//  239 	sprintf(ScreenStr[2][4], "light_13");//近距离的期望点
        LDR.W    R1,??DataTable4_35
        LDR.W    R0,??DataTable4_36
        BL       sprintf
//  240         sprintf(ScreenStr[2][5], "light_14");
        LDR.W    R1,??DataTable4_37
        LDR.W    R0,??DataTable4_38
        BL       sprintf
//  241         sprintf(ScreenStr[2][6], "light_15");
        LDR.W    R1,??DataTable4_39
        LDR.W    R0,??DataTable4_40
        BL       sprintf
//  242         sprintf(ScreenStr[2][7], "light_16");
        LDR.W    R1,??DataTable4_41
        LDR.W    R0,??DataTable4_42
        BL       sprintf
//  243         //第四页
//  244         sprintf(ScreenStr[3][0], "light_17");//期望点
        LDR.W    R1,??DataTable4_43
        LDR.W    R0,??DataTable4_44
        BL       sprintf
//  245         sprintf(ScreenStr[3][1], "light_18");//设定速度
        LDR.W    R1,??DataTable5
        LDR.W    R0,??DataTable5_1
        BL       sprintf
//  246         sprintf(ScreenStr[3][2], "light_19");//阈值
        LDR.W    R1,??DataTable5_2
        LDR.W    R0,??DataTable5_3
        BL       sprintf
//  247 	sprintf(ScreenStr[3][3], "light_20");//角度太大的速度
        LDR.W    R1,??DataTable5_4
        LDR.W    R0,??DataTable5_5
        BL       sprintf
//  248 	sprintf(ScreenStr[3][4], "light_21");//近距离的期望点
        LDR.W    R1,??DataTable5_6
        LDR.W    R0,??DataTable5_7
        BL       sprintf
//  249         sprintf(ScreenStr[3][5], "light_22");
        LDR.W    R1,??DataTable5_8
        LDR.W    R0,??DataTable5_9
        BL       sprintf
//  250         sprintf(ScreenStr[3][6], "light_23");
        LDR.W    R1,??DataTable5_10
        LDR.W    R0,??DataTable5_11
        BL       sprintf
//  251         sprintf(ScreenStr[3][7], "light_24");
        LDR.W    R1,??DataTable5_12
        LDR.W    R0,??DataTable5_13
        BL       sprintf
//  252 
//  253         //第一页变量赋初值
//  254         ScreenData[0][0] = (int)highspeed;//对应变量ScreenStr[0][0], "HIGH_SPEED"的值，下面一次类推
        LDR.W    R0,??DataTable3_9
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+0]
//  255         ScreenData[0][1] = (int)lowspeed;
        LDR.W    R0,??DataTable3_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+4]
//  256         ScreenData[0][2] = (int)turnspeed;
        LDR.W    R0,??DataTable3_11
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+8]
//  257         ScreenData[0][3] = (int)acce;
        LDR.W    R0,??DataTable3_12
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+12]
//  258         
//  259         //第二页变量赋初值
//  260         ScreenData[1][0]=L_R_judge[0][0];//对应变量ScreenStr[1][0], "light_1"
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+64]
//  261         ScreenData[1][1]=L_R_judge[0][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+68]
//  262         ScreenData[1][2]=L_R_judge[1][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+2]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+72]
//  263         ScreenData[1][3]=L_R_judge[1][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+3]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+76]
//  264         ScreenData[1][4]=L_R_judge[2][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+4]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+80]
//  265         ScreenData[1][5]=L_R_judge[2][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+5]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+84]
//  266         ScreenData[1][6]=L_R_judge[3][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+6]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+88]
//  267         ScreenData[1][7]=L_R_judge[3][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+7]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+92]
//  268         ScreenData[1][8]=L_R_judge[4][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+8]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+96]
//  269         ScreenData[1][9]=L_R_judge[4][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+9]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+100]
//  270         ScreenData[1][10]=L_R_judge[5][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+10]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+104]
//  271         ScreenData[1][11]=L_R_judge[5][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+11]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+108]
//  272         ScreenData[1][12]=L_R_judge[6][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+12]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+112]
//  273         ScreenData[1][13]=L_R_judge[6][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+13]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+116]
//  274         ScreenData[1][14]=L_R_judge[7][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+14]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+120]
//  275         ScreenData[1][15]=L_R_judge[7][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+15]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+124]
//  276         
//  277         ScreenData[2][0]=L_R_judge[8][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+16]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+128]
//  278         ScreenData[2][1]=L_R_judge[8][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+17]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+132]
//  279         ScreenData[2][2]=L_R_judge[9][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+18]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+136]
//  280         ScreenData[2][3]=L_R_judge[9][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+19]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+140]
//  281         ScreenData[2][4]=L_R_judge[10][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+20]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+144]
//  282         ScreenData[2][5]=L_R_judge[10][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+21]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+148]
//  283         ScreenData[2][6]=L_R_judge[11][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+22]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+152]
//  284         ScreenData[2][7]=L_R_judge[11][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+23]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+156]
//  285         ScreenData[2][8]=L_R_judge[12][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+24]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+160]
//  286         ScreenData[2][9]=L_R_judge[12][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+25]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+164]
//  287         ScreenData[2][10]=L_R_judge[13][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+26]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+168]
//  288         ScreenData[2][11]=L_R_judge[13][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+27]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+172]
//  289         ScreenData[2][12]=L_R_judge[14][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+28]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+176]
//  290         ScreenData[2][13]=L_R_judge[14][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+29]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+180]
//  291         ScreenData[2][14]=L_R_judge[15][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+30]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+184]
//  292         ScreenData[2][15]=L_R_judge[15][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+31]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+188]
//  293         
//  294         ScreenData[3][0]=L_R_judge[16][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+32]
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+192]
//  295         ScreenData[3][1]=L_R_judge[16][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+33]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+196]
//  296         ScreenData[3][2]=L_R_judge[17][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+34]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+200]
//  297         ScreenData[3][3]=L_R_judge[17][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+35]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+204]
//  298         ScreenData[3][4]=L_R_judge[18][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+36]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+208]
//  299         ScreenData[3][5]=L_R_judge[18][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+37]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+212]
//  300         ScreenData[3][6]=L_R_judge[19][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+38]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+216]
//  301         ScreenData[3][7]=L_R_judge[19][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+39]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+220]
//  302         ScreenData[3][8]=L_R_judge[20][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+40]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+224]
//  303         ScreenData[3][9]=L_R_judge[20][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+41]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+228]
//  304         ScreenData[3][10]=L_R_judge[21][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+42]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+232]
//  305         ScreenData[3][11]=L_R_judge[21][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+43]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+236]
//  306         ScreenData[3][12]=L_R_judge[22][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+44]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+240]
//  307         ScreenData[3][13]=L_R_judge[22][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+45]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+244]
//  308         ScreenData[3][14]=L_R_judge[23][0];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+46]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+248]
//  309         ScreenData[3][15]=L_R_judge[23][1];
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+47]
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+252]
//  310         	
//  311 	Key_delay();//延时
        BL       Key_delay
//  312 	LED_Init();//oled初始化
        BL       LED_Init
//  313 	Key_delay();
        BL       Key_delay
//  314 	LED_Fill(0);//清屏
        MOVS     R0,#+0
        BL       LED_Fill
//  315 	Key_delay();
        BL       Key_delay
//  316         if (sPageNum == 0) //第一页显示判断
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??PageInit_0
//  317 	{
//  318           for (i = 0; i < 4; i++)
        MOVS     R5,#+0
??PageInit_1:
        CMP      R5,#+4
        BGE.W    ??PageInit_2
//  319           {
//  320             LED_P6x8Str(8, i, (unsigned char*)ScreenStr[0][i]); //显示变量字符串
        LDR.W    R0,??DataTable4_4
        MOVS     R1,#+30
        MLA      R2,R1,R5,R0
        MOVS     R0,R5
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  321             LED_PrintValueFP(70, i, ScreenData[0][i], 3);//显示变量对应初值
        MOVS     R3,#+3
        LDR.N    R0,??DataTable3_8
        LDR      R2,[R0, R5, LSL #+2]
        MOVS     R0,R5
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  322           }
        ADDS     R5,R5,#+1
        B.N      ??PageInit_1
//  323         }
//  324 	else if (sPageNum == 1)//第二页显示判断，第二页变量分两列显示
??PageInit_0:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??PageInit_3
//  325 	{
//  326           for (i = 0; i < 16; i++)
        MOVS     R5,#+0
        B.N      ??PageInit_4
//  327           {
//  328             if(i%2==0)
//  329             {
//  330               LED_P6x8Str(0, i/2, (unsigned char*)ScreenStr[1][i/2]);
//  331               LED_PrintValueFP(55, i/2, ScreenData[1][i], 1);
//  332             }
//  333             else 
//  334             {
//  335               LED_PrintValueFP(90, i/2, ScreenData[1][i], 1);
??PageInit_5:
        MOVS     R3,#+1
        LDR.N    R0,??DataTable3_8
        ADDS     R0,R0,R5, LSL #+2
        LDR      R2,[R0, #+64]
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+90
        BL       LED_PrintValueFP
//  336             }
??PageInit_6:
        ADDS     R5,R5,#+1
??PageInit_4:
        CMP      R5,#+16
        BGE.W    ??PageInit_2
        MOVS     R0,#+2
        SDIV     R1,R5,R0
        MLS      R1,R1,R0,R5
        CMP      R1,#+0
        BNE.N    ??PageInit_5
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,#+30
        LDR.W    R2,??DataTable4_4
        MLA      R0,R1,R0,R2
        ADDS     R2,R0,#+480
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Str
        MOVS     R3,#+1
        LDR.N    R0,??DataTable3_8
        ADDS     R0,R0,R5, LSL #+2
        LDR      R2,[R0, #+64]
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+55
        BL       LED_PrintValueFP
        B.N      ??PageInit_6
//  337             
//  338           }
//  339 	}
//  340 	else if (sPageNum == 2)//第三页显示判断
??PageInit_3:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??PageInit_7
//  341 	{
//  342           for (i = 0; i < 16; i++)
        MOVS     R5,#+0
        B.N      ??PageInit_8
//  343           {
//  344             if(i%2==0)
//  345             {
//  346               LED_P6x8Str(0, i/2, (unsigned char*)ScreenStr[2][i/2]);
//  347               LED_PrintValueFP(55, i/2, ScreenData[2][i], 1);
//  348             }
//  349             else
//  350             {
//  351               
//  352               LED_PrintValueFP(90, i/2, ScreenData[2][i], 1);}
??PageInit_9:
        MOVS     R3,#+1
        LDR.N    R0,??DataTable3_8
        ADDS     R0,R0,R5, LSL #+2
        LDR      R2,[R0, #+128]
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+90
        BL       LED_PrintValueFP
??PageInit_10:
        ADDS     R5,R5,#+1
??PageInit_8:
        CMP      R5,#+16
        BGE.N    ??PageInit_2
        MOVS     R0,#+2
        SDIV     R1,R5,R0
        MLS      R1,R1,R0,R5
        CMP      R1,#+0
        BNE.N    ??PageInit_9
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,#+30
        LDR.W    R2,??DataTable4_4
        MLA      R0,R1,R0,R2
        ADDS     R2,R0,#+960
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Str
        MOVS     R3,#+1
        LDR.N    R0,??DataTable3_8
        ADDS     R0,R0,R5, LSL #+2
        LDR      R2,[R0, #+128]
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+55
        BL       LED_PrintValueFP
        B.N      ??PageInit_10
//  353             
//  354           }
//  355 	}
//  356         else if (sPageNum == 3)//第四页显示判断
??PageInit_7:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BNE.N    ??PageInit_2
//  357 	{
//  358           for (i = 0; i < 16; i++)
        MOVS     R5,#+0
        B.N      ??PageInit_11
//  359           {
//  360             if(i%2==0)
//  361             {
//  362               LED_P6x8Str(0, i/2, (unsigned char*)ScreenStr[3][i/2]);
//  363               LED_PrintValueFP(55, i/2, ScreenData[3][i], 1);
//  364             }
//  365             else 
//  366             {
//  367               
//  368               LED_PrintValueFP(90, i/2, ScreenData[3][i], 1);
??PageInit_12:
        MOVS     R3,#+1
        LDR.N    R0,??DataTable3_8
        ADDS     R0,R0,R5, LSL #+2
        LDR      R2,[R0, #+192]
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+90
        BL       LED_PrintValueFP
//  369             }
??PageInit_13:
        ADDS     R5,R5,#+1
??PageInit_11:
        CMP      R5,#+16
        BGE.N    ??PageInit_2
        MOVS     R0,#+2
        SDIV     R1,R5,R0
        MLS      R1,R1,R0,R5
        CMP      R1,#+0
        BNE.N    ??PageInit_12
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,#+30
        LDR.W    R2,??DataTable4_4
        MLA      R0,R1,R0,R2
        ADDS     R2,R0,#+1440
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Str
        MOVS     R3,#+1
        LDR.N    R0,??DataTable3_8
        ADDS     R0,R0,R5, LSL #+2
        LDR      R2,[R0, #+192]
        MOVS     R0,#+2
        SDIV     R0,R5,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+55
        BL       LED_PrintValueFP
        B.N      ??PageInit_13
//  370             
//  371           }
//  372 	}
//  373         if(sPageNum!=0)//显示选择星号
??PageInit_2:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PageInit_14
//  374         {
//  375           course_judge=Course;
        LDR.W    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        LDR.W    R1,??DataTable5_15
        STR      R0,[R1, #+0]
//  376           if(course_judge%2==0)
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??PageInit_15
//  377           {
//  378             LED_P6x8Char(50, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  379             LED_P6x8Char(85, course_judge/2, ' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  380             if(course_judge>=2)
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??PageInit_16
//  381               LED_P6x8Char(85, course_judge/2-1, ' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
        B.N      ??PageInit_16
//  382           }
//  383           else
//  384           {
//  385             LED_P6x8Char(50, course_judge/2, ' ');
??PageInit_15:
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  386             LED_P6x8Char(85, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  387             if(course_judge<=13)
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+14
        BGE.N    ??PageInit_16
//  388               LED_P6x8Char(50, course_judge/2+1, ' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
        B.N      ??PageInit_16
//  389           }
//  390         }
//  391         
//  392         else LED_P6x8Char(0, Course, '*');
??PageInit_14:
        MOVS     R2,#+42
        LDR.W    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
//  393                   
//  394 }
??PageInit_16:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     dial_switch_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     LED_LIGHT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x43fe2228

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x43fe222c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x43fe2218

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x43fe221c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x43fe2220

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     ScreenData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     highspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     lowspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     turnspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     acce

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  395 void Key_Up(void)//选择星号向上移动
//  396 {
Key_Up:
        PUSH     {R7,LR}
//  397 	
//  398         if (PageNum == 0)
        LDR.N    R0,??DataTable4_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Key_Up_0
//  399 	{
//  400           LED_P6x8Char(0, (uint8)Course, ' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
//  401           Course--;
        LDR.W    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  402 		if (Course < 0)
        LDR.W    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Key_Up_1
//  403 		{
//  404 			Course = 15;
        MOVS     R0,#+15
        LDR.W    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  405                         PageNum = 3;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//  406 			PageInit(PageNum);
        LDR.N    R0,??DataTable4_2
        LDRSB    R0,[R0, #+0]
        BL       PageInit
        B.N      ??Key_Up_2
//  407 		}
//  408                 else  LED_P6x8Char(0, Course, '*');
??Key_Up_1:
        MOVS     R2,#+42
        LDR.W    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
        B.N      ??Key_Up_2
//  409         
//  410             
//  411         }
//  412 	else if (PageNum == 1)
??Key_Up_0:
        LDR.N    R0,??DataTable4_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Key_Up_3
//  413 	{
//  414 		Course--;
        LDR.W    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  415 		if (Course < 0)
        LDR.W    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Key_Up_4
//  416 		{
//  417 			Course = 3;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  418                         PageNum = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//  419 			PageInit(PageNum);
        LDR.N    R0,??DataTable4_2
        LDRSB    R0,[R0, #+0]
        BL       PageInit
        B.N      ??Key_Up_2
//  420 		}
//  421                 
//  422                 else{
//  423                  course_judge=Course;
??Key_Up_4:
        LDR.W    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        LDR.W    R1,??DataTable5_15
        STR      R0,[R1, #+0]
//  424                   if(course_judge%2==0){
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??Key_Up_5
//  425                   LED_P6x8Char(50, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  426                   LED_P6x8Char(85, course_judge/2, ' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  427                   if(course_judge>=2)
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.W    ??Key_Up_2
//  428                   LED_P6x8Char(85, course_judge/2-1, ' ');}
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
        B.N      ??Key_Up_2
//  429                   else{
//  430                   LED_P6x8Char(50, course_judge/2, ' ');
??Key_Up_5:
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  431                   LED_P6x8Char(85, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  432                   if(course_judge<=13)
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+14
        BGE.W    ??Key_Up_2
//  433                   LED_P6x8Char(50, course_judge/2+1, ' ');}
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
        B.N      ??Key_Up_2
//  434                 }
//  435 	}
//  436         
//  437         else if (PageNum == 2)
??Key_Up_3:
        LDR.N    R0,??DataTable4_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??Key_Up_6
//  438 	{
//  439 		Course--;
        LDR.W    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  440 		if (Course < 0)
        LDR.W    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Key_Up_7
//  441 		{
//  442 			Course = 15;
        MOVS     R0,#+15
        LDR.W    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  443                         PageNum = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//  444 			PageInit(PageNum);
        LDR.N    R0,??DataTable4_2
        LDRSB    R0,[R0, #+0]
        BL       PageInit
        B.N      ??Key_Up_2
//  445 		}
//  446                 
//  447                 else{
//  448                  course_judge=Course;
??Key_Up_7:
        LDR.W    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        LDR.W    R1,??DataTable5_15
        STR      R0,[R1, #+0]
//  449                   if(course_judge%2==0){
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??Key_Up_8
//  450                   LED_P6x8Char(50, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  451                   LED_P6x8Char(85, course_judge/2, ' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  452                   if(course_judge>=2)
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.W    ??Key_Up_2
//  453                   LED_P6x8Char(85, course_judge/2-1, ' ');}
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
        B.N      ??Key_Up_2
//  454                   else{
//  455                   LED_P6x8Char(50, course_judge/2, ' ');
??Key_Up_8:
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  456                   LED_P6x8Char(85, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  457                   if(course_judge<=13)
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+14
        BGE.W    ??Key_Up_2
//  458                   LED_P6x8Char(50, course_judge/2+1, ' ');}
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
        B.N      ??Key_Up_2
//  459                 }
//  460 	}
//  461         
//  462          else if (PageNum == 3)
??Key_Up_6:
        LDR.N    R0,??DataTable4_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Key_Up_2
//  463 	{
//  464 		Course--;
        LDR.W    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  465 		if (Course < 0)
        LDR.W    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Key_Up_9
//  466 		{
//  467 			Course = 15;
        MOVS     R0,#+15
        LDR.W    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  468                         PageNum = 2;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//  469 			PageInit(PageNum);
        LDR.N    R0,??DataTable4_2
        LDRSB    R0,[R0, #+0]
        BL       PageInit
        B.N      ??Key_Up_2
//  470 		}
//  471                 
//  472                 else{
//  473                  course_judge=Course;
??Key_Up_9:
        LDR.W    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        LDR.W    R1,??DataTable5_15
        STR      R0,[R1, #+0]
//  474                   if(course_judge%2==0){
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??Key_Up_10
//  475                   LED_P6x8Char(50, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  476                   LED_P6x8Char(85, course_judge/2, ' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  477                   if(course_judge>=2)
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??Key_Up_2
//  478                   LED_P6x8Char(85, course_judge/2-1, ' ');}
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
        B.N      ??Key_Up_2
//  479                   else{
//  480                   LED_P6x8Char(50, course_judge/2, ' ');
??Key_Up_10:
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  481                   LED_P6x8Char(85, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  482                   if(course_judge<=13)
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+14
        BGE.N    ??Key_Up_2
//  483                   LED_P6x8Char(50, course_judge/2+1, ' ');}
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  484                 }
//  485 	}
//  486         		
//  487 }
??Key_Up_2:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x43fe2224

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     L_R_judge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     PageNum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     ScreenStr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     ScreenStr+0x1E

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     ScreenStr+0x3C

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     ScreenStr+0x5A

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     ScreenStr+0x1E0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     ScreenStr+0x1FE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     ScreenStr+0x21C

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     ?_7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     ScreenStr+0x23A

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     ?_8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     ScreenStr+0x258

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     ?_9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     ScreenStr+0x276

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     ?_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     ScreenStr+0x294

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     ?_11

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     ScreenStr+0x2B2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     ?_12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_28:
        DC32     ScreenStr+0x3C0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_29:
        DC32     ?_13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_30:
        DC32     ScreenStr+0x3DE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_31:
        DC32     ?_14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_32:
        DC32     ScreenStr+0x3FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_33:
        DC32     ?_15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_34:
        DC32     ScreenStr+0x41A

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_35:
        DC32     ?_16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_36:
        DC32     ScreenStr+0x438

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_37:
        DC32     ?_17

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_38:
        DC32     ScreenStr+0x456

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_39:
        DC32     ?_18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_40:
        DC32     ScreenStr+0x474

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_41:
        DC32     ?_19

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_42:
        DC32     ScreenStr+0x492

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_43:
        DC32     ?_20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_44:
        DC32     ScreenStr+0x5A0
//  488 
//  489 
//  490 
//  491 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  492 void Key_Down(void) //从右起，按下第一个按键触发，选择星号向下移动
//  493 {
Key_Down:
        PUSH     {R7,LR}
//  494   if (PageNum == 0)//如果在第一页  
        LDR.W    R0,??DataTable5_16
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Key_Down_0
//  495   {
//  496     LED_P6x8Char(0, (uint8)Course, ' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
//  497     Course++;  
        LDR.N    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  498     if (Course > 3)//course大于..，表示到下一页
        LDR.N    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??Key_Down_1
//  499     {
//  500       Course = 0;//行数清零
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  501       PageNum = 1;//下一页标志
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_16
        STRB     R0,[R1, #+0]
//  502       PageInit(PageNum);//到下一页
        LDR.N    R0,??DataTable5_16
        LDRSB    R0,[R0, #+0]
        BL       PageInit
        B.N      ??Key_Down_2
//  503     }
//  504     
//  505     else  LED_P6x8Char(0, Course, '*');//第一页，星号只在第一列出现，COURSE表示第几行
??Key_Down_1:
        MOVS     R2,#+42
        LDR.N    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
        B.N      ??Key_Down_2
//  506   }
//  507   else if (PageNum == 1)//如果在第二页
??Key_Down_0:
        LDR.N    R0,??DataTable5_16
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Key_Down_3
//  508   {
//  509     Course++;
        LDR.N    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  510     if (Course > 15)//星号可在两列移动，大于15，进入下一页
        LDR.N    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+16
        BLT.N    ??Key_Down_4
//  511     {
//  512       Course = 0; //置零，准备下一页
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  513       PageNum = 2; //下一页标志
        MOVS     R0,#+2
        LDR.N    R1,??DataTable5_16
        STRB     R0,[R1, #+0]
//  514       PageInit(PageNum);//刷新，到下一页
        LDR.N    R0,??DataTable5_16
        LDRSB    R0,[R0, #+0]
        BL       PageInit
        B.N      ??Key_Down_2
//  515     }
//  516     
//  517     else  //在本页选择
//  518     {
//  519       course_judge=Course;
??Key_Down_4:
        LDR.N    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        LDR.N    R1,??DataTable5_15
        STR      R0,[R1, #+0]
//  520       if(course_judge%2==0)//此时course=2
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??Key_Down_5
//  521       {
//  522         LED_P6x8Char(50, course_judge/2, '*');//星号在左边一列
        MOVS     R2,#+42
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  523         LED_P6x8Char(85, course_judge/2, ' ');
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  524         if(course_judge>=2)
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.W    ??Key_Down_2
//  525           LED_P6x8Char(85, course_judge/2-1, ' ');
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
        B.N      ??Key_Down_2
//  526       }
//  527       else
//  528       {
//  529         LED_P6x8Char(50, course_judge/2, ' ');
??Key_Down_5:
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  530         LED_P6x8Char(85, course_judge/2, '*');//星号在右边一列
        MOVS     R2,#+42
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  531         if(course_judge<=13)
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+14
        BGE.W    ??Key_Down_2
//  532           LED_P6x8Char(50, course_judge/2+1, ' ');
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
        B.N      ??Key_Down_2
//  533       }
//  534     }
//  535   }
//  536   else if (PageNum == 2) //第三页
??Key_Down_3:
        LDR.N    R0,??DataTable5_16
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Key_Down_6
//  537   {
//  538     Course++;
        LDR.N    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  539     if (Course > 15)
        LDR.N    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+16
        BLT.N    ??Key_Down_7
//  540     {
//  541       Course = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  542       PageNum = 3;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable5_16
        STRB     R0,[R1, #+0]
//  543       PageInit(PageNum);
        LDR.N    R0,??DataTable5_16
        LDRSB    R0,[R0, #+0]
        BL       PageInit
        B.N      ??Key_Down_2
//  544     }
//  545     
//  546     else{
//  547       course_judge=Course;
??Key_Down_7:
        LDR.N    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        LDR.N    R1,??DataTable5_15
        STR      R0,[R1, #+0]
//  548       if(course_judge%2==0){
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??Key_Down_8
//  549         LED_P6x8Char(50, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  550         LED_P6x8Char(85, course_judge/2, ' ');
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  551         if(course_judge>=2)
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.W    ??Key_Down_2
//  552           LED_P6x8Char(85, course_judge/2-1, ' ');}
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
        B.N      ??Key_Down_2
//  553       else{
//  554         LED_P6x8Char(50, course_judge/2, ' ');
??Key_Down_8:
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  555         LED_P6x8Char(85, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  556         if(course_judge<=13)
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+14
        BGE.W    ??Key_Down_2
//  557           LED_P6x8Char(50, course_judge/2+1, ' ');}
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
        B.N      ??Key_Down_2
//  558     }
//  559   }
//  560   
//  561   else if (PageNum == 3)//第四页
??Key_Down_6:
        LDR.N    R0,??DataTable5_16
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Key_Down_2
//  562   {
//  563     Course++;
        LDR.N    R0,??DataTable5_14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  564     if (Course > 15)
        LDR.N    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+16
        BLT.N    ??Key_Down_9
//  565     {
//  566       Course = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_14
        STRB     R0,[R1, #+0]
//  567       PageNum = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_16
        STRB     R0,[R1, #+0]
//  568       PageInit(PageNum);
        LDR.N    R0,??DataTable5_16
        LDRSB    R0,[R0, #+0]
        BL       PageInit
        B.N      ??Key_Down_2
//  569     }
//  570     
//  571     else{
//  572       course_judge=Course;
??Key_Down_9:
        LDR.N    R0,??DataTable5_14
        LDRSB    R0,[R0, #+0]
        LDR.N    R1,??DataTable5_15
        STR      R0,[R1, #+0]
//  573       if(course_judge%2==0){
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??Key_Down_10
//  574         LED_P6x8Char(50, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  575         LED_P6x8Char(85, course_judge/2, ' ');
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  576         if(course_judge>=2)
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??Key_Down_2
//  577           LED_P6x8Char(85, course_judge/2-1, ' ');}
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
        B.N      ??Key_Down_2
//  578       else{
//  579         LED_P6x8Char(50, course_judge/2, ' ');
??Key_Down_10:
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  580         LED_P6x8Char(85, course_judge/2, '*');
        MOVS     R2,#+42
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+85
        BL       LED_P6x8Char
//  581         if(course_judge<=13)
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+14
        BGE.N    ??Key_Down_2
//  582           LED_P6x8Char(50, course_judge/2+1, ' ');}
        MOVS     R2,#+32
        LDR.N    R0,??DataTable5_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+50
        BL       LED_P6x8Char
//  583     }
//  584   }
//  585   
//  586 }
??Key_Down_2:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     ?_21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     ScreenStr+0x5BE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     ?_22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     ScreenStr+0x5DC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     ?_23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     ScreenStr+0x5FA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     ?_24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     ScreenStr+0x618

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     ?_25

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     ScreenStr+0x636

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     ?_26

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     ScreenStr+0x654

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     ?_27

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     ScreenStr+0x672

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     Course

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     course_judge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     PageNum

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  587 void Key_DataUp(void)//对变量值进行向上调整
//  588 {
Key_DataUp:
        PUSH     {R4,LR}
//  589    if (PageNum == 0)//第一页数据调整
        LDR.W    R0,??Key_DataUp_0
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Key_DataUp_1
//  590 	{
//  591 		switch (Course)//判定第几行进行数据调整
        LDR.W    R0,??Key_DataUp_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Key_DataUp_3
        CMP      R0,#+2
        BEQ.N    ??Key_DataUp_4
        BCC.N    ??Key_DataUp_5
        CMP      R0,#+3
        BEQ.N    ??Key_DataUp_6
        B.N      ??Key_DataUp_7
//  592 		{
//  593 		case 0:ScreenData[PageNum][Course] += 5; break;//数据调整间距为10，对应的变量为O_SPEED
??Key_DataUp_3:
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_0+0x4
        LDR.W    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+5
        STR      R2,[R0, R1, LSL #+2]
        B.N      ??Key_DataUp_7
//  594 		case 1:ScreenData[PageNum][Course] += 5; break;//数据调整间距为1。。。
??Key_DataUp_5:
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_0+0x4
        LDR.W    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+5
        STR      R2,[R0, R1, LSL #+2]
        B.N      ??Key_DataUp_7
//  595 		case 2:ScreenData[PageNum][Course] += 5; break;
??Key_DataUp_4:
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_0+0x4
        LDR.W    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+5
        STR      R2,[R0, R1, LSL #+2]
        B.N      ??Key_DataUp_7
//  596                 case 3:ScreenData[PageNum][Course] += 5; break;
??Key_DataUp_6:
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_0+0x4
        LDR.W    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+5
        STR      R2,[R0, R1, LSL #+2]
//  597 		}
//  598 		SaveData(); //将变动后的数值赋给对应变量
??Key_DataUp_7:
        BL       SaveData
        B.W      ??Key_DataUp_8
//  599 	}
//  600 	else if (PageNum == 1)//第二页
??Key_DataUp_1:
        LDR.W    R0,??Key_DataUp_0
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Key_DataUp_9
//  601 	{
//  602           switch (Course)
        LDR.W    R0,??Key_DataUp_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Key_DataUp_10
        CMP      R0,#+2
        BEQ.W    ??Key_DataUp_11
        BCC.N    ??Key_DataUp_12
        CMP      R0,#+4
        BEQ.W    ??Key_DataUp_13
        BCC.W    ??Key_DataUp_14
        CMP      R0,#+6
        BEQ.W    ??Key_DataUp_15
        BCC.W    ??Key_DataUp_16
        CMP      R0,#+8
        BEQ.W    ??Key_DataUp_17
        BCC.W    ??Key_DataUp_18
        CMP      R0,#+10
        BEQ.W    ??Key_DataUp_19
        BCC.W    ??Key_DataUp_20
        CMP      R0,#+12
        BEQ.W    ??Key_DataUp_21
        BCC.W    ??Key_DataUp_22
        CMP      R0,#+14
        BEQ.W    ??Key_DataUp_23
        BCC.W    ??Key_DataUp_24
        CMP      R0,#+15
        BEQ.W    ??Key_DataUp_25
        B.N      ??Key_DataUp_26
//  603           {
//  604           case 0: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_10:
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_0+0x4
        LDR.W    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_27
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_27:
        B.N      ??Key_DataUp_28
//  605           case 1: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_12:
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_0+0x4
        LDR.W    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_29
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_29:
        B.N      ??Key_DataUp_28
//  606           case 2: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_11:
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_0+0x4
        LDR.W    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_30
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_30:
        B.N      ??Key_DataUp_28
//  607           case 3: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_14:
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_0+0x4
        LDR.W    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_31
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_31:
        B.N      ??Key_DataUp_28
//  608           case 4: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_13:
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_0+0x4
        LDR.W    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_32
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_32:
        B.N      ??Key_DataUp_28
//  609           case 5: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_16:
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_0+0x4
        LDR.W    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_33
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_33:
        B.N      ??Key_DataUp_28
//  610           case 6: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_15:
        LDR.W    R0,??Key_DataUp_0+0x4
        LDR.W    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_0+0x4
        LDR.N    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_34
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_34:
        B.N      ??Key_DataUp_28
//  611           case 7: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_18:
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_0+0x4
        LDR.N    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_35
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_35:
        B.N      ??Key_DataUp_28
//  612           case 8: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_17:
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_0+0x4
        LDR.N    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_36
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_36:
        B.N      ??Key_DataUp_28
//  613           case 9: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_20:
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_0+0x4
        LDR.N    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_37
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_37:
        B.N      ??Key_DataUp_28
//  614           case 10: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_19:
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_0+0x4
        LDR.N    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_38
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_38:
        B.N      ??Key_DataUp_28
//  615           case 11: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_22:
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_0+0x4
        LDR.N    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_39
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_39:
        B.N      ??Key_DataUp_28
//  616           case 12: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_21:
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_0+0x4
        LDR.N    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_40
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_40:
        B.N      ??Key_DataUp_28
        Nop      
        DATA
??Key_DataUp_2:
        DC32     Course
        THUMB
//  617           case 13: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_24:
        LDR.N    R0,??Key_DataUp_0+0x4
        LDR.N    R1,??Key_DataUp_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_0+0x4
        LDR.N    R3,??Key_DataUp_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_0+0x4
        B.N      ??Key_DataUp_42
        Nop      
        DATA
??Key_DataUp_0:
        DC32     PageNum
        DC32     ScreenData
        THUMB
??Key_DataUp_42:
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_44
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_44:
        B.N      ??Key_DataUp_28
//  618           case 14: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_23:
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_43+0x4
        LDR.W    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_45
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_45:
        B.N      ??Key_DataUp_28
//  619           case 15: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_25:
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_43+0x4
        LDR.W    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_46
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_46:
        B.N      ??Key_DataUp_28
//  620           default:break;
//  621           }
//  622           SaveData();//将变动后的数值赋给对应变量
??Key_DataUp_26:
??Key_DataUp_28:
        BL       SaveData
        B.W      ??Key_DataUp_8
//  623 	}
//  624 	else if (PageNum == 2)//第三页
??Key_DataUp_9:
        LDR.W    R0,??Key_DataUp_43
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??Key_DataUp_47
//  625 	{
//  626           switch (Course)
        LDR.W    R0,??Key_DataUp_41
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Key_DataUp_48
        CMP      R0,#+2
        BEQ.W    ??Key_DataUp_49
        BCC.N    ??Key_DataUp_50
        CMP      R0,#+4
        BEQ.W    ??Key_DataUp_51
        BCC.W    ??Key_DataUp_52
        CMP      R0,#+6
        BEQ.W    ??Key_DataUp_53
        BCC.W    ??Key_DataUp_54
        CMP      R0,#+8
        BEQ.W    ??Key_DataUp_55
        BCC.W    ??Key_DataUp_56
        CMP      R0,#+10
        BEQ.W    ??Key_DataUp_57
        BCC.W    ??Key_DataUp_58
        CMP      R0,#+12
        BEQ.W    ??Key_DataUp_59
        BCC.W    ??Key_DataUp_60
        CMP      R0,#+14
        BEQ.W    ??Key_DataUp_61
        BCC.W    ??Key_DataUp_62
        CMP      R0,#+15
        BEQ.W    ??Key_DataUp_63
        B.N      ??Key_DataUp_64
//  627           {
//  628           case 0: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_48:
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_43+0x4
        LDR.W    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_65
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_65:
        B.N      ??Key_DataUp_66
//  629           case 1: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_50:
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_43+0x4
        LDR.W    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_67
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_67:
        B.N      ??Key_DataUp_66
//  630           case 2: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_49:
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_43+0x4
        LDR.W    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_68
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_68:
        B.N      ??Key_DataUp_66
//  631           case 3: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_52:
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_43+0x4
        LDR.W    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_69
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_69:
        B.N      ??Key_DataUp_66
//  632           case 4: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_51:
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_43+0x4
        LDR.W    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_70
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_70:
        B.N      ??Key_DataUp_66
//  633           case 5: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_54:
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataUp_43+0x4
        LDR.W    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataUp_43+0x4
        LDR.W    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_71
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_71:
        B.N      ??Key_DataUp_66
//  634           case 6: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_53:
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_43+0x4
        LDR.N    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_72
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_72:
        B.N      ??Key_DataUp_66
//  635           case 7: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_56:
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_43+0x4
        LDR.N    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_73
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_73:
        B.N      ??Key_DataUp_66
//  636           case 8: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_55:
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_43+0x4
        LDR.N    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_74
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_74:
        B.N      ??Key_DataUp_66
//  637           case 9: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_58:
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_43+0x4
        LDR.N    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_75
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_75:
        B.N      ??Key_DataUp_66
//  638           case 10: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_57:
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_43+0x4
        LDR.N    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_76
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_76:
        B.N      ??Key_DataUp_66
//  639           case 11: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_60:
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_43+0x4
        LDR.N    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataUp_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_77
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataUp_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_77:
        B.N      ??Key_DataUp_66
        Nop      
        DATA
??Key_DataUp_41:
        DC32     Course
        THUMB
//  640           case 12: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_59:
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataUp_43+0x4
        LDR.N    R3,??Key_DataUp_43
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_78
        LDR.N    R0,??Key_DataUp_43+0x4
        LDR.N    R1,??Key_DataUp_43
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_78:
        B.N      ??Key_DataUp_66
//  641           case 13: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_62:
        LDR.N    R0,??Key_DataUp_43+0x4
        B.N      ??Key_DataUp_79
        Nop      
        DATA
??Key_DataUp_43:
        DC32     PageNum
        DC32     ScreenData
        THUMB
??Key_DataUp_79:
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_80
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_80:
        B.N      ??Key_DataUp_66
//  642           case 14: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_61:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_81
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_81:
        B.N      ??Key_DataUp_66
//  643           case 15: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_63:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_82
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_82:
        B.N      ??Key_DataUp_66
//  644           default:break;
//  645           }
//  646           SaveData();
??Key_DataUp_64:
??Key_DataUp_66:
        BL       SaveData
        B.W      ??Key_DataUp_8
//  647 	}
//  648         else if (PageNum == 3)
??Key_DataUp_47:
        LDR.W    R0,??DataTable6_1
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+3
        BNE.W    ??Key_DataUp_8
//  649 	{
//  650           switch (Course)
        LDR.W    R0,??DataTable6
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Key_DataUp_83
        CMP      R0,#+2
        BEQ.W    ??Key_DataUp_84
        BCC.N    ??Key_DataUp_85
        CMP      R0,#+4
        BEQ.W    ??Key_DataUp_86
        BCC.W    ??Key_DataUp_87
        CMP      R0,#+6
        BEQ.W    ??Key_DataUp_88
        BCC.W    ??Key_DataUp_89
        CMP      R0,#+8
        BEQ.W    ??Key_DataUp_90
        BCC.W    ??Key_DataUp_91
        CMP      R0,#+10
        BEQ.W    ??Key_DataUp_92
        BCC.W    ??Key_DataUp_93
        CMP      R0,#+12
        BEQ.W    ??Key_DataUp_94
        BCC.W    ??Key_DataUp_95
        CMP      R0,#+14
        BEQ.W    ??Key_DataUp_96
        BCC.W    ??Key_DataUp_97
        CMP      R0,#+15
        BEQ.W    ??Key_DataUp_98
        B.N      ??Key_DataUp_99
//  651           {
//  652           case 0: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_83:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_100
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_100:
        B.N      ??Key_DataUp_101
//  653           case 1: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_85:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_102
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_102:
        B.N      ??Key_DataUp_101
//  654           case 2: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_84:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_103
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_103:
        B.N      ??Key_DataUp_101
//  655           case 3: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_87:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_104
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_104:
        B.N      ??Key_DataUp_101
//  656           case 4: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_86:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_105
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_105:
        B.N      ??Key_DataUp_101
//  657           case 5: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_89:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_106
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_106:
        B.N      ??Key_DataUp_101
//  658           case 6: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_88:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_107
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_107:
        B.N      ??Key_DataUp_101
//  659           case 7: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_91:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_108
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_108:
        B.N      ??Key_DataUp_101
//  660           case 8: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_90:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_109
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_109:
        B.N      ??Key_DataUp_101
//  661           case 9: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_93:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_110
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_110:
        B.N      ??Key_DataUp_101
//  662           case 10: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_92:
        LDR.W    R0,??DataTable6_2
        LDR.W    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable6_2
        LDR.W    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_111
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_111:
        B.N      ??Key_DataUp_101
//  663           case 11: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_95:
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??DataTable6_2
        LDR.N    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_112
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_112:
        B.N      ??Key_DataUp_101
//  664           case 12: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_94:
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??DataTable6_2
        LDR.N    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_113
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_113:
        B.N      ??Key_DataUp_101
//  665           case 13: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_97:
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??DataTable6_2
        LDR.N    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_114
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_114:
        B.N      ??Key_DataUp_101
//  666           case 14: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_96:
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??DataTable6_2
        LDR.N    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_115
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_115:
        B.N      ??Key_DataUp_101
//  667           case 15: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
??Key_DataUp_98:
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??DataTable6_2
        LDR.N    R3,??DataTable6_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??DataTable6
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+3
        BLT.N    ??Key_DataUp_116
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+2
        STR      R2,[R0, R1, LSL #+2]
??Key_DataUp_116:
        B.N      ??Key_DataUp_101
//  668           default:break;
//  669           }
//  670           SaveData();
??Key_DataUp_99:
??Key_DataUp_101:
        BL       SaveData
//  671 	}
//  672    if(PageNum!=0)
??Key_DataUp_8:
        LDR.N    R0,??DataTable6_1
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Key_DataUp_117
//  673    {
//  674      if(Course%2==0)
        LDR.N    R0,??DataTable6
        LDRSB    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??Key_DataUp_118
//  675        LED_PrintValueFP(55, Course/2, ScreenData[PageNum][Course], 1);
        MOVS     R3,#+1
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable6
        LDRSB    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+55
        BL       LED_PrintValueFP
        B.N      ??Key_DataUp_119
//  676      else 
//  677        LED_PrintValueFP(90, Course/2, ScreenData[PageNum][Course], 1);
??Key_DataUp_118:
        MOVS     R3,#+1
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable6
        LDRSB    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+90
        BL       LED_PrintValueFP
        B.N      ??Key_DataUp_119
//  678    }
//  679    
//  680    else  
//  681    { 
//  682      LED_P6x8Str(70, Course, "      ");
??Key_DataUp_117:
        LDR.N    R2,??DataTable6_3
        LDR.N    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+70
        BL       LED_P6x8Str
//  683      LED_PrintValueFP(70, Course, ScreenData[PageNum][Course], 3);
        MOVS     R3,#+3
        LDR.N    R0,??DataTable6_2
        LDR.N    R1,??DataTable6_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable6
        LDRSB    R1,[R1, #+0]
        LDR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  684    }
//  685 }
??Key_DataUp_119:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     Course

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     PageNum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     ScreenData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     ?_28

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  686 void Key_DataDown(void)//对变量值进行向下调整
//  687 {
Key_DataDown:
        PUSH     {R4,LR}
//  688   
//  689   if (PageNum == 0)
        LDR.W    R0,??Key_DataDown_0
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Key_DataDown_1
//  690   {
//  691     switch (Course)
        LDR.W    R0,??Key_DataDown_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Key_DataDown_3
        CMP      R0,#+2
        BEQ.N    ??Key_DataDown_4
        BCC.N    ??Key_DataDown_5
        CMP      R0,#+3
        BEQ.W    ??Key_DataDown_6
        B.N      ??Key_DataDown_7
//  692     {
//  693     case 0:ScreenData[PageNum][Course] -= 5; break;
??Key_DataDown_3:
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_0+0x4
        LDR.W    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+5
        STR      R2,[R0, R1, LSL #+2]
        B.N      ??Key_DataDown_7
//  694     case 1:ScreenData[PageNum][Course] -= 5; break;
??Key_DataDown_5:
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_0+0x4
        LDR.W    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+5
        STR      R2,[R0, R1, LSL #+2]
        B.N      ??Key_DataDown_7
//  695     case 2:ScreenData[PageNum][Course] -= 5; 
??Key_DataDown_4:
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_0+0x4
        LDR.W    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+5
        STR      R2,[R0, R1, LSL #+2]
//  696            if(ScreenData[PageNum][Course]<0) 
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_8
//  697               ScreenData[PageNum][Course]=0;
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
//  698            break;
??Key_DataDown_8:
        B.N      ??Key_DataDown_7
//  699     case 3:ScreenData[PageNum][Course] -= 5; break;
??Key_DataDown_6:
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_0+0x4
        LDR.W    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+5
        STR      R2,[R0, R1, LSL #+2]
//  700            
//  701     }
//  702     SaveData();
??Key_DataDown_7:
        BL       SaveData
        B.W      ??Key_DataDown_9
//  703   }
//  704   else if (PageNum == 1)
??Key_DataDown_1:
        LDR.W    R0,??Key_DataDown_0
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Key_DataDown_10
//  705   {
//  706     switch (Course)
        LDR.W    R0,??Key_DataDown_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Key_DataDown_11
        CMP      R0,#+2
        BEQ.W    ??Key_DataDown_12
        BCC.N    ??Key_DataDown_13
        CMP      R0,#+4
        BEQ.W    ??Key_DataDown_14
        BCC.W    ??Key_DataDown_15
        CMP      R0,#+6
        BEQ.W    ??Key_DataDown_16
        BCC.W    ??Key_DataDown_17
        CMP      R0,#+8
        BEQ.W    ??Key_DataDown_18
        BCC.W    ??Key_DataDown_19
        CMP      R0,#+10
        BEQ.W    ??Key_DataDown_20
        BCC.W    ??Key_DataDown_21
        CMP      R0,#+12
        BEQ.W    ??Key_DataDown_22
        BCC.W    ??Key_DataDown_23
        CMP      R0,#+14
        BEQ.W    ??Key_DataDown_24
        BCC.W    ??Key_DataDown_25
        CMP      R0,#+15
        BEQ.W    ??Key_DataDown_26
        B.N      ??Key_DataDown_27
//  707     {
//  708     case 0: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_11:
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_0+0x4
        LDR.W    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_28
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_28:
        B.N      ??Key_DataDown_29
//  709     case 1: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_13:
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_0+0x4
        LDR.W    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_30
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_30:
        B.N      ??Key_DataDown_29
//  710     case 2: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_12:
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_0+0x4
        LDR.W    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_31
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_31:
        B.N      ??Key_DataDown_29
//  711     case 3: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_15:
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_0+0x4
        LDR.W    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_32
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_32:
        B.N      ??Key_DataDown_29
//  712     case 4: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_14:
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_0+0x4
        LDR.W    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_33
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_33:
        B.N      ??Key_DataDown_29
//  713     case 5: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_17:
        LDR.W    R0,??Key_DataDown_0+0x4
        LDR.W    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_0+0x4
        LDR.W    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_34
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_34:
        B.N      ??Key_DataDown_29
//  714     case 6: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_16:
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_0+0x4
        LDR.N    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_35
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_35:
        B.N      ??Key_DataDown_29
//  715     case 7: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_19:
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_0+0x4
        LDR.N    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_36
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_36:
        B.N      ??Key_DataDown_29
//  716     case 8: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_18:
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_0+0x4
        LDR.N    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_37
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_37:
        B.N      ??Key_DataDown_29
//  717     case 9: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_21:
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_0+0x4
        LDR.N    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_38
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_38:
        B.N      ??Key_DataDown_29
//  718     case 10: ScreenData[PageNum][Course] -= 1;if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_20:
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_0+0x4
        LDR.N    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_39
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_39:
        B.N      ??Key_DataDown_29
//  719     case 11: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_23:
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_0+0x4
        LDR.N    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_2
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_40
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_2
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_40:
        B.N      ??Key_DataDown_29
        DATA
??Key_DataDown_2:
        DC32     Course
        THUMB
//  720     case 12: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_22:
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_0+0x4
        LDR.N    R3,??Key_DataDown_0
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_0+0x4
        LDR.N    R1,??Key_DataDown_0
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_42
        LDR.N    R0,??Key_DataDown_0+0x4
        B.N      ??Key_DataDown_43
        DATA
??Key_DataDown_0:
        DC32     PageNum
        DC32     ScreenData
        THUMB
??Key_DataDown_43:
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_42:
        B.N      ??Key_DataDown_29
//  721     case 13: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_25:
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_44+0x4
        LDR.W    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_45
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_45:
        B.N      ??Key_DataDown_29
//  722     case 14: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_24:
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_44+0x4
        LDR.W    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_46
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_46:
        B.N      ??Key_DataDown_29
//  723     case 15: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_26:
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_44+0x4
        LDR.W    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_47
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_47:
        B.N      ??Key_DataDown_29
//  724     default:break;
//  725     }
//  726     SaveData();
??Key_DataDown_27:
??Key_DataDown_29:
        BL       SaveData
        B.W      ??Key_DataDown_9
//  727   }
//  728   else if (PageNum == 2)
??Key_DataDown_10:
        LDR.W    R0,??Key_DataDown_44
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??Key_DataDown_48
//  729   {
//  730     switch (Course)
        LDR.W    R0,??Key_DataDown_41
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Key_DataDown_49
        CMP      R0,#+2
        BEQ.W    ??Key_DataDown_50
        BCC.N    ??Key_DataDown_51
        CMP      R0,#+4
        BEQ.W    ??Key_DataDown_52
        BCC.W    ??Key_DataDown_53
        CMP      R0,#+6
        BEQ.W    ??Key_DataDown_54
        BCC.W    ??Key_DataDown_55
        CMP      R0,#+8
        BEQ.W    ??Key_DataDown_56
        BCC.W    ??Key_DataDown_57
        CMP      R0,#+10
        BEQ.W    ??Key_DataDown_58
        BCC.W    ??Key_DataDown_59
        CMP      R0,#+12
        BEQ.W    ??Key_DataDown_60
        BCC.W    ??Key_DataDown_61
        CMP      R0,#+14
        BEQ.W    ??Key_DataDown_62
        BCC.W    ??Key_DataDown_63
        CMP      R0,#+15
        BEQ.W    ??Key_DataDown_64
        B.N      ??Key_DataDown_65
//  731     {
//  732     case 0: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_49:
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_44+0x4
        LDR.W    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_66
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_66:
        B.N      ??Key_DataDown_67
//  733     case 1: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_51:
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_44+0x4
        LDR.W    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_68
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_68:
        B.N      ??Key_DataDown_67
//  734     case 2: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_50:
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_44+0x4
        LDR.W    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_69
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_69:
        B.N      ??Key_DataDown_67
//  735     case 3: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_53:
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_44+0x4
        LDR.W    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_70
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_70:
        B.N      ??Key_DataDown_67
//  736     case 4: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_52:
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??Key_DataDown_44+0x4
        LDR.W    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_71
        LDR.W    R0,??Key_DataDown_44+0x4
        LDR.W    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_71:
        B.N      ??Key_DataDown_67
//  737     case 5: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_55:
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_44+0x4
        LDR.N    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_72
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_72:
        B.N      ??Key_DataDown_67
//  738     case 6: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_54:
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_44+0x4
        LDR.N    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_73
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_73:
        B.N      ??Key_DataDown_67
//  739     case 7: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_57:
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_44+0x4
        LDR.N    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_74
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_74:
        B.N      ??Key_DataDown_67
//  740     case 8: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_56:
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_44+0x4
        LDR.N    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_75
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_75:
        B.N      ??Key_DataDown_67
//  741     case 9: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_59:
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_44+0x4
        LDR.N    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_76
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_76:
        B.N      ??Key_DataDown_67
//  742     case 10: ScreenData[PageNum][Course] -= 1;if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_58:
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_44+0x4
        LDR.N    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??Key_DataDown_41
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_77
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??Key_DataDown_41
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_77:
        B.N      ??Key_DataDown_67
        DATA
??Key_DataDown_41:
        DC32     Course
        THUMB
//  743     case 11: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_61:
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_44+0x4
        LDR.N    R3,??Key_DataDown_44
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_78
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_78:
        B.N      ??Key_DataDown_67
//  744     case 12: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_60:
        LDR.N    R0,??Key_DataDown_44+0x4
        LDR.N    R1,??Key_DataDown_44
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??Key_DataDown_44+0x4
        B.N      ??Key_DataDown_79
        DATA
??Key_DataDown_44:
        DC32     PageNum
        DC32     ScreenData
        THUMB
??Key_DataDown_79:
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_80
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_80:
        B.N      ??Key_DataDown_67
//  745     case 13: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_63:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_81
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_81:
        B.N      ??Key_DataDown_67
//  746     case 14: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_62:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_82
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_82:
        B.N      ??Key_DataDown_67
//  747     case 15: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_64:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_83
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_83:
        B.N      ??Key_DataDown_67
//  748     default:break;
//  749     }
//  750     SaveData();
??Key_DataDown_65:
??Key_DataDown_67:
        BL       SaveData
        B.W      ??Key_DataDown_9
//  751   }
//  752   else if (PageNum == 3)
??Key_DataDown_48:
        LDR.W    R0,??DataTable8_1
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+3
        BNE.W    ??Key_DataDown_9
//  753   {
//  754     switch (Course)
        LDR.W    R0,??DataTable8
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Key_DataDown_84
        CMP      R0,#+2
        BEQ.W    ??Key_DataDown_85
        BCC.N    ??Key_DataDown_86
        CMP      R0,#+4
        BEQ.W    ??Key_DataDown_87
        BCC.W    ??Key_DataDown_88
        CMP      R0,#+6
        BEQ.W    ??Key_DataDown_89
        BCC.W    ??Key_DataDown_90
        CMP      R0,#+8
        BEQ.W    ??Key_DataDown_91
        BCC.W    ??Key_DataDown_92
        CMP      R0,#+10
        BEQ.W    ??Key_DataDown_93
        BCC.W    ??Key_DataDown_94
        CMP      R0,#+12
        BEQ.W    ??Key_DataDown_95
        BCC.W    ??Key_DataDown_96
        CMP      R0,#+14
        BEQ.W    ??Key_DataDown_97
        BCC.W    ??Key_DataDown_98
        CMP      R0,#+15
        BEQ.W    ??Key_DataDown_99
        B.N      ??Key_DataDown_100
//  755     {
//  756     case 0: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_84:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_101
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_101:
        B.N      ??Key_DataDown_102
//  757     case 1: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_86:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_103
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_103:
        B.N      ??Key_DataDown_102
//  758     case 2: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_85:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_104
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_104:
        B.N      ??Key_DataDown_102
//  759     case 3: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_88:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_105
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_105:
        B.N      ??Key_DataDown_102
//  760     case 4: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_87:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_106
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_106:
        B.N      ??Key_DataDown_102
//  761     case 5: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_90:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_107
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_107:
        B.N      ??Key_DataDown_102
//  762     case 6: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_89:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_108
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_108:
        B.N      ??Key_DataDown_102
//  763     case 7: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_92:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_109
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_109:
        B.N      ??Key_DataDown_102
//  764     case 8: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_91:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_110
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_110:
        B.N      ??Key_DataDown_102
//  765     case 9: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_94:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_111
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_111:
        B.N      ??Key_DataDown_102
//  766     case 10: ScreenData[PageNum][Course] -= 1;if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_93:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_112
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_112:
        B.N      ??Key_DataDown_102
//  767     case 11: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_96:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_113
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_113:
        B.N      ??Key_DataDown_102
//  768     case 12: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_95:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.W    R2,??DataTable8_2
        LDR.W    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.W    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_114
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.W    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_114:
        B.N      ??Key_DataDown_102
//  769     case 13: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_98:
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??DataTable8_2
        LDR.N    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_115
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_115:
        B.N      ??Key_DataDown_102
//  770     case 14: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_97:
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??DataTable8_2
        LDR.N    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_116
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_116:
        B.N      ??Key_DataDown_102
//  771     case 15: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
??Key_DataDown_99:
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR.N    R2,??DataTable8_2
        LDR.N    R3,??DataTable8_1
        LDRSB    R3,[R3, #+0]
        MOVS     R4,#+64
        SMLABB   R2,R3,R4,R2
        LDR.N    R3,??DataTable8
        LDRSB    R3,[R3, #+0]
        LDR      R2,[R2, R3, LSL #+2]
        SUBS     R2,R2,#+1
        STR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??Key_DataDown_117
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+0
        STR      R2,[R0, R1, LSL #+2]
??Key_DataDown_117:
        B.N      ??Key_DataDown_102
//  772     default:break;
//  773     }
//  774     SaveData();
??Key_DataDown_100:
??Key_DataDown_102:
        BL       SaveData
//  775   }
//  776   
//  777   
//  778   if(PageNum!=0)
??Key_DataDown_9:
        LDR.N    R0,??DataTable8_1
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Key_DataDown_118
//  779   {
//  780     if(Course%2==0)
        LDR.N    R0,??DataTable8
        LDRSB    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??Key_DataDown_119
//  781       LED_PrintValueFP(55, Course/2, ScreenData[PageNum][Course], 1);
        MOVS     R3,#+1
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable8
        LDRSB    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+55
        BL       LED_PrintValueFP
        B.N      ??Key_DataDown_120
//  782     else 
//  783       LED_PrintValueFP(90, Course/2, ScreenData[PageNum][Course], 1);
??Key_DataDown_119:
        MOVS     R3,#+1
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable8
        LDRSB    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+90
        BL       LED_PrintValueFP
        B.N      ??Key_DataDown_120
//  784   }
//  785   
//  786   else  
//  787   { 
//  788     LED_P6x8Str(70, Course, "      ");
??Key_DataDown_118:
        LDR.W    R2,??DataTable11
        LDR.N    R0,??DataTable8
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+70
        BL       LED_P6x8Str
//  789     LED_PrintValueFP(70, Course, ScreenData[PageNum][Course], 3);
        MOVS     R3,#+3
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_1
        LDRSB    R1,[R1, #+0]
        MOVS     R2,#+64
        SMLABB   R0,R1,R2,R0
        LDR.N    R1,??DataTable8
        LDRSB    R1,[R1, #+0]
        LDR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable8
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  790   }
//  791 }
??Key_DataDown_120:
        POP      {R4,PC}          ;; return
//  792 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  793 void Key_Process(void)
//  794 {
Key_Process:
        PUSH     {R4,LR}
//  795 	
//  796 	unsigned char temp = 10;//此初值表示没有按键按下
        MOVS     R4,#+10
//  797 	PageInit(PageNum);
        LDR.N    R0,??DataTable8_1
        LDRSB    R0,[R0, #+0]
        BL       PageInit
        B.N      ??Key_Process_0
//  798 	while (1)
//  799 	{
//  800 		temp = KeyScan();//扫描按键，所有按键都没被按下返回10
//  801 		if (temp == 5)//跳出按键循环
//  802 		{
//  803                         flash_config();
//  804 			Key_delay();
//  805 			Key_delay();
//  806                         Key_delay();
//  807 			Key_delay();
//  808                         
//  809                         /************点灯，提示操作员此时退出了屏幕和按键循环*******************/
//  810                         BUZZER_ON;
//  811 			LPLD_GPIO_Output_b(PTA, 26, 0);
//  812                         LPLD_GPIO_Output_b(PTA, 27, 1);
//  813                         LPLD_GPIO_Output_b(PTA, 28, 1);
//  814                         LPLD_LPTMR_DelayMs( 300 );
//  815                         LPLD_GPIO_Output_b(PTA, 26, 0);
//  816                         LPLD_GPIO_Output_b(PTA, 27, 0);
//  817                         LPLD_GPIO_Output_b(PTA, 28, 1);
//  818                         LPLD_LPTMR_DelayMs( 300 );
//  819                         LPLD_GPIO_Output_b(PTA, 26, 0);
//  820                         LPLD_GPIO_Output_b(PTA, 27, 0);
//  821                         LPLD_GPIO_Output_b(PTA, 28, 0);
//  822                         /******************************************************************/
//  823 			LED_Init();
//  824 			Key_delay();
//  825 			LED_Fill(0);
//  826 			Key_delay();
//  827                         LPLD_LPTMR_DelayMs( 300 );
//  828                         BUZZER_OFF;
//  829 			break;
//  830 		}
//  831 //		
//  832 		else
//  833 		{
//  834                   clear_screen_number++;  
//  835                   if(clear_screen_number>10000000)
//  836                   {
//  837                     SaveData();
//  838                     PageInit(PageNum);//显示第一页字符
//  839                     clear_screen_number=0;
//  840                   }
//  841 			switch (temp)
//  842 			{
//  843 			case 1: Key_Down();Key_delay(); Key_delay(); break; //向下选择
??Key_Process_1:
        BL       Key_Down
        BL       Key_delay
        BL       Key_delay
??Key_Process_0:
        BL       KeyScan
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BNE.N    ??Key_Process_2
        BL       flash_config
        BL       Key_delay
        BL       Key_delay
        BL       Key_delay
        BL       Key_delay
        MOVS     R2,#+1
        MOVS     R1,#+25
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        MOVS     R2,#+0
        MOVS     R1,#+26
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        MOVS     R2,#+1
        MOVS     R1,#+27
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        MOV      R0,#+300
        BL       LPLD_LPTMR_DelayMs
        MOVS     R2,#+0
        MOVS     R1,#+26
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        MOVS     R2,#+0
        MOVS     R1,#+27
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        MOV      R0,#+300
        BL       LPLD_LPTMR_DelayMs
        MOVS     R2,#+0
        MOVS     R1,#+26
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        MOVS     R2,#+0
        MOVS     R1,#+27
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        BL       LED_Init
        BL       Key_delay
        MOVS     R0,#+0
        BL       LED_Fill
        BL       Key_delay
        MOV      R0,#+300
        BL       LPLD_LPTMR_DelayMs
        MOVS     R2,#+0
        MOVS     R1,#+25
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  844                         
//  845 			case 2: Key_Up();Key_delay();Key_delay();  break;//向上选择
//  846                         
//  847 			case 3: Key_DataUp(); Key_delay();Key_delay();  break;
//  848                         
//  849 			case 4: Key_DataDown(); Key_delay();Key_delay();  break;
//  850 			}
//  851 		}
//  852 	}
//  853 }
        POP      {R4,PC}          ;; return
??Key_Process_2:
        LDR.W    R0,??DataTable11_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_2
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable11_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_3  ;; 0x989681
        CMP      R0,R1
        BLT.N    ??Key_Process_3
        BL       SaveData
        LDR.N    R0,??DataTable8_1
        LDRSB    R0,[R0, #+0]
        BL       PageInit
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_2
        STR      R0,[R1, #+0]
??Key_Process_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.W    ??Key_Process_1
        BCC.W    ??Key_Process_0
        CMP      R4,#+3
        BEQ.N    ??Key_Process_4
        BCC.N    ??Key_Process_5
        CMP      R4,#+4
        BEQ.N    ??Key_Process_6
        B.N      ??Key_Process_0
??Key_Process_5:
        BL       Key_Up
        BL       Key_delay
        BL       Key_delay
        B.N      ??Key_Process_0
??Key_Process_4:
        BL       Key_DataUp
        BL       Key_delay
        BL       Key_delay
        B.N      ??Key_Process_0
??Key_Process_6:
        BL       Key_DataDown
        BL       Key_delay
        BL       Key_delay
        B.N      ??Key_Process_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     Course

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     PageNum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     ScreenData
//  854 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  855 void pianhang_config(void)   //偏航调参
//  856 {
pianhang_config:
        PUSH     {R7,LR}
//  857   unsigned char temp = 10;//此初值表示没有按键按下
        MOVS     R0,#+10
//  858   //oled显示
//  859  
//  860   LED_P6x8Str(8, 0,(unsigned char*)"rl");  //第1行
        ADR.N    R2,??pianhang_config_0  ;; 0x72, 0x6C, 0x00, 0x00
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  861   LED_PrintValueFP(13,0,rol,1);
        MOVS     R3,#+1
        LDR.W    R0,??DataTable11_4
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+13
        BL       LED_PrintValueFP
//  862   LED_P6x8Str(29, 0,(unsigned char*)"x");
        ADR.N    R2,??pianhang_config_1  ;; "x"
        MOVS     R1,#+0
        MOVS     R0,#+29
        BL       LED_P6x8Str
//  863   LED_PrintValueFP(31,0,real_pointx,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_5
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+31
        BL       LED_PrintValueFP
//  864   LED_P6x8Str(58, 0,(unsigned char*)"y");
        ADR.N    R2,??DataTable9  ;; "y"
        MOVS     R1,#+0
        MOVS     R0,#+58
        BL       LED_P6x8Str
//  865   LED_PrintValueFP(60,0,real_pointy,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_6
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LED_PrintValueFP
//  866   LED_P6x8Str(87,0,(unsigned char*)"sx");
        ADR.N    R2,??DataTable9_1  ;; 0x73, 0x78, 0x00, 0x00
        MOVS     R1,#+0
        MOVS     R0,#+87
        BL       LED_P6x8Str
//  867   LED_PrintValueFP(93,0,SetCenterX,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_7
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+93
        BL       LED_PrintValueFP
//  868   if(rol==0)         //后7行
        LDR.W    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pianhang_config_2
//  869   {
//  870     LED_P6x8Str(8, 1,(unsigned char*)"10-15 lph1");
        LDR.W    R2,??DataTable11_8
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  871     LED_PrintValueFP(70,1,lph1,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_9
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  872     LED_P6x8Str(8, 2,(unsigned char*)"15-20 lph2");
        LDR.W    R2,??DataTable11_10
        MOVS     R1,#+2
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  873     LED_PrintValueFP(70,2,lph2,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_11
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  874     LED_P6x8Str(8, 3,(unsigned char*)"20-30 lph3");
        LDR.W    R2,??DataTable11_12
        MOVS     R1,#+3
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  875     LED_PrintValueFP(70,3,lph3,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_13
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  876     LED_P6x8Str(8, 4,(unsigned char*)"30-40 lph4");
        LDR.W    R2,??DataTable11_14
        MOVS     R1,#+4
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  877     LED_PrintValueFP(70,4,lph4,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_15
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  878     LED_P6x8Str(8, 5,(unsigned char*)"40-50 lph5");
        LDR.W    R2,??DataTable11_16
        MOVS     R1,#+5
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  879     LED_PrintValueFP(70,5,lph5,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_17
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  880     LED_P6x8Str(8, 6,(unsigned char*)"50-70 lph6");
        LDR.W    R2,??DataTable11_18
        MOVS     R1,#+6
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  881     LED_PrintValueFP(70,6,lph6,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_19
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  882     LED_P6x8Str(8, 7,(unsigned char*)"70-   lph7");
        LDR.W    R2,??DataTable11_20
        MOVS     R1,#+7
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  883     LED_PrintValueFP(70,7,lph7,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_21
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+7
        MOVS     R0,#+70
        BL       LED_PrintValueFP
        B.N      ??pianhang_config_3
//  884   }
//  885   else
//  886   {
//  887     LED_P6x8Str(8, 1,(unsigned char*)"10-15 rph1");
??pianhang_config_2:
        LDR.W    R2,??DataTable11_22
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  888     LED_PrintValueFP(70,1,rph1,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_23
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  889     LED_P6x8Str(8, 2,(unsigned char*)"15-20 rph2");
        LDR.W    R2,??DataTable11_24
        MOVS     R1,#+2
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  890     LED_PrintValueFP(70,2,rph2,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_25
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  891     LED_P6x8Str(8, 3,(unsigned char*)"20-30 rph3");
        LDR.W    R2,??DataTable11_26
        MOVS     R1,#+3
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  892     LED_PrintValueFP(70,3,rph3,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_27
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  893     LED_P6x8Str(8, 4,(unsigned char*)"30-40 rph4");
        LDR.W    R2,??DataTable11_28
        MOVS     R1,#+4
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  894     LED_PrintValueFP(70,4,rph4,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_29
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  895     LED_P6x8Str(8, 5,(unsigned char*)"40-50 rph5");
        LDR.W    R2,??DataTable11_30
        MOVS     R1,#+5
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  896     LED_PrintValueFP(70,5,rph5,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_31
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  897     LED_P6x8Str(8, 6,(unsigned char*)"50-70 rph6");
        LDR.W    R2,??DataTable11_32
        MOVS     R1,#+6
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  898     LED_PrintValueFP(70,6,rph6,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_33
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  899     LED_P6x8Str(8, 7,(unsigned char*)"70-   rph7");
        LDR.W    R2,??DataTable11_34
        MOVS     R1,#+7
        MOVS     R0,#+8
        BL       LED_P6x8Str
//  900     LED_PrintValueFP(70,7,rph7,3);
        MOVS     R3,#+3
        LDR.W    R0,??DataTable11_35
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+7
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//  901   }
//  902   if(ph_course==7)
??pianhang_config_3:
        LDR.W    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??pianhang_config_4
//  903   {
//  904     LED_P6x8Char(0,ph_course,'*');
        MOVS     R2,#+42
        LDR.W    R0,??DataTable11_36
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
//  905     LED_P6x8Char(0,ph_course-1,' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        SUBS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
        B.N      ??pianhang_config_5
//  906   }
//  907   else if(ph_course==0)
??pianhang_config_4:
        LDR.W    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pianhang_config_6
//  908   {
//  909     LED_P6x8Char(0,ph_course,'*');
        MOVS     R2,#+42
        LDR.W    R0,??DataTable11_36
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
//  910     LED_P6x8Char(0,ph_course+1,' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        ADDS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
        B.N      ??pianhang_config_5
//  911   }
//  912   else
//  913   {
//  914     LED_P6x8Char(0,ph_course,'*');
??pianhang_config_6:
        MOVS     R2,#+42
        LDR.W    R0,??DataTable11_36
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
//  915     LED_P6x8Char(0,ph_course+1,' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        ADDS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
//  916     LED_P6x8Char(0,ph_course-1,' ');
        MOVS     R2,#+32
        LDR.W    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        SUBS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LED_P6x8Char
//  917   }
//  918   
//  919   temp = KeyScan();//扫描按键，所有按键都没被按下返回10
??pianhang_config_5:
        BL       KeyScan
//  920   if (temp == 5)//确定键按下，写flash，重置参数
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+5
        BNE.N    ??pianhang_config_7
//  921   {
//  922     flash_config();
        BL       flash_config
//  923     /***************写flash提示************/
//  924     BUZZER_ON;
        MOVS     R2,#+1
        MOVS     R1,#+25
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  925     LPLD_GPIO_Output_b(PTA, 26, 1);
        MOVS     R2,#+1
        MOVS     R1,#+26
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  926     LPLD_GPIO_Output_b(PTA, 27, 1);
        MOVS     R2,#+1
        MOVS     R1,#+27
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  927     LPLD_GPIO_Output_b(PTA, 28, 0);
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  928     LPLD_LPTMR_DelayMs( 300 );
        MOV      R0,#+300
        BL       LPLD_LPTMR_DelayMs
//  929     LPLD_GPIO_Output_b(PTA, 26, 1);
        MOVS     R2,#+1
        MOVS     R1,#+26
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  930     LPLD_GPIO_Output_b(PTA, 27, 0);
        MOVS     R2,#+0
        MOVS     R1,#+27
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  931     LPLD_GPIO_Output_b(PTA, 28, 0);
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  932     LPLD_LPTMR_DelayMs( 300 );
        MOV      R0,#+300
        BL       LPLD_LPTMR_DelayMs
//  933     LPLD_GPIO_Output_b(PTA, 26, 0);
        MOVS     R2,#+0
        MOVS     R1,#+26
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  934     LPLD_GPIO_Output_b(PTA, 27, 0);
        MOVS     R2,#+0
        MOVS     R1,#+27
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  935     LPLD_GPIO_Output_b(PTA, 28, 0);
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  936     LPLD_LPTMR_DelayMs( 300 );
        MOV      R0,#+300
        BL       LPLD_LPTMR_DelayMs
//  937     BUZZER_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+25
        LDR.W    R0,??DataTable11_1  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??pianhang_config_8
        Nop      
        DATA
??pianhang_config_0:
        DC8      0x72, 0x6C, 0x00, 0x00
        THUMB
//  938     /******************************************************************/
//  939     
//  940   }
//  941   else
//  942     switch (temp)
??pianhang_config_7:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BEQ.N    ??pianhang_config_9
        BCC.N    ??pianhang_config_8
        CMP      R0,#+3
        BEQ.N    ??pianhang_config_10
        BCC.N    ??pianhang_config_11
        CMP      R0,#+4
        BEQ.N    ??pianhang_config_12
        B.N      ??pianhang_config_8
//  943     {
//  944     case 1: ph_course++;if(ph_course>7) ph_course=7; Key_delay(); break; //向下选择
??pianhang_config_9:
        LDR.W    R0,??DataTable11_36
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_36
        STRB     R0,[R1, #+0]
        LDR.W    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+8
        BLT.N    ??pianhang_config_13
        MOVS     R0,#+7
        LDR.W    R1,??DataTable11_36
        STRB     R0,[R1, #+0]
??pianhang_config_13:
        BL       Key_delay
        B.N      ??pianhang_config_8
//  945              
//  946     case 2: ph_course--;if(ph_course<0) ph_course=0; Key_delay();break;//向上选择
??pianhang_config_11:
        LDR.W    R0,??DataTable11_36
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable11_36
        STRB     R0,[R1, #+0]
        LDR.W    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??pianhang_config_14
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_36
        STRB     R0,[R1, #+0]
??pianhang_config_14:
        BL       Key_delay
        B.N      ??pianhang_config_8
//  947     
//  948     case 3: ph_DataUp(); Key_delay();  break;
??pianhang_config_10:
        BL       ph_DataUp
        BL       Key_delay
        B.N      ??pianhang_config_8
//  949                
//  950     case 4: ph_DataDown(); Key_delay();  break;  //数据减       
??pianhang_config_12:
        BL       ph_DataDown
        BL       Key_delay
//  951     }		 
//  952 }
??pianhang_config_8:
        POP      {R0,PC}          ;; return
        DATA
??pianhang_config_1:
        DC8      "x",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC8      "y",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC8      0x73, 0x78, 0x00, 0x00
//  953 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  954 void ph_DataUp( void ) 
//  955 {
//  956   if(ph_course==0) 
ph_DataUp:
        LDR.W    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataUp_0
//  957   {
//  958     if(rol==0) rol=1;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataUp_1
        MOVS     R0,#+1
        LDR.N    R1,??DataTable11_4
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  959     else if(rol==1) rol=0;
??ph_DataUp_1:
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??ph_DataUp_2
        MOVS     R0,#+0
        LDR.N    R1,??DataTable11_4
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  960   }
//  961   else if(ph_course==1) 
??ph_DataUp_0:
        LDR.W    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ph_DataUp_3
//  962   {
//  963     if(rol==0) lph1++;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataUp_4
        LDR.N    R0,??DataTable11_9
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_9
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  964     else rph1++;
??ph_DataUp_4:
        LDR.N    R0,??DataTable11_23
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_23
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  965   }
//  966   else if(ph_course==2) 
??ph_DataUp_3:
        LDR.W    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ph_DataUp_5
//  967     if(rol==0) lph2++;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataUp_6
        LDR.N    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_11
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  968     else rph2++;
??ph_DataUp_6:
        LDR.N    R0,??DataTable11_25
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_25
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  969   else if(ph_course==3) 
??ph_DataUp_5:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??ph_DataUp_7
//  970   {
//  971     if(rol==0) lph3++;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataUp_8
        LDR.N    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_13
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  972     else rph3++;
??ph_DataUp_8:
        LDR.N    R0,??DataTable11_27
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_27
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  973   }
//  974   else if(ph_course==4)
??ph_DataUp_7:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??ph_DataUp_9
//  975   {
//  976     if(rol==0) lph4++;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataUp_10
        LDR.N    R0,??DataTable11_15
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_15
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  977     else rph4++;
??ph_DataUp_10:
        LDR.N    R0,??DataTable11_29
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_29
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  978   }
//  979   else if(ph_course==5) 
??ph_DataUp_9:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??ph_DataUp_11
//  980   {
//  981     if(rol==0) lph5++;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataUp_12
        LDR.N    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_17
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  982     else rph5++;
??ph_DataUp_12:
        LDR.N    R0,??DataTable11_31
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_31
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  983   }
//  984   else if(ph_course==6)
??ph_DataUp_11:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+6
        BNE.N    ??ph_DataUp_13
//  985   {
//  986     if(rol==0) lph6++;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataUp_14
        LDR.N    R0,??DataTable11_19
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_19
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  987     else rph6++;
??ph_DataUp_14:
        LDR.N    R0,??DataTable11_33
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_33
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  988   }
//  989   else if(ph_course==7)
??ph_DataUp_13:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??ph_DataUp_2
//  990   {
//  991     if(rol==0) lph7++;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataUp_15
        LDR.N    R0,??DataTable11_21
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_21
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataUp_2
//  992     else rph7++; 
??ph_DataUp_15:
        LDR.N    R0,??DataTable11_35
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_35
        STRB     R0,[R1, #+0]
//  993   }
//  994 }
??ph_DataUp_2:
        BX       LR               ;; return
//  995 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  996 void ph_DataDown(void) 
//  997 {
//  998   if(ph_course==0) 
ph_DataDown:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataDown_0
//  999   {
// 1000     if(rol==0) rol=1;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataDown_1
        MOVS     R0,#+1
        LDR.N    R1,??DataTable11_4
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1001     else if(rol==1) rol=0;
??ph_DataDown_1:
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??ph_DataDown_2
        MOVS     R0,#+0
        LDR.N    R1,??DataTable11_4
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1002   }
// 1003   else if(ph_course==1) 
??ph_DataDown_0:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ph_DataDown_3
// 1004   {
// 1005     if(rol==0) lph1--;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataDown_4
        LDR.N    R0,??DataTable11_9
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_9
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1006     else rph1--;
??ph_DataDown_4:
        LDR.N    R0,??DataTable11_23
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_23
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1007   }
// 1008   else if(ph_course==2) 
??ph_DataDown_3:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ph_DataDown_5
// 1009   {
// 1010     if(rol==0) lph2--;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataDown_6
        LDR.N    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_11
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1011     else rph2--;
??ph_DataDown_6:
        LDR.N    R0,??DataTable11_25
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_25
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1012   }
// 1013   else if(ph_course==3) 
??ph_DataDown_5:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??ph_DataDown_7
// 1014   {
// 1015     if(rol==0) lph3--;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataDown_8
        LDR.N    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_13
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1016     else rph3--;
??ph_DataDown_8:
        LDR.N    R0,??DataTable11_27
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_27
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1017   }
// 1018   else if(ph_course==4) 
??ph_DataDown_7:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??ph_DataDown_9
// 1019   {
// 1020     if(rol==0) lph4--;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataDown_10
        LDR.N    R0,??DataTable11_15
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_15
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1021     else rph4--;
??ph_DataDown_10:
        LDR.N    R0,??DataTable11_29
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_29
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1022   }
// 1023   else if(ph_course==5) 
??ph_DataDown_9:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??ph_DataDown_11
// 1024   {
// 1025     if(rol==0) lph5--;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataDown_12
        LDR.N    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_17
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1026     else rph5--;
??ph_DataDown_12:
        LDR.N    R0,??DataTable11_31
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_31
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1027   }
// 1028   else if(ph_course==6) 
??ph_DataDown_11:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+6
        BNE.N    ??ph_DataDown_13
// 1029   {
// 1030     if(rol==0) lph6--;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataDown_14
        LDR.N    R0,??DataTable11_19
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_19
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1031     else rph6--;
??ph_DataDown_14:
        LDR.N    R0,??DataTable11_33
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_33
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1032   }
// 1033   else if(ph_course==7)
??ph_DataDown_13:
        LDR.N    R0,??DataTable11_36
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??ph_DataDown_2
// 1034   {
// 1035     if(rol==0) lph7--;
        LDR.N    R0,??DataTable11_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ph_DataDown_15
        LDR.N    R0,??DataTable11_21
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_21
        STRB     R0,[R1, #+0]
        B.N      ??ph_DataDown_2
// 1036     else rph7--; 
??ph_DataDown_15:
        LDR.N    R0,??DataTable11_35
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_35
        STRB     R0,[R1, #+0]
// 1037   }
// 1038   
// 1039 }
??ph_DataDown_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     ?_28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     clear_screen_number

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x989681

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     rol

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     real_pointx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     real_pointy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     SetCenterX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     ?_33

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     lph1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     ?_34

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     lph2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     ?_35

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     lph3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     ?_36

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     lph4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_16:
        DC32     ?_37

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_17:
        DC32     lph5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_18:
        DC32     ?_38

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_19:
        DC32     lph6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_20:
        DC32     ?_39

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_21:
        DC32     lph7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_22:
        DC32     ?_40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_23:
        DC32     rph1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_24:
        DC32     ?_41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_25:
        DC32     rph2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_26:
        DC32     ?_42

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_27:
        DC32     rph3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_28:
        DC32     ?_43

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_29:
        DC32     rph4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_30:
        DC32     ?_44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_31:
        DC32     rph5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_32:
        DC32     ?_45

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_33:
        DC32     rph6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_34:
        DC32     ?_46

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_35:
        DC32     rph7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_36:
        DC32     ph_course

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
        DC8 "HIGH_SPEED"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "LOW_SPEED"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "turnspeed"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_3:
        DC8 "ACCE"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_4:
        DC8 "light_1"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_5:
        DC8 "light_2"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_6:
        DC8 "light_3"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_7:
        DC8 "light_4"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_8:
        DC8 "light_5"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_9:
        DC8 "light_6"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_10:
        DC8 "light_7"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_11:
        DC8 "light_8"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_12:
        DC8 "light_9"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_13:
        DC8 "light_10"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_14:
        DC8 "light_11"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_15:
        DC8 "light_12"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_16:
        DC8 "light_13"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_17:
        DC8 "light_14"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_18:
        DC8 "light_15"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_19:
        DC8 "light_16"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_20:
        DC8 "light_17"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_21:
        DC8 "light_18"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_22:
        DC8 "light_19"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_23:
        DC8 "light_20"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_24:
        DC8 "light_21"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_25:
        DC8 "light_22"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_26:
        DC8 "light_23"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_27:
        DC8 "light_24"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_28:
        DC8 "      "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "rl"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "x"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "y"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "sx"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_33:
        DC8 "10-15 lph1"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_34:
        DC8 "15-20 lph2"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_35:
        DC8 "20-30 lph3"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_36:
        DC8 "30-40 lph4"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_37:
        DC8 "40-50 lph5"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_38:
        DC8 "50-70 lph6"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_39:
        DC8 "70-   lph7"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_40:
        DC8 "10-15 rph1"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_41:
        DC8 "15-20 rph2"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_42:
        DC8 "20-30 rph3"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_43:
        DC8 "30-40 rph4"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_44:
        DC8 "40-50 rph5"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_45:
        DC8 "50-70 rph6"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_46:
        DC8 "70-   rph7"
        DC8 0

        END
// 1040 
// 
//  2 791 bytes in section .bss
//    484 bytes in section .rodata
// 20 644 bytes in section .text
// 
// 20 644 bytes of CODE  memory
//    484 bytes of CONST memory
//  2 791 bytes of DATA  memory
//
//Errors: none
//Warnings: 3
