///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      23/Aug/2017  10:34:52
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\0526.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\0526.c
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
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List\0526.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DianG_Init
        EXTERN Key_Process
        EXTERN LED_Fill
        EXTERN LED_Init
        EXTERN LED_P6x8Str
        EXTERN LED_PrintValueFP
        EXTERN LPLD_Flash_Init
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_NVIC_Init
        EXTERN NOpoint
        EXTERN PID_Init
        EXTERN QD_init
        EXTERN Servo_Init
        EXTERN SetSpeed
        EXTERN __aeabi_memcpy4
        EXTERN barrier_init
        EXTERN botton_dial_switch_gpio_init
        EXTERN camera_init
        EXTERN led_gpio_int
        EXTERN parameter_flash
        EXTERN pianhang_config
        EXTERN picture_send
        EXTERN pit_init
        EXTERN `push`
        EXTERN real_pointx
        EXTERN real_pointy
        EXTERN sendDataToScope
        EXTERN speed
        EXTERN start

        PUBLIC boma_init_gpio
        PUBLIC code_switch
        PUBLIC main
        PUBLIC nvic_init

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\0526.c
//    1 
//    2 /**
//    3  2017.08.21创建
//    4  */
//    5 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable4  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable4_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//    6 #include "camera_test.h"  
//    7 #include "timer.h"
//    8 #include "infrared.h"
//    9 #include "oled.h"
//   10 #include "botton.h"
//   11 #include "Freecars.h"
//   12 #include "barrier.h"
//   13 #include "myflash.h"
//   14 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   15 uint8 code_switch;   
code_switch:
        DS8 1
//   16 
//   17 void nvic_init(void);
//   18 void boma_init_gpio(void);
//   19 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 void main (void)
//   21 {
main:
        PUSH     {R7,LR}
//   22   DisableInterrupts;
        CPSID    I
//   23   nvic_init();//中断优先级配置
        BL       nvic_init
//   24   camera_init();//摄像头相关初始化
        BL       camera_init
//   25   //infrared_init();//红外计数
//   26   pit_init();//10ms定时中断
        BL       pit_init
//   27   QD_init();//编码器,FTM2
        BL       QD_init
//   28   Servo_Init();  //初始化舵机,FTM1
        BL       Servo_Init
//   29   DianG_Init(); //电机 FTM0
        BL       DianG_Init
//   30   PID_Init();   //转向和速度PID初始化
        BL       PID_Init
//   31   barrier_init();  //避障
        BL       barrier_init
//   32   boma_init_gpio();//拨码开关初始化
        BL       boma_init_gpio
//   33   //flash部分
//   34   LPLD_Flash_Init();
        BL       LPLD_Flash_Init
//   35   parameter_flash();
        BL       parameter_flash
//   36   /*--------------OLED部分初始化-------------------*/
//   37   led_gpio_int();//端口
        BL       led_gpio_int
//   38   LED_Init();//屏幕
        BL       LED_Init
//   39   LED_Fill(0);
        MOVS     R0,#+0
        BL       LED_Fill
//   40   /*--------------按键-------------------*/
//   41   botton_dial_switch_gpio_init(); //按键端口初始化
        BL       botton_dial_switch_gpio_init
//   42   Key_Process();//按键过程
        BL       Key_Process
//   43   
//   44   enable_irq(PORTD_IRQn);//障碍中断
        MOVS     R0,#+90
        BL       NVIC_EnableIRQ
//   45   enable_irq(PORTE_IRQn);//障碍中断
        MOVS     R0,#+91
        BL       NVIC_EnableIRQ
//   46   enable_irq(PIT0_IRQn);//优先级配置后记得使能中断,定时中断
        MOVS     R0,#+68
        BL       NVIC_EnableIRQ
//   47   enable_irq(PORTB_IRQn);//采图中断
        MOVS     R0,#+88
        BL       NVIC_EnableIRQ
//   48   //enable_irq(PORTA_IRQn);//计数中断
//   49   
//   50   EnableInterrupts;
        CPSIE    I
//   51   start();     //发车
        BL       start
        B.N      ??main_0
//   52   while(1)
//   53   {
//   54     if( PTC8_I == 0 && PTC9_I == 0 && PTC10_I == 0 && PTC11_I == 0 )
//   55       code_switch=0;            
//   56     else if( PTC8_I == 0 && PTC9_I == 0 && PTC10_I == 0 && PTC11_I == 1 )
//   57       code_switch=1;                                 
//   58     else if( PTC8_I == 0 && PTC9_I == 0 && PTC10_I == 1 && PTC11_I == 0 )
//   59       code_switch=2;                
//   60     else if( PTC8_I == 0 && PTC9_I == 0 && PTC10_I == 1 && PTC11_I == 1 )
//   61       code_switch=3;               
//   62     else if( PTC8_I == 0 && PTC9_I == 1 && PTC10_I == 0 && PTC11_I == 0 )
//   63       code_switch=4;             
//   64     else if( PTC8_I == 0 && PTC9_I == 1 && PTC10_I == 0 && PTC11_I == 1 )
//   65       code_switch=5;            
//   66             
//   67     else if( PTC8_I == 1 && PTC9_I == 1 && PTC10_I == 1 && PTC11_I == 1 )
//   68       code_switch=16;  //竞赛 
//   69     
//   70     if(code_switch==0)
//   71     {
//   72       LED_P6x8Str(8, 2,(unsigned char*)"real_pointx"); 
??main_1:
        LDR.W    R2,??DataTable4_2
        MOVS     R1,#+2
        MOVS     R0,#+8
        BL       LED_P6x8Str
//   73       LED_PrintValueFP(70,2,real_pointx,3); 
        MOVS     R3,#+3
        LDR.W    R0,??DataTable4_3
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//   74       LED_P6x8Str(8, 3,(unsigned char*)"real_pointy"); 
        LDR.W    R2,??DataTable4_4
        MOVS     R1,#+3
        MOVS     R0,#+8
        BL       LED_P6x8Str
//   75       LED_PrintValueFP(70,3,real_pointy,3); 
        MOVS     R3,#+3
        LDR.W    R0,??DataTable4_5
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//   76       LED_P6x8Str(8, 4,(unsigned char*)"NOpoint"); 
        LDR.W    R2,??DataTable4_6
        MOVS     R1,#+4
        MOVS     R0,#+8
        BL       LED_P6x8Str
//   77       LED_PrintValueFP(70,4,NOpoint,1); 
        MOVS     R3,#+1
        LDR.N    R0,??DataTable4_7
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+70
        BL       LED_PrintValueFP
//   78     }
??main_0:
        LDR.N    R0,??DataTable4_8  ;; 0x43fe1220
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_2
        LDR.N    R0,??DataTable4_9  ;; 0x43fe1224
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_2
        LDR.N    R0,??DataTable4_10  ;; 0x43fe1228
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_2
        LDR.N    R0,??DataTable4_11  ;; 0x43fe122c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_2
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_12
        STRB     R0,[R1, #+0]
        B.N      ??main_3
??main_2:
        LDR.N    R0,??DataTable4_8  ;; 0x43fe1220
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_4
        LDR.N    R0,??DataTable4_9  ;; 0x43fe1224
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_4
        LDR.N    R0,??DataTable4_10  ;; 0x43fe1228
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_4
        LDR.N    R0,??DataTable4_11  ;; 0x43fe122c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_4
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_12
        STRB     R0,[R1, #+0]
        B.N      ??main_3
??main_4:
        LDR.N    R0,??DataTable4_8  ;; 0x43fe1220
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_5
        LDR.N    R0,??DataTable4_9  ;; 0x43fe1224
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_5
        LDR.N    R0,??DataTable4_10  ;; 0x43fe1228
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_5
        LDR.N    R0,??DataTable4_11  ;; 0x43fe122c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_5
        MOVS     R0,#+2
        LDR.N    R1,??DataTable4_12
        STRB     R0,[R1, #+0]
        B.N      ??main_3
??main_5:
        LDR.N    R0,??DataTable4_8  ;; 0x43fe1220
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_6
        LDR.N    R0,??DataTable4_9  ;; 0x43fe1224
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_6
        LDR.N    R0,??DataTable4_10  ;; 0x43fe1228
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_6
        LDR.N    R0,??DataTable4_11  ;; 0x43fe122c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_6
        MOVS     R0,#+3
        LDR.N    R1,??DataTable4_12
        STRB     R0,[R1, #+0]
        B.N      ??main_3
??main_6:
        LDR.N    R0,??DataTable4_8  ;; 0x43fe1220
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_7
        LDR.N    R0,??DataTable4_9  ;; 0x43fe1224
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_7
        LDR.N    R0,??DataTable4_10  ;; 0x43fe1228
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_7
        LDR.N    R0,??DataTable4_11  ;; 0x43fe122c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_7
        MOVS     R0,#+4
        LDR.N    R1,??DataTable4_12
        STRB     R0,[R1, #+0]
        B.N      ??main_3
??main_7:
        LDR.N    R0,??DataTable4_8  ;; 0x43fe1220
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_8
        LDR.N    R0,??DataTable4_9  ;; 0x43fe1224
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_8
        LDR.N    R0,??DataTable4_10  ;; 0x43fe1228
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_8
        LDR.N    R0,??DataTable4_11  ;; 0x43fe122c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_8
        MOVS     R0,#+5
        LDR.N    R1,??DataTable4_12
        STRB     R0,[R1, #+0]
        B.N      ??main_3
??main_8:
        LDR.N    R0,??DataTable4_8  ;; 0x43fe1220
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_3
        LDR.N    R0,??DataTable4_9  ;; 0x43fe1224
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_3
        LDR.N    R0,??DataTable4_10  ;; 0x43fe1228
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_3
        LDR.N    R0,??DataTable4_11  ;; 0x43fe122c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_3
        MOVS     R0,#+16
        LDR.N    R1,??DataTable4_12
        STRB     R0,[R1, #+0]
??main_3:
        LDR.N    R0,??DataTable4_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??main_1
//   79     else if(code_switch==1) //偏航调整
        LDR.N    R0,??DataTable4_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_9
//   80       pianhang_config();
        BL       pianhang_config
        B.N      ??main_0
//   81     else if(code_switch==2) //传图
??main_9:
        LDR.N    R0,??DataTable4_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??main_10
//   82     {
//   83       disable_irq(PIT0_IRQn);
        MOVS     R0,#+68
        BL       NVIC_DisableIRQ
//   84       picture_send();
        BL       picture_send
//   85       enable_irq(PIT0_IRQn);
        MOVS     R0,#+68
        BL       NVIC_EnableIRQ
        B.N      ??main_0
//   86     }
//   87     else if(code_switch==3) //飞思卡尔上位机PID调整
??main_10:
        LDR.N    R0,??DataTable4_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.W    ??main_0
//   88     {
//   89       push(0,(uint16)speed);
        LDR.N    R0,??DataTable4_13
        LDRH     R0,[R0, #+0]
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+0
        BL       `push`
//   90       push(1,(uint16)SetSpeed);
        LDR.N    R0,??DataTable4_14
        LDRH     R0,[R0, #+0]
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+1
        BL       `push`
//   91       sendDataToScope();
        BL       sendDataToScope
        B.N      ??main_0
//   92     }
//   93     
//   94   } 
//   95 }
//   96 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   97 void nvic_init(void)  
//   98 {
nvic_init:
        PUSH     {R7,LR}
//   99   static NVIC_InitTypeDef nvic_init_struct0;
//  100   nvic_init_struct0.NVIC_IRQChannel=PIT0_IRQn;//   10ms定时
        MOVS     R0,#+68
        LDR.N    R1,??DataTable4_15
        STRB     R0,[R1, #+0]
//  101   nvic_init_struct0.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
        MOVS     R0,#+5
        LDR.N    R1,??DataTable4_15
        STR      R0,[R1, #+4]
//  102   nvic_init_struct0.NVIC_IRQChannelPreemptionPriority=1;//抢占优先级
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_15
        STR      R0,[R1, #+8]
//  103   nvic_init_struct0.NVIC_IRQChannelSubPriority=0;//NVIC响应式优先级
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_15
        STR      R0,[R1, #+12]
//  104   LPLD_NVIC_Init(nvic_init_struct0);
        LDR.N    R1,??DataTable4_15
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  105   
//  106   static NVIC_InitTypeDef nvic_init_struct1;
//  107   nvic_init_struct1.NVIC_IRQChannel=PORTB_IRQn;//      摄像头图像采集，优先级最高
        MOVS     R0,#+88
        LDR.N    R1,??DataTable4_16
        STRB     R0,[R1, #+0]
//  108   nvic_init_struct1.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2;//NVIC 中断分组
        MOVS     R0,#+5
        LDR.N    R1,??DataTable4_16
        STR      R0,[R1, #+4]
//  109   nvic_init_struct1.NVIC_IRQChannelPreemptionPriority=0;//NVIC抢占式优先级
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_16
        STR      R0,[R1, #+8]
//  110   nvic_init_struct1.NVIC_IRQChannelSubPriority=0;//NVIC响应式优先级
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_16
        STR      R0,[R1, #+12]
//  111   LPLD_NVIC_Init(nvic_init_struct1);
        LDR.N    R1,??DataTable4_16
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  112 
//  113   static NVIC_InitTypeDef  nvic_init_struct2;
//  114   nvic_init_struct2.NVIC_IRQChannel=PORTD_IRQn;//      障碍中断
        MOVS     R0,#+90
        LDR.N    R1,??DataTable4_17
        STRB     R0,[R1, #+0]
//  115   nvic_init_struct2.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2;//NVIC 中断分组
        MOVS     R0,#+5
        LDR.N    R1,??DataTable4_17
        STR      R0,[R1, #+4]
//  116   nvic_init_struct2.NVIC_IRQChannelPreemptionPriority=1;//抢占优先级
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_17
        STR      R0,[R1, #+8]
//  117   nvic_init_struct2.NVIC_IRQChannelSubPriority=2;//NVIC响应式优先级
        MOVS     R0,#+2
        LDR.N    R1,??DataTable4_17
        STR      R0,[R1, #+12]
//  118   LPLD_NVIC_Init(nvic_init_struct2);
        LDR.N    R1,??DataTable4_17
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  119  
//  120   static NVIC_InitTypeDef nvic_init_struct3;
//  121   nvic_init_struct3.NVIC_IRQChannel=PORTE_IRQn;//  障碍中断
        MOVS     R0,#+91
        LDR.N    R1,??DataTable4_18
        STRB     R0,[R1, #+0]
//  122   nvic_init_struct3.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
        MOVS     R0,#+5
        LDR.N    R1,??DataTable4_18
        STR      R0,[R1, #+4]
//  123   nvic_init_struct3.NVIC_IRQChannelPreemptionPriority=1;//抢占优先级
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_18
        STR      R0,[R1, #+8]
//  124   nvic_init_struct3.NVIC_IRQChannelSubPriority=3;//NVIC响应式优先级
        MOVS     R0,#+3
        LDR.N    R1,??DataTable4_18
        STR      R0,[R1, #+12]
//  125   LPLD_NVIC_Init(nvic_init_struct3);
        LDR.N    R1,??DataTable4_18
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  126   
//  127   static NVIC_InitTypeDef nvic_init_struct4;
//  128   nvic_init_struct4.NVIC_IRQChannel=PORTA_IRQn ;//  信标计数
        MOVS     R0,#+87
        LDR.N    R1,??DataTable4_19
        STRB     R0,[R1, #+0]
//  129   nvic_init_struct4.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
        MOVS     R0,#+5
        LDR.N    R1,??DataTable4_19
        STR      R0,[R1, #+4]
//  130   nvic_init_struct4.NVIC_IRQChannelPreemptionPriority=1;//抢占优先级
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_19
        STR      R0,[R1, #+8]
//  131   nvic_init_struct4.NVIC_IRQChannelSubPriority=1;//NVIC响应式优先级
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_19
        STR      R0,[R1, #+12]
//  132   LPLD_NVIC_Init(nvic_init_struct4);
        LDR.N    R1,??DataTable4_19
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  133   
//  134   static NVIC_InitTypeDef nvic_init_struct5;
//  135   nvic_init_struct5.NVIC_IRQChannel=UART4_RX_TX_IRQn ;//  通信中断
        MOVS     R0,#+53
        LDR.N    R1,??DataTable4_20
        STRB     R0,[R1, #+0]
//  136   nvic_init_struct5.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
        MOVS     R0,#+5
        LDR.N    R1,??DataTable4_20
        STR      R0,[R1, #+4]
//  137   nvic_init_struct5.NVIC_IRQChannelPreemptionPriority=0;//抢占优先级
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_20
        STR      R0,[R1, #+8]
//  138   nvic_init_struct5.NVIC_IRQChannelSubPriority=2;//NVIC响应式优先级
        MOVS     R0,#+2
        LDR.N    R1,??DataTable4_20
        STR      R0,[R1, #+12]
//  139   LPLD_NVIC_Init(nvic_init_struct5);
        LDR.N    R1,??DataTable4_20
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  140   
//  141   static NVIC_InitTypeDef nvic_init_struct6;    
//  142   nvic_init_struct6.NVIC_IRQChannel=UART3_RX_TX_IRQn ;//  通信中断
        MOVS     R0,#+51
        LDR.N    R1,??DataTable4_21
        STRB     R0,[R1, #+0]
//  143   nvic_init_struct6.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_2 ;//NVIC 中断分组
        MOVS     R0,#+5
        LDR.N    R1,??DataTable4_21
        STR      R0,[R1, #+4]
//  144   nvic_init_struct6.NVIC_IRQChannelPreemptionPriority=0;//抢占优先级
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_21
        STR      R0,[R1, #+8]
//  145   nvic_init_struct6.NVIC_IRQChannelSubPriority=1;//NVIC响应式优先级
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_21
        STR      R0,[R1, #+12]
//  146   LPLD_NVIC_Init(nvic_init_struct6);
        LDR.N    R1,??DataTable4_21
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  147 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??nvic_init_struct0:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??nvic_init_struct1:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??nvic_init_struct2:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??nvic_init_struct3:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??nvic_init_struct4:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??nvic_init_struct5:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??nvic_init_struct6:
        DS8 20
//  148 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 void boma_init_gpio(void)
//  150 {
boma_init_gpio:
        PUSH     {R7,LR}
//  151   static GPIO_InitTypeDef boma1_io_struct;
//  152   boma1_io_struct.GPIO_PTx=PTC;
        LDR.N    R0,??DataTable4_22  ;; 0x400ff080
        LDR.N    R1,??DataTable4_23
        STR      R0,[R1, #+0]
//  153   boma1_io_struct.GPIO_Pins= GPIO_Pin8|GPIO_Pin9|GPIO_Pin10|GPIO_Pin11;
        MOV      R0,#+3840
        LDR.N    R1,??DataTable4_23
        STR      R0,[R1, #+4]
//  154   boma1_io_struct.GPIO_Dir=DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+12]
//  155   boma1_io_struct.GPIO_PinControl=INPUT_PULL_UP;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable4_23
        STR      R0,[R1, #+8]
//  156   LPLD_GPIO_Init(boma1_io_struct);
        LDR.N    R1,??DataTable4_23
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  157   
//  158 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     real_pointx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     real_pointy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     NOpoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x43fe1220

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x43fe1224

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x43fe1228

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x43fe122c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     code_switch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     SetSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     ??nvic_init_struct0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     ??nvic_init_struct1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     ??nvic_init_struct2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     ??nvic_init_struct3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     ??nvic_init_struct4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     ??nvic_init_struct5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     ??nvic_init_struct6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     ??boma1_io_struct

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??boma1_io_struct:
        DS8 20

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
        DC8 "real_pointx"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "real_pointy"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "NOpoint"

        END
//  159 
//  160 
// 
//   161 bytes in section .bss
//    32 bytes in section .rodata
// 1 042 bytes in section .text
// 
// 1 042 bytes of CODE  memory
//    32 bytes of CONST memory
//   161 bytes of DATA  memory
//
//Errors: none
//Warnings: 3
