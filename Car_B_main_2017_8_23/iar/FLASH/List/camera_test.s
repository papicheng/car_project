///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      23/Aug/2017  10:34:54
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\camera_test.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\camera_test.c
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
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List\camera_test.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_DMA_Init
        EXTERN LPLD_GPIO_EnableIrq
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutChar
        EXTERN __aeabi_memcpy4
        EXTERN uart4_isr

        PUBLIC Calculate_Middle_Point
        PUBLIC Image1
        PUBLIC Image2
        PUBLIC MT9V032_CFG_init
        PUBLIC NOpoint
        PUBLIC WhichBuffer
        PUBLIC bz_nopoint
        PUBLIC bz_turn_pwm
        PUBLIC bzx
        PUBLIC bzy
        PUBLIC camera_init
        PUBLIC end_flag
        PUBLIC last_nopoint
        PUBLIC lock
        PUBLIC my_delay
        PUBLIC picture_send
        PUBLIC portb_isr
        PUBLIC pre_pointx
        PUBLIC real_pointx
        PUBLIC real_pointy
        PUBLIC row
        PUBLIC rowAdr
        PUBLIC setvalue
        PUBLIC start_flag
        PUBLIC uart3_isr

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\camera_test.c
//    1 
//    2 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable7  ;; 0xe000e100
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
        LDR.W    R2,??DataTable7_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//    3 #include "camera_test.h"
//    4 #include "timer.h"
//    5 #include "Freecars.h"
//    6 
//    7 #define title1_received 0xFA
//    8 #define title2_received 0xFF
//    9 #define title3_received 0x0C
//   10 #define title4_received 0xFC

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   11 uint8 bzx;
bzx:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   12 uint8 bzy;
bzy:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   13 uint8 bz_nopoint;
bz_nopoint:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   14 uint32 bz_turn_pwm;
bz_turn_pwm:
        DS8 4
//   15 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   16 unsigned char Image1[ROW][COLUMN];
Image1:
        DS8 43200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   17 unsigned char Image2[ROW][COLUMN];
Image2:
        DS8 43200

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   18 uint8 end_flag=0; 
end_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   19 uint8 start_flag=0;
start_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   20 uint8 row=0;
row:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   21 uint8 lock=0;
lock:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   22 uint8 WhichBuffer = 1;
WhichBuffer:
        DC8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   23 uint8 setvalue=80;//亮点亮度阈值
setvalue:
        DC8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   24 uint8 rowAdr,NOpoint,real_pointx,real_pointy,pre_pointx;
rowAdr:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
NOpoint:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
real_pointx:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
real_pointy:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
pre_pointx:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   25 uint8 last_nopoint=1;
last_nopoint:
        DC8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void camera_init(void)
//   27 {
camera_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   28   static GPIO_InitTypeDef dmaReq_port_struct;
//   29   dmaReq_port_struct.GPIO_PTx = PTB;
        LDR.W    R0,??DataTable7_2  ;; 0x400ff040
        LDR.W    R1,??DataTable7_3
        STR      R0,[R1, #+0]
//   30   dmaReq_port_struct.GPIO_Pins = GPIO_Pin22;
        MOVS     R0,#+4194304
        LDR.W    R1,??DataTable7_3
        STR      R0,[R1, #+4]
//   31   dmaReq_port_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+12]
//   32   dmaReq_port_struct.GPIO_PinControl =IRQC_DMAFA | INPUT_PULL_UP;//下降沿产生DMA请求,输入上拉
        LDR.W    R0,??DataTable7_4  ;; 0x20003
        LDR.W    R1,??DataTable7_3
        STR      R0,[R1, #+8]
//   33   LPLD_GPIO_Init(dmaReq_port_struct);
        LDR.W    R1,??DataTable7_3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   34   
//   35   static GPIO_InitTypeDef href_port_struct;  //行中断接受端口
//   36   href_port_struct.GPIO_PTx = PTB;    
        LDR.W    R0,??DataTable7_2  ;; 0x400ff040
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//   37   href_port_struct.GPIO_Pins = GPIO_Pin20;   
        MOVS     R0,#+1048576
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+4]
//   38   href_port_struct.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_5
        STRB     R0,[R1, #+12]
//   39   href_port_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;  //内部上拉|下降沿中断
        LDR.W    R0,??DataTable7_6  ;; 0x90013
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+8]
//   40   href_port_struct.GPIO_Isr = portb_isr;        //中断函数
        ADR.W    R0,portb_isr
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+16]
//   41   LPLD_GPIO_Init(href_port_struct);
        LDR.W    R1,??DataTable7_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   42   LPLD_GPIO_EnableIrq(href_port_struct);
        LDR.W    R1,??DataTable7_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   43   
//   44   static GPIO_InitTypeDef vsync_port_struct;  //场中断接受端口
//   45   vsync_port_struct.GPIO_PTx = PTB;    
        LDR.W    R0,??DataTable7_2  ;; 0x400ff040
        LDR.W    R1,??DataTable7_7
        STR      R0,[R1, #+0]
//   46   vsync_port_struct.GPIO_Pins = GPIO_Pin23;   
        MOVS     R0,#+8388608
        LDR.W    R1,??DataTable7_7
        STR      R0,[R1, #+4]
//   47   vsync_port_struct.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+12]
//   48   vsync_port_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;    //内部上拉|下降沿中断
        LDR.W    R0,??DataTable7_6  ;; 0x90013
        LDR.W    R1,??DataTable7_7
        STR      R0,[R1, #+8]
//   49   vsync_port_struct.GPIO_Isr = portb_isr;        //中断函数
        ADR.W    R0,portb_isr
        LDR.W    R1,??DataTable7_7
        STR      R0,[R1, #+16]
//   50   LPLD_GPIO_Init(vsync_port_struct);
        LDR.W    R1,??DataTable7_7
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   51   LPLD_GPIO_EnableIrq(vsync_port_struct);
        LDR.W    R1,??DataTable7_7
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   52   
//   53   //摄像头到单片机数据口初始化：PTC0~PTC7
//   54   static GPIO_InitTypeDef data_port_struct;
//   55   data_port_struct.GPIO_PTx = PTC;
        LDR.W    R0,??DataTable7_8  ;; 0x400ff080
        LDR.W    R1,??DataTable7_9
        STR      R0,[R1, #+0]
//   56   data_port_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_9
        STRB     R0,[R1, #+12]
//   57   data_port_struct.GPIO_Pins = GPIO_Pin0_7;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable7_9
        STR      R0,[R1, #+4]
//   58   data_port_struct.GPIO_PinControl = IRQC_DIS|INPUT_PULL_DIS;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_9
        STR      R0,[R1, #+8]
//   59   LPLD_GPIO_Init(data_port_struct);
        LDR.W    R1,??DataTable7_9
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   60   
//   61   //DMA参数配置
//   62   static DMA_InitTypeDef  dma_init_struct;
//   63   dma_init_struct.DMA_CHx = DMA_CH0;    //CH0通道
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_10
        STRB     R0,[R1, #+0]
//   64   dma_init_struct.DMA_Req = PORTB_DMAREQ;     //PORTB22为请求源
        MOVS     R0,#+50
        LDR.W    R1,??DataTable7_10
        STRB     R0,[R1, #+1]
//   65   dma_init_struct.DMA_MajorLoopCnt = COLUMN;   //主循环计数值：行采集点数，宽度
        MOVS     R0,#+180
        LDR.W    R1,??DataTable7_10
        STRH     R0,[R1, #+4]
//   66   dma_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次传输1字节
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_10
        STR      R0,[R1, #+8]
//   67   dma_init_struct.DMA_SourceAddr = (uint32)&PTC->PDIR; //源地址：PTC0-PTC7,Port Data Input Register
        LDR.W    R0,??DataTable7_11  ;; 0x400ff090
        LDR.W    R1,??DataTable7_10
        STR      R0,[R1, #+12]
//   68   dma_init_struct.DMA_DestAddr = (uint32)Image1;      //目的地址：存放图像的数组
        LDR.W    R0,??DataTable7_12
        LDR.W    R1,??DataTable7_10
        STR      R0,[R1, #+24]
//   69   dma_init_struct.DMA_DestAddrOffset = 1;       //目的地址偏移：每次读入增加1
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_10
        STRH     R0,[R1, #+30]
//   70   dma_init_struct.DMA_AutoDisableReq = TRUE;    //自动禁用请求，使能后通道请求将在主循环结束后禁用
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_10
        STRB     R0,[R1, #+36]
//   71   LPLD_DMA_Init(dma_init_struct);//初始化但未使能
        LDR.W    R1,??DataTable7_10
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//   72   
//   73   static UART_InitTypeDef uart4_init_struct;
//   74   uart4_init_struct.UART_Uartx = UART4; //UART4 用于与电脑通信           
        LDR.W    R0,??DataTable7_13  ;; 0x400ea000
        LDR.W    R1,??DataTable7_14
        STR      R0,[R1, #+0]
//   75   uart4_init_struct.UART_BaudRate = 115200;
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable7_14
        STR      R0,[R1, #+4]
//   76   uart4_init_struct.UART_TxPin = PTE24;//发送引脚为PTE24
        MOVS     R0,#+148
        LDR.W    R1,??DataTable7_14
        STRB     R0,[R1, #+8]
//   77   uart4_init_struct.UART_RxPin = PTE25;//接收引脚为PTE25
        MOVS     R0,#+149
        LDR.W    R1,??DataTable7_14
        STRB     R0,[R1, #+9]
//   78   uart4_init_struct.UART_RxIntEnable=TRUE;//使能接受中断
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_14
        STRB     R0,[R1, #+10]
//   79   uart4_init_struct.UART_RxIsr=uart4_isr;
        LDR.W    R0,??DataTable7_15
        LDR.W    R1,??DataTable7_14
        STR      R0,[R1, #+20]
//   80   LPLD_UART_EnableIrq(uart4_init_struct);//中断使能
        LDR.W    R1,??DataTable7_14
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   81   LPLD_UART_Init(uart4_init_struct); //初始化UART
        LDR.W    R1,??DataTable7_14
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   82   
//   83   static UART_InitTypeDef uart3_init_struct;
//   84   uart3_init_struct.UART_Uartx = UART3; //UART4 用于与电脑通信           
        LDR.W    R0,??DataTable7_16  ;; 0x4006d000
        LDR.W    R1,??DataTable7_17
        STR      R0,[R1, #+0]
//   85   uart3_init_struct.UART_BaudRate = 115200;
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable7_17
        STR      R0,[R1, #+4]
//   86   uart3_init_struct.UART_TxPin = PTB11;//发送引脚为PTE24
        MOVS     R0,#+43
        LDR.W    R1,??DataTable7_17
        STRB     R0,[R1, #+8]
//   87   uart3_init_struct.UART_RxPin = PTB10;//接收引脚为PTE25
        MOVS     R0,#+42
        LDR.W    R1,??DataTable7_17
        STRB     R0,[R1, #+9]
//   88   uart3_init_struct.UART_RxIntEnable=TRUE;//使能接受中断
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_17
        STRB     R0,[R1, #+10]
//   89   uart3_init_struct.UART_RxIsr=uart3_isr;
        ADR.W    R0,uart3_isr
        LDR.W    R1,??DataTable7_17
        STR      R0,[R1, #+20]
//   90   LPLD_UART_EnableIrq(uart3_init_struct);//中断使能
        LDR.W    R1,??DataTable7_17
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   91   LPLD_UART_Init(uart3_init_struct); //初始化UART
        LDR.W    R1,??DataTable7_17
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   92   
//   93   
//   94   
//   95   static UART_InitTypeDef uart0_init_struct;
//   96   uart0_init_struct.UART_Uartx = UART0; //UART0用于设置摄像头
        LDR.W    R0,??DataTable7_18  ;; 0x4006a000
        LDR.W    R1,??DataTable7_19
        STR      R0,[R1, #+0]
//   97   uart0_init_struct.UART_BaudRate = 115200; 
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable7_19
        STR      R0,[R1, #+4]
//   98   uart0_init_struct.UART_RxPin = PTB16;  //接收引脚为PTB16
        MOVS     R0,#+48
        LDR.W    R1,??DataTable7_19
        STRB     R0,[R1, #+9]
//   99   uart0_init_struct.UART_TxPin = PTB17;  //发送引脚为PTB17
        MOVS     R0,#+49
        LDR.W    R1,??DataTable7_19
        STRB     R0,[R1, #+8]
//  100   LPLD_UART_Init(uart0_init_struct); //初始化UART
        LDR.W    R1,??DataTable7_19
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//  101   
//  102   MT9V032_CFG_init();//MT9V032设置
        BL       MT9V032_CFG_init
//  103 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??dmaReq_port_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??href_port_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??vsync_port_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??data_port_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??dma_init_struct:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??uart4_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??uart3_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??uart0_init_struct:
        DS8 28
//  104 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  105 void uart3_isr(void)//串口3接收中断服务程序
//  106 {
uart3_isr:
        PUSH     {LR}
        SUB      SP,SP,#+12
//  107    uint8 RxBuffer[7];//接受缓存
//  108   /*三个数 pointx 1字节 pointy 1字节 turn_pwm 4字节 */
//  109   static uint8 data_len = 0,data_cnt = 0;//数据长度，数据数组下标
//  110   static uint8 RxState=0;//接收状态
//  111   static uint8 RxData;
//  112   uint8 i;
//  113   RxData=LPLD_UART_GetChar(UART3);
        LDR.W    R0,??DataTable7_16  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable7_20
        STRB     R0,[R1, #+0]
//  114   if(RxState == 0 &&  RxData == title1_received)//帧头1
        LDR.W    R0,??DataTable7_21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??uart3_isr_0
        LDR.W    R0,??DataTable7_20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+250
        BNE.N    ??uart3_isr_0
//  115   {
//  116     RxState = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_21
        STRB     R0,[R1, #+0]
        B.N      ??uart3_isr_1
//  117   }
//  118   else if(RxState == 1 &&  RxData == title2_received)//帧头2
??uart3_isr_0:
        LDR.W    R0,??DataTable7_21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??uart3_isr_2
        LDR.W    R0,??DataTable7_20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BNE.N    ??uart3_isr_2
//  119   {
//  120     RxState = 2;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable7_21
        STRB     R0,[R1, #+0]
//  121     data_len = 7;
        MOVS     R0,#+7
        LDR.W    R1,??DataTable7_22
        STRB     R0,[R1, #+0]
//  122     data_cnt = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_23
        STRB     R0,[R1, #+0]
        B.N      ??uart3_isr_1
//  123   }
//  124   else if(RxState == 2 && data_len>0)
??uart3_isr_2:
        LDR.W    R0,??DataTable7_21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??uart3_isr_3
        LDR.W    R0,??DataTable7_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??uart3_isr_3
//  125   {
//  126     data_len--;
        LDR.W    R0,??DataTable7_22
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable7_22
        STRB     R0,[R1, #+0]
//  127     RxBuffer[data_cnt++]=RxData;//接收数据
        LDR.W    R0,??DataTable7_20
        LDRB     R0,[R0, #+0]
        MOV      R1,SP
        LDR.W    R2,??DataTable7_23
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
        LDR.W    R0,??DataTable7_23
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7_23
        STRB     R0,[R1, #+0]
//  128     if(data_len==0)
        LDR.W    R0,??DataTable7_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??uart3_isr_1
//  129       RxState=3;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable7_21
        STRB     R0,[R1, #+0]
        B.N      ??uart3_isr_1
//  130   }
//  131   else if(RxState == 3 &&  RxData == title3_received)//帧尾1
??uart3_isr_3:
        LDR.W    R0,??DataTable7_21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??uart3_isr_4
        LDR.W    R0,??DataTable7_20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+12
        BNE.N    ??uart3_isr_4
//  132   {
//  133     RxState = 4;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable7_21
        STRB     R0,[R1, #+0]
        B.N      ??uart3_isr_1
//  134   }
//  135   else if(RxState == 4 &&  RxData == title4_received)//帧尾2
??uart3_isr_4:
        LDR.W    R0,??DataTable7_21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??uart3_isr_5
        LDR.W    R0,??DataTable7_20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+252
        BNE.N    ??uart3_isr_5
//  136   {
//  137     RxState=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_21
        STRB     R0,[R1, #+0]
//  138     
//  139     bzx=RxBuffer[0];
        LDRB     R0,[SP, #+0]
        LDR.W    R1,??DataTable7_24
        STRB     R0,[R1, #+0]
//  140     bzy=RxBuffer[1];
        LDRB     R0,[SP, #+1]
        LDR.W    R1,??DataTable7_25
        STRB     R0,[R1, #+0]
//  141     for(i = 2; i < 6; i++)
        MOVS     R0,#+2
        B.N      ??uart3_isr_6
//  142     {
//  143       (*( (char *)(&bz_turn_pwm) + i-2)) = RxBuffer[i];
??uart3_isr_7:
        MOV      R1,SP
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R0, R1]
        LDR.W    R2,??DataTable7_26
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R0,R2
        STRB     R1,[R2, #-2]
//  144     }
        ADDS     R0,R0,#+1
??uart3_isr_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+6
        BLT.N    ??uart3_isr_7
//  145     bz_nopoint=RxBuffer[6];
        LDRB     R0,[SP, #+6]
        LDR.W    R1,??DataTable7_27
        STRB     R0,[R1, #+0]
        B.N      ??uart3_isr_1
//  146     
//  147   }
//  148   else 
//  149     RxState=0;
??uart3_isr_5:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_21
        STRB     R0,[R1, #+0]
//  150 }
??uart3_isr_1:
        POP      {R0-R2,PC}       ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
??data_len:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
??data_cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
??RxState:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
??RxData:
        DS8 1
//  151 
//  152 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  153 void picture_send(void)
//  154 {
picture_send:
        PUSH     {R3-R5,LR}
//  155   int i,j;
//  156     if(end_flag)
        LDR.W    R0,??DataTable7_28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??picture_send_0
//  157     {
//  158       disable_irq(PORTB_IRQn); 
        MOVS     R0,#+88
        BL       NVIC_DisableIRQ
//  159       LPLD_UART_PutChar(UART4,0X01);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable7_13  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  160       LPLD_UART_PutChar(UART4,0XFE);
        MVNS     R1,#+1
        LDR.W    R0,??DataTable7_13  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  161       for(i=0;i<ROWnum;i++)
        MOVS     R4,#+0
        B.N      ??picture_send_1
//  162         for(j=0;j<COLUMN;j++)
//  163             LPLD_UART_PutChar(UART4,Image1[i][j]);
??picture_send_2:
        LDR.W    R0,??DataTable7_12
        MOVS     R1,#+180
        MLA      R0,R1,R4,R0
        LDRSB    R0,[R5, R0]
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable7_13  ;; 0x400ea000
        BL       LPLD_UART_PutChar
        ADDS     R5,R5,#+1
??picture_send_3:
        CMP      R5,#+180
        BLT.N    ??picture_send_2
        ADDS     R4,R4,#+1
??picture_send_1:
        CMP      R4,#+90
        BGE.N    ??picture_send_4
        MOVS     R5,#+0
        B.N      ??picture_send_3
//  164       LPLD_UART_PutChar(UART4,0XFE);
??picture_send_4:
        MVNS     R1,#+1
        LDR.N    R0,??DataTable7_13  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  165       LPLD_UART_PutChar(UART4,0X01);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable7_13  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  166       enable_irq(PORTB_IRQn);
        MOVS     R0,#+88
        BL       NVIC_EnableIRQ
//  167       end_flag=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_28
        STRB     R0,[R1, #+0]
//  168     }
//  169 }
??picture_send_0:
        POP      {R0,R4,R5,PC}    ;; return
//  170 
//  171 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 void MT9V032_CFG_init(void)
//  173 {
MT9V032_CFG_init:
        PUSH     {R2-R4,LR}
//  174   uint16 i,light_time;
//  175   uint8 MT9V032_CFG[8];//定义数据包
//  176   my_delay(9999999);//延时以保证摄像头上面的51完成上电初始化
        LDR.W    R0,??DataTable7_29  ;; 0x98967f
        BL       my_delay
//  177   MT9V032_CFG[0] = 0xFF; //数据包帧头         
        MOVS     R0,#+255
        STRB     R0,[SP, #+0]
//  178   MT9V032_CFG[1] = 0x00; //命令位  
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  179   switch(ROW) //分辨率选择位，不过列超过188后K60无法采集
//  180   {
//  181   case 480:MT9V032_CFG[2] = 8;break; //对应的分辨率为 480行）*188（列）
//  182   case 240:MT9V032_CFG[2] = 9;break;//对应的分辨率为 240行）*188（列）
        MOVS     R0,#+9
        STRB     R0,[SP, #+2]
//  183   case 120:MT9V032_CFG[2] = 10;break;//对应的分辨率为 120行）*188（列）
//  184   default :MT9V032_CFG[2] = 10;break;
//  185   }   
//  186   MT9V032_CFG[3] = 100;  //fps一秒钟拍摄图像帧数设置，设置图像帧率.行数不同可设置的范围也不同,范围限制  120行的时候是1-200,240行的时候是1-132,480行的时候是1-66                  
        MOVS     R0,#+100
        STRB     R0,[SP, #+3]
//  187   //曝光时间越大图像越亮     由于最大曝光时间受到fps与分辨率的共同影响，这里不给出具体范围，可以直接把曝光设置为1000，摄像头上的51收到之后会根据分辨率及FPS计算最大曝光时间，然后把
//  188   //曝光时间设置为最大曝光时间，并且会返回当前设置的最大曝光时间，这样就可以知道最大可以设置的曝光时间是多少了，然后觉得图像过亮，就可以在这个最大曝光值的基础上相应减少。
//  189   light_time = 120; //可调
        MOVS     R1,#+120
//  190   MT9V032_CFG[4] = light_time>>8;          //曝光时间高八位   
        MOVS     R0,R1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[SP, #+4]
//  191   MT9V032_CFG[5] = (uint8)light_time;      //曝光时间低八位  
        STRB     R1,[SP, #+5]
//  192   MT9V032_CFG[6] = 0;    //设置自动曝光，0表示关闭
        MOVS     R0,#+0
        STRB     R0,[SP, #+6]
//  193   MT9V032_CFG[7] = 0x5A;  //帧尾 
        MOVS     R0,#+90
        STRB     R0,[SP, #+7]
//  194   for(i=0;i<8;i++)
        MOVS     R4,#+0
        B.N      ??MT9V032_CFG_init_0
//  195   {
//  196     LPLD_UART_PutChar(UART0,MT9V032_CFG[i]);
??MT9V032_CFG_init_1:
        MOV      R0,SP
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRSB    R0,[R4, R0]
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_18  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//  197   }
        ADDS     R4,R4,#+1
??MT9V032_CFG_init_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+8
        BLT.N    ??MT9V032_CFG_init_1
//  198   my_delay(9999999);
        LDR.N    R0,??DataTable7_29  ;; 0x98967f
        BL       my_delay
//  199 }
        POP      {R0,R1,R4,PC}    ;; return
//  200 
//  201 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  202 void portb_isr()
//  203 {  
//  204   if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin23)) // 场中断          
portb_isr:
        LDR.N    R0,??DataTable7_30  ;; 0x4004a0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+8
        BPL.N    ??portb_isr_0
//  205   {     
//  206     LPLD_GPIO_ClearIntFlag(PORTB);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable7_30  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//  207     if( (WhichBuffer==1&&lock!=1) || (WhichBuffer==2&&lock!=2) )//将要传图1且图1没有在处理，或者将要传图2且图2没有在处理
        LDR.N    R0,??DataTable7_31
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??portb_isr_1
        LDR.N    R0,??DataTable7_32
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??portb_isr_2
??portb_isr_1:
        LDR.N    R0,??DataTable7_31
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??portb_isr_3
        LDR.N    R0,??DataTable7_32
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??portb_isr_3
//  208       start_flag=1; //丢弃不完整的第一帧图像，DMA启动标志，采集开始
??portb_isr_2:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_33
        STRB     R0,[R1, #+0]
        B.N      ??portb_isr_4
//  209     else
//  210       start_flag=0;  //忙，不传图
??portb_isr_3:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_33
        STRB     R0,[R1, #+0]
//  211     rowAdr=0;
??portb_isr_4:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_34
        STRB     R0,[R1, #+0]
//  212     row=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_35
        STRB     R0,[R1, #+0]
        B.N      ??portb_isr_5
//  213   } 
//  214   else if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin20)&&start_flag==1) //行中断，逐行采集                                                 
??portb_isr_0:
        LDR.N    R0,??DataTable7_30  ;; 0x4004a0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+11
        BPL.N    ??portb_isr_5
        LDR.N    R0,??DataTable7_33
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??portb_isr_5
//  215   {
//  216     LPLD_GPIO_ClearIntFlag(PORTB);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable7_30  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//  217     row++;
        LDR.N    R0,??DataTable7_35
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable7_35
        STRB     R0,[R1, #+0]
//  218     if(row>=ROWbegin && row<ROWend)
        LDR.N    R0,??DataTable7_35
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+80
        CMP      R0,#+90
        BCS.N    ??portb_isr_6
//  219     {
//  220       if(WhichBuffer==1)
        LDR.N    R0,??DataTable7_31
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??portb_isr_7
//  221         LPLD_DMA_LoadDstAddr(DMA_CH0,(Image1[rowAdr]));//加载或更换目的地址
        LDR.N    R0,??DataTable7_12
        LDR.N    R1,??DataTable7_34
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+180
        MLA      R0,R2,R1,R0
        LDR.N    R1,??DataTable7_36  ;; 0x40009010
        STR      R0,[R1, #+0]
        B.N      ??portb_isr_8
//  222       else
//  223         LPLD_DMA_LoadDstAddr(DMA_CH0,(Image2[rowAdr]));
??portb_isr_7:
        LDR.N    R0,??DataTable7_37
        LDR.N    R1,??DataTable7_34
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+180
        MLA      R0,R2,R1,R0
        LDR.N    R1,??DataTable7_36  ;; 0x40009010
        STR      R0,[R1, #+0]
//  224       LPLD_DMA_EnableReq(DMA_CH0);//初始化中设定主循环结束屏蔽请求源，故每一行都需重新使能请求源
??portb_isr_8:
        LDR.N    R0,??DataTable7_38  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable7_38  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  225       rowAdr++; 
        LDR.N    R0,??DataTable7_34
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable7_34
        STRB     R0,[R1, #+0]
//  226     }
//  227     if(row>=ROWend)
??portb_isr_6:
        LDR.N    R0,??DataTable7_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+170
        BLT.N    ??portb_isr_5
//  228     {
//  229       LPLD_DMA_DisableReq(DMA_CH0);//采集结束，屏蔽DMA请求源
        LDR.N    R0,??DataTable7_38  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable7_38  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  230       if(WhichBuffer==1)
        LDR.N    R0,??DataTable7_31
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??portb_isr_9
//  231         WhichBuffer=2;  //切换传图，图1图2依次传输
        MOVS     R0,#+2
        LDR.N    R1,??DataTable7_31
        STRB     R0,[R1, #+0]
        B.N      ??portb_isr_10
//  232       else
//  233         WhichBuffer=1;
??portb_isr_9:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_31
        STRB     R0,[R1, #+0]
//  234       end_flag=1;
??portb_isr_10:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_28
        STRB     R0,[R1, #+0]
//  235       start_flag=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_33
        STRB     R0,[R1, #+0]
//  236     }
//  237   }
//  238 }
??portb_isr_5:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  239 void my_delay(long t)
//  240 {
//  241     while(t--);
my_delay:
??my_delay_0:
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        CMP      R1,#+0
        BNE.N    ??my_delay_0
//  242 }
        BX       LR               ;; return
//  243 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  244 void Calculate_Middle_Point(void)
//  245 {
Calculate_Middle_Point:
        PUSH     {R4-R9,LR}
//  246   int i,j,k=0,prok=0,minj=COLUMN,maxj=0,mini=ROWend,maxi=ROWbegin;
        MOVS     R0,#+0
        MOVS     R1,#+0
        MOVS     R2,#+180
        MOVS     R3,#+0
        MOVS     R4,#+170
        MOVS     R5,#+80
//  247   int pointy,pointx;
//  248   if(WhichBuffer == 2)//正在传图2
        LDR.W    R12,??DataTable7_31
        LDRB     R12,[R12, #+0]
        CMP      R12,#+2
        BNE.N    ??Calculate_Middle_Point_0
//  249   {
//  250     lock=1;//锁图1，处理图1
        MOVS     R12,#+1
        LDR.W    LR,??DataTable7_32
        STRB     R12,[LR, #+0]
//  251     for(i=0;i<ROWnum;i++)
        MOVS     R12,#+0
        B.N      ??Calculate_Middle_Point_1
//  252     {
//  253       for(j=0;j<COLUMN;j++)
//  254       {
//  255         if(Image1[i][j]>=setvalue)
??Calculate_Middle_Point_2:
        LDR.W    R8,??DataTable7_12
        MOVS     R9,#+180
        MLA      R8,R9,R12,R8
        LDRB     R8,[LR, R8]
        LDR.W    R9,??DataTable7_39
        LDRB     R9,[R9, #+0]
        CMP      R8,R9
        BCC.N    ??Calculate_Middle_Point_3
//  256         {
//  257           k++;
        ADDS     R0,R0,#+1
//  258           if(j<=minj)
        CMP      R2,LR
        BLT.N    ??Calculate_Middle_Point_4
//  259             minj=j;
        MOV      R2,LR
//  260           if(j>=maxj)
??Calculate_Middle_Point_4:
        CMP      LR,R3
        BLT.N    ??Calculate_Middle_Point_5
//  261             maxj=j;
        MOV      R3,LR
//  262           if(mini>i)
??Calculate_Middle_Point_5:
        CMP      R12,R4
        BGE.N    ??Calculate_Middle_Point_6
//  263             mini=i;
        MOV      R4,R12
//  264           if(maxi<i)
??Calculate_Middle_Point_6:
        CMP      R5,R12
        BGE.N    ??Calculate_Middle_Point_3
//  265             maxi=i;
        MOV      R5,R12
//  266         }
//  267       }
??Calculate_Middle_Point_3:
        ADDS     LR,LR,#+1
??Calculate_Middle_Point_7:
        CMP      LR,#+180
        BLT.N    ??Calculate_Middle_Point_2
//  268       if(k>prok)
        CMP      R1,R0
        BGE.N    ??Calculate_Middle_Point_8
//  269       {
//  270         prok=k;
        MOVS     R1,R0
//  271         pointy=i;
        MOV      R6,R12
//  272         pointx=(minj+maxj)/2;
        ADDS     R0,R3,R2
        MOVS     R7,#+2
        SDIV     R7,R0,R7
//  273       }
//  274       k=0;
??Calculate_Middle_Point_8:
        MOVS     R0,#+0
        ADDS     R12,R12,#+1
??Calculate_Middle_Point_1:
        CMP      R12,#+90
        BGE.N    ??Calculate_Middle_Point_9
        MOVS     LR,#+0
        B.N      ??Calculate_Middle_Point_7
//  275     }
//  276   }
//  277   else if(WhichBuffer == 1)//正在传图1
??Calculate_Middle_Point_0:
        LDR.W    R12,??DataTable7_31
        LDRB     R12,[R12, #+0]
        CMP      R12,#+1
        BNE.N    ??Calculate_Middle_Point_9
//  278   {
//  279     lock=2;//锁图2，处理图2
        MOVS     R12,#+2
        LDR.W    LR,??DataTable7_32
        STRB     R12,[LR, #+0]
//  280     for(i=0;i<ROWnum;i++)
        MOVS     R12,#+0
        B.N      ??Calculate_Middle_Point_10
//  281     {
//  282       for(j=0;j<COLUMN;j++)
//  283       {
//  284         if(Image2[i][j]>=setvalue)
??Calculate_Middle_Point_11:
        LDR.W    R8,??DataTable7_37
        MOVS     R9,#+180
        MLA      R8,R9,R12,R8
        LDRB     R8,[LR, R8]
        LDR.W    R9,??DataTable7_39
        LDRB     R9,[R9, #+0]
        CMP      R8,R9
        BCC.N    ??Calculate_Middle_Point_12
//  285         {
//  286           k++;
        ADDS     R0,R0,#+1
//  287           if(j<=minj)
        CMP      R2,LR
        BLT.N    ??Calculate_Middle_Point_13
//  288             minj=j;
        MOV      R2,LR
//  289           if(j>=maxj)
??Calculate_Middle_Point_13:
        CMP      LR,R3
        BLT.N    ??Calculate_Middle_Point_14
//  290             maxj=j;
        MOV      R3,LR
//  291           if(mini>i)
??Calculate_Middle_Point_14:
        CMP      R12,R4
        BGE.N    ??Calculate_Middle_Point_15
//  292             mini=i;
        MOV      R4,R12
//  293           if(maxi<i)
??Calculate_Middle_Point_15:
        CMP      R5,R12
        BGE.N    ??Calculate_Middle_Point_12
//  294             maxi=i;
        MOV      R5,R12
//  295         }
//  296       }
??Calculate_Middle_Point_12:
        ADDS     LR,LR,#+1
??Calculate_Middle_Point_16:
        CMP      LR,#+180
        BLT.N    ??Calculate_Middle_Point_11
//  297       if(k>prok)
        CMP      R1,R0
        BGE.N    ??Calculate_Middle_Point_17
//  298       {
//  299         prok=k;
        MOVS     R1,R0
//  300         pointy=i;
        MOV      R6,R12
//  301         pointx=(minj+maxj)/2;
        ADDS     R0,R3,R2
        MOVS     R7,#+2
        SDIV     R7,R0,R7
//  302       }
//  303       k=0;     
??Calculate_Middle_Point_17:
        MOVS     R0,#+0
        ADDS     R12,R12,#+1
??Calculate_Middle_Point_10:
        CMP      R12,#+90
        BGE.N    ??Calculate_Middle_Point_9
        MOVS     LR,#+0
        B.N      ??Calculate_Middle_Point_16
//  304     }
//  305   } 
//  306    lock=0; //解除图像锁定
??Calculate_Middle_Point_9:
        MOVS     R0,#+0
        LDR.N    R2,??DataTable7_32
        STRB     R0,[R2, #+0]
//  307   
//  308   
//  309 
//  310   
//  311   if (prok==0 ||pointx<=3||pointx>=177)//如果没有亮点 
        CMP      R1,#+0
        BEQ.N    ??Calculate_Middle_Point_18
        SUBS     R0,R7,#+4
        CMP      R0,#+173
        BCC.N    ??Calculate_Middle_Point_19
//  312   {
//  313     NOpoint=1;
??Calculate_Middle_Point_18:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_40
        STRB     R0,[R1, #+0]
//  314     last_nopoint=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_41
        STRB     R0,[R1, #+0]
        B.N      ??Calculate_Middle_Point_20
//  315     
//  316   }
//  317   else 
//  318   {
//  319     if ( last_nopoint )//上一幅没图
??Calculate_Middle_Point_19:
        LDR.N    R0,??DataTable7_41
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Calculate_Middle_Point_21
//  320     {
//  321       if (pointx>=5&&pointx<=175)
        SUBS     R0,R7,#+5
        CMP      R0,#+171
        BCS.N    ??Calculate_Middle_Point_20
//  322       {
//  323         NOpoint=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_40
        STRB     R0,[R1, #+0]
//  324         real_pointy=pointy; //一场图像真正的中点！！！有图才更新
        LDR.N    R0,??DataTable7_42
        STRB     R6,[R0, #+0]
//  325         real_pointx=pointx; //一场图像真正的中点！！！
        LDR.N    R0,??DataTable7_43
        STRB     R7,[R0, #+0]
//  326         last_nopoint=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_41
        STRB     R0,[R1, #+0]
        B.N      ??Calculate_Middle_Point_20
//  327       }
//  328     }
//  329     else   //上一幅有图
//  330     {
//  331       if (pointx>=3&&pointx<=177)
??Calculate_Middle_Point_21:
        SUBS     R0,R7,#+3
        CMP      R0,#+175
        BCS.N    ??Calculate_Middle_Point_20
//  332       {
//  333         NOpoint=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_40
        STRB     R0,[R1, #+0]
//  334         real_pointy=pointy; //一场图像真正的中点！！！有图才更新
        LDR.N    R0,??DataTable7_42
        STRB     R6,[R0, #+0]
//  335         real_pointx=pointx; //一场图像真正的中点！！！
        LDR.N    R0,??DataTable7_43
        STRB     R7,[R0, #+0]
//  336         last_nopoint=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_41
        STRB     R0,[R1, #+0]
//  337       }
//  338     }
//  339     
//  340   }
//  341   
//  342   
//  343   /*
//  344   if(real_pointy>15 && NOpoint==0)//屏蔽从机避障信号
//  345   {
//  346     disable_irq(PORTD_IRQn);//左障碍
//  347     disable_irq(PORTE_IRQn);//右障碍
//  348   }
//  349   else  //使能从机避障信号
//  350   {
//  351     enable_irq(PORTD_IRQn);//左障碍
//  352     enable_irq(PORTE_IRQn);//右障碍
//  353   }
//  354   */
//  355   
//  356 }
??Calculate_Middle_Point_20:
        POP      {R4-R9,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     ??dmaReq_port_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x20003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     ??href_port_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x90013

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     ??vsync_port_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     ??data_port_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     ??dma_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x400ff090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     Image1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     ??uart4_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     uart4_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     ??uart3_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     ??uart0_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     ??RxData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_21:
        DC32     ??RxState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_22:
        DC32     ??data_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_23:
        DC32     ??data_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_24:
        DC32     bzx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_25:
        DC32     bzy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_26:
        DC32     bz_turn_pwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_27:
        DC32     bz_nopoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_28:
        DC32     end_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_29:
        DC32     0x98967f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_30:
        DC32     0x4004a0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_31:
        DC32     WhichBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_32:
        DC32     lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_33:
        DC32     start_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_34:
        DC32     rowAdr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_35:
        DC32     row

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_36:
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_37:
        DC32     Image2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_38:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_39:
        DC32     setvalue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_40:
        DC32     NOpoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_41:
        DC32     last_nopoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_42:
        DC32     real_pointy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_43:
        DC32     real_pointx

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  357 
//  358 
// 
// 86 628 bytes in section .bss
//      3 bytes in section .data
//  2 000 bytes in section .text
// 
//  2 000 bytes of CODE memory
// 86 631 bytes of DATA memory
//
//Errors: none
//Warnings: 3
