///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      07/Feb/2018  18:55:56
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\app\timer.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\app\timer.c
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
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\iar\FLASH\List\timer.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN NOpoint
        EXTERN __aeabi_memcpy4
        EXTERN ob_gpio_init
        EXTERN real_pointx
        EXTERN real_pointy

        PUBLIC Key_delay
        PUBLIC errleft
        PUBLIC errright
        PUBLIC pit0_isr
        PUBLIC pit_init

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\C_cong0820\app\timer.c
//    1 
//    2 #include "timer.h"
//    3 #include "camera.h"
//    4 #include "obstacle.h"
//    5 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    6 uint8 errleft[2], errright[2];
errleft:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
errright:
        DS8 2
//    7 extern uint8 NOpoint;
//    8 extern uint8 real_pointx, real_pointy;
//    9 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   10 void pit_init( void )
//   11 {
pit_init:
        PUSH     {R7,LR}
//   12     static PIT_InitTypeDef pit0_init_struct;
//   13     pit0_init_struct.PIT_Pitx = PIT0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+0]
//   14     pit0_init_struct.PIT_PeriodMs = 10;    //计算时间会到2ms，
        MOVS     R0,#+10
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+8]
//   15     pit0_init_struct.PIT_Isr = pit0_isr;   //设置中断函数
        ADR.W    R0,pit0_isr
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+16]
//   16     LPLD_PIT_Init( pit0_init_struct );
        LDR.N    R1,??DataTable1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   17     LPLD_PIT_EnableIrq( pit0_init_struct );
        LDR.N    R1,??DataTable1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   18 }   
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??pit0_init_struct:
        DS8 20
//   19 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   20 void pit0_isr( void )
//   21 {
pit0_isr:
        PUSH     {R7,LR}
//   22   static uint32 cnt1000ms;
//   23   static uint8 barrier_flag=0;
//   24   if(!barrier_flag)
        LDR.N    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit0_isr_0
//   25   cnt1000ms++;
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
//   26   if(cnt1000ms>=500)
??pit0_isr_0:
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+500
        BCC.N    ??pit0_isr_1
//   27   {
//   28     barrier_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+0]
//   29     ob_gpio_init();
        BL       ob_gpio_init
//   30     cnt1000ms=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
//   31   }
//   32     
//   33     //if(NOpoint==0&&real_pointy>51&&45<real_pointx&&real_pointx<130)
//   34     /*-----------------小打脚-----------------------*/
//   35     
//   36     if( NOpoint == 0 && 51 < real_pointx && real_pointx < 141 && real_pointy < 25  )
??pit0_isr_1:
        LDR.N    R0,??DataTable1_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit0_isr_2
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+52
        CMP      R0,#+89
        BCS.N    ??pit0_isr_2
        LDR.N    R0,??DataTable1_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+25
        BGE.N    ??pit0_isr_2
//   37     {
//   38         //单纯主从引脚连接E26-AA16  E27-AA17 E28-AA18 A4-AA19 A5-AA12 A7-AA13可触发中断
//   39         if( real_pointx <= 90 && errleft[1] != 1 &&errright[0] != 1 &&errright[1] != 1) //障碍在左
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+91
        BGE.N    ??pit0_isr_3
        LDR.N    R0,??DataTable1_6
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??pit0_isr_3
        LDR.N    R0,??DataTable1_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??pit0_isr_3
        LDR.N    R0,??DataTable1_7
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??pit0_isr_3
//   40         {
//   41             PTA19_O = 1;  //A16输出高电平 ，与主单片机E26相连
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_8  ;; 0x43fe004c
        STR      R0,[R1, #+0]
//   42             PTA17_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_9  ;; 0x43fe0044
        STR      R0,[R1, #+0]
//   43             PTA12_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_10  ;; 0x43fe0030
        STR      R0,[R1, #+0]
//   44             PTA13_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_11  ;; 0x43fe0034
        STR      R0,[R1, #+0]
//   45             errleft[0] = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+0]
//   46             errleft[1] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+1]
//   47             errright[0] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+0]
//   48             errright[1] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+1]
        B.N      ??pit0_isr_4
//   49         }
//   50         else if(real_pointx > 90 && errleft[0] != 1 && errleft[1] != 1 &&errright[1] != 1)//障碍在右
??pit0_isr_3:
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+91
        BLT.W    ??pit0_isr_4
        LDR.N    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.W    ??pit0_isr_4
        LDR.N    R0,??DataTable1_6
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.W    ??pit0_isr_4
        LDR.N    R0,??DataTable1_7
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.W    ??pit0_isr_4
//   51         {
//   52             PTA19_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_8  ;; 0x43fe004c
        STR      R0,[R1, #+0]
//   53             PTA17_O = 1;//A17输出高电平 ，与主单片机E27相连
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_9  ;; 0x43fe0044
        STR      R0,[R1, #+0]
//   54             PTA12_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_10  ;; 0x43fe0030
        STR      R0,[R1, #+0]
//   55             PTA13_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_11  ;; 0x43fe0034
        STR      R0,[R1, #+0]
//   56             errleft[0] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+0]
//   57             errleft[1] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+1]
//   58             errright[0] = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+0]
//   59             errright[1] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+1]
        B.N      ??pit0_isr_4
//   60         }
//   61     }
//   62     /*---------------------大打脚------------------------------*/
//   63    else if( NOpoint == 0 && real_pointy >= 25 && 36 <= real_pointx && real_pointx <= 146  ) //pointy在55左右障碍点仍有效
??pit0_isr_2:
        LDR.N    R0,??DataTable1_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit0_isr_5
        LDR.N    R0,??DataTable1_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+25
        BLT.N    ??pit0_isr_5
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+36
        CMP      R0,#+111
        BCS.N    ??pit0_isr_5
//   64     {
//   65         if( real_pointx <= 90 && errleft[0] != 1 &&errright[0] != 1&&errright[1] != 1) //障碍在左
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+91
        BGE.N    ??pit0_isr_6
        LDR.N    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??pit0_isr_6
        LDR.N    R0,??DataTable1_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??pit0_isr_6
        LDR.N    R0,??DataTable1_7
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??pit0_isr_6
//   66         {
//   67             PTA19_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_8  ;; 0x43fe004c
        STR      R0,[R1, #+0]
//   68             PTA17_O = 0;//A17输出高电平 ，与主单片机E27相连
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_9  ;; 0x43fe0044
        STR      R0,[R1, #+0]
//   69             PTA12_O = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_10  ;; 0x43fe0030
        STR      R0,[R1, #+0]
//   70             PTA13_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_11  ;; 0x43fe0034
        STR      R0,[R1, #+0]
//   71             errleft[0] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+0]
//   72             errleft[1] = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+1]
//   73             errright[0] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+0]
//   74             errright[1] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+1]
        B.N      ??pit0_isr_4
//   75         }
//   76         else if( real_pointx > 90 && errleft[0] != 1 && errleft[1] != 1 && errright[0] != 1)//障碍在右
??pit0_isr_6:
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+91
        BLT.N    ??pit0_isr_4
        LDR.N    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??pit0_isr_4
        LDR.N    R0,??DataTable1_6
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??pit0_isr_4
        LDR.N    R0,??DataTable1_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??pit0_isr_4
//   77         {
//   78             PTA19_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_8  ;; 0x43fe004c
        STR      R0,[R1, #+0]
//   79             PTA17_O = 0;//A17输出高电平 ，与主单片机E27相连
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_9  ;; 0x43fe0044
        STR      R0,[R1, #+0]
//   80             PTA12_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_10  ;; 0x43fe0030
        STR      R0,[R1, #+0]
//   81             PTA13_O = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_11  ;; 0x43fe0034
        STR      R0,[R1, #+0]
//   82             errleft[1] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+1]
//   83             errleft[0] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+0]
//   84             errright[0] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+0]
//   85             errright[1] = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+1]
        B.N      ??pit0_isr_4
//   86         }
//   87     }
//   88     else if(NOpoint)
??pit0_isr_5:
        LDR.N    R0,??DataTable1_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??pit0_isr_4
//   89     {
//   90       PTA19_O = 0; //避障后看不到图，恢复低电平
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_8  ;; 0x43fe004c
        STR      R0,[R1, #+0]
//   91         //disable_irq(PIT1_IRQn);
//   92         errleft[0] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+0]
//   93         PTA17_O = 0; //避障后看不到图，恢复低电平
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_9  ;; 0x43fe0044
        STR      R0,[R1, #+0]
//   94         //disable_irq(PIT1_IRQn);
//   95         errright[0] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+0]
//   96          PTA12_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_10  ;; 0x43fe0030
        STR      R0,[R1, #+0]
//   97         errleft[1] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+1]
//   98         PTA13_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_11  ;; 0x43fe0034
        STR      R0,[R1, #+0]
//   99         errright[1] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+1]
//  100     }
//  101 }
??pit0_isr_4:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ??pit0_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ??barrier_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     ??cnt1000ms

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     NOpoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     real_pointx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     real_pointy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     errleft

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     errright

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x43fe004c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x43fe0044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0x43fe0030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     0x43fe0034

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??cnt1000ms:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
??barrier_flag:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  102 void Key_delay( void )
//  103 {
//  104     uint16 i, n;
//  105     for( i = 0; i < 19000; i++ )
Key_delay:
        MOVS     R0,#+0
        B.N      ??Key_delay_0
//  106     {
//  107         for( n = 0; n < 50; n++ )
//  108         {
//  109             asm( "nop" );
??Key_delay_1:
        nop
//  110         }
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
//  111     }
//  112 }
??Key_delay_3:
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
//  29 bytes in section .bss
// 632 bytes in section .text
// 
// 632 bytes of CODE memory
//  29 bytes of DATA memory
//
//Errors: none
//Warnings: none
