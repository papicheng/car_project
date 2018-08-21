///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Aug/2017  09:52:51
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\app\camera.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\app\camera.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\FLASH\List
//        -lB
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\FLASH\List
//        -o
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\FLASH\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "E:\IAR Systems\Embedded
//        Workbench 7.3\arm\INC\c\DLib_Config_Normal.h" -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\app\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\CPU\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\common\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\LPLD\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\LPLD\HW\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\FatFs\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\FatFs\option\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\USB\common\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\USB\driver\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\USB\descriptor\
//        -I
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\..\..\..\lib\USB\class\
//        -Ol -I "E:\IAR Systems\Embedded Workbench 7.3\arm\CMSIS\Include\" -D
//        ARM_MATH_CM4
//    List file    =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\iar\FLASH\List\camera.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_DMA_Init
        EXTERN LPLD_GPIO_EnableIrq
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutChar
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4

        PUBLIC Calculate_Middle_Point
        PUBLIC Image1
        PUBLIC Image2
        PUBLIC MT9V032_CFG_init
        PUBLIC NOpoint
        PUBLIC WhichBuffer
        PUBLIC camera_init
        PUBLIC end_flag
        PUBLIC lock
        PUBLIC my_delay
        PUBLIC picture2pc
        PUBLIC porte_isr
        PUBLIC real_pointx
        PUBLIC real_pointy
        PUBLIC row
        PUBLIC rowAdr
        PUBLIC setvalue
        PUBLIC start_flag
        PUBLIC sumtuan
        PUBLIC testsum
        PUBLIC testsum_average

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_C_sub_2017_7_15\app\camera.c
//    1 
//    2 #include "camera.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable6  ;; 0xe000e100
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
        LDR.W    R2,??DataTable6_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//    3 #include "common.h"
//    4 
//    5 #define COLUMN 180       //列
//    6 #define ROW    240      //行
//    7 #define ROWbegin    80      //开始采集行
//    8 #define ROWend    200      //结束采集行
//    9 #define ROWnum    120      //采集行数
//   10 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 unsigned char Image1[ROW][COLUMN];
Image1:
        DS8 43200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   12 unsigned char Image2[ROW][COLUMN];
Image2:
        DS8 43200

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   13 uint8  end_flag=0; 
end_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   14 uint8 start_flag=0;
start_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   15 uint8 row=0;
row:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   16 uint8 lock=0;
lock:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   17 uint8 WhichBuffer = 1;
WhichBuffer:
        DC8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   18 uint8 setvalue=110;//阈值
setvalue:
        DC8 110

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   19 uint8 real_pointx,real_pointy,NOpoint,rowAdr;
real_pointx:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
real_pointy:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
NOpoint:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
rowAdr:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20 float sumtuan,testsum[5],testsum_average;
sumtuan:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
testsum:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
testsum_average:
        DS8 4
//   21 //int prok;
//   22 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void camera_init(void)
//   24 {
camera_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   25   static GPIO_InitTypeDef dmaReq_port_struct;
//   26   dmaReq_port_struct.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable6_2  ;; 0x400ff100
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+0]
//   27   dmaReq_port_struct.GPIO_Pins = GPIO_Pin11;
        MOV      R0,#+2048
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+4]
//   28   dmaReq_port_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+12]
//   29   dmaReq_port_struct.GPIO_PinControl =IRQC_DMAFA | INPUT_PULL_UP;//下降沿产生DMA请求,输入上拉
        LDR.W    R0,??DataTable6_4  ;; 0x20003
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+8]
//   30   LPLD_GPIO_Init(dmaReq_port_struct);
        LDR.W    R1,??DataTable6_3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   31   
//   32   static GPIO_InitTypeDef href_port_struct;  //行中断接受端口
//   33   href_port_struct.GPIO_PTx = PTE;    
        LDR.W    R0,??DataTable6_2  ;; 0x400ff100
        LDR.W    R1,??DataTable6_5
        STR      R0,[R1, #+0]
//   34   href_port_struct.GPIO_Pins = GPIO_Pin10;   
        MOV      R0,#+1024
        LDR.W    R1,??DataTable6_5
        STR      R0,[R1, #+4]
//   35   href_port_struct.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+12]
//   36   href_port_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;  //内部上拉|下降沿中断
        LDR.W    R0,??DataTable6_6  ;; 0x90013
        LDR.W    R1,??DataTable6_5
        STR      R0,[R1, #+8]
//   37   href_port_struct.GPIO_Isr = porte_isr;        //中断函数
        ADR.W    R0,porte_isr
        LDR.W    R1,??DataTable6_5
        STR      R0,[R1, #+16]
//   38   LPLD_GPIO_Init(href_port_struct);
        LDR.W    R1,??DataTable6_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   39   LPLD_GPIO_EnableIrq(href_port_struct);
        LDR.W    R1,??DataTable6_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   40   
//   41   static GPIO_InitTypeDef vsync_port_struct;  //场中断接受端口
//   42   vsync_port_struct.GPIO_PTx = PTE;    
        LDR.W    R0,??DataTable6_2  ;; 0x400ff100
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//   43   vsync_port_struct.GPIO_Pins = GPIO_Pin12;   
        MOV      R0,#+4096
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+4]
//   44   vsync_port_struct.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_7
        STRB     R0,[R1, #+12]
//   45   vsync_port_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;    //内部上拉|下降沿中断
        LDR.W    R0,??DataTable6_6  ;; 0x90013
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+8]
//   46   vsync_port_struct.GPIO_Isr = porte_isr;        //中断函数
        ADR.W    R0,porte_isr
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+16]
//   47   LPLD_GPIO_Init(vsync_port_struct);
        LDR.W    R1,??DataTable6_7
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   48   LPLD_GPIO_EnableIrq(vsync_port_struct);
        LDR.W    R1,??DataTable6_7
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   49   
//   50   //摄像头到单片机数据口初始化：PTE0~PTE7
//   51   static GPIO_InitTypeDef data_port_struct;
//   52   data_port_struct.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable6_2  ;; 0x400ff100
        LDR.W    R1,??DataTable6_8
        STR      R0,[R1, #+0]
//   53   data_port_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_8
        STRB     R0,[R1, #+12]
//   54   data_port_struct.GPIO_Pins = GPIO_Pin0_7;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable6_8
        STR      R0,[R1, #+4]
//   55   data_port_struct.GPIO_PinControl = IRQC_DIS|INPUT_PULL_DIS;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_8
        STR      R0,[R1, #+8]
//   56   LPLD_GPIO_Init(data_port_struct);
        LDR.W    R1,??DataTable6_8
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   57   
//   58   //DMA参数配置
//   59   static DMA_InitTypeDef  dma_init_struct;
//   60   dma_init_struct.DMA_CHx = DMA_CH0;    //CH0通道
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_9
        STRB     R0,[R1, #+0]
//   61   dma_init_struct.DMA_Req = PORTE_DMAREQ;     //PORTB22为请求源
        MOVS     R0,#+53
        LDR.W    R1,??DataTable6_9
        STRB     R0,[R1, #+1]
//   62   dma_init_struct.DMA_MajorLoopCnt = COLUMN;   //主循环计数值：行采集点数，宽度
        MOVS     R0,#+180
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, #+4]
//   63   dma_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次传输1字节
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_9
        STR      R0,[R1, #+8]
//   64   dma_init_struct.DMA_SourceAddr = (uint32)&PTE->PDIR; //源地址：PTC0-PTC7,Port Data Input Register
        LDR.W    R0,??DataTable6_10  ;; 0x400ff110
        LDR.W    R1,??DataTable6_9
        STR      R0,[R1, #+12]
//   65   dma_init_struct.DMA_DestAddr = (uint32)Image1;      //目的地址：存放图像的数组
        LDR.W    R0,??DataTable6_11
        LDR.W    R1,??DataTable6_9
        STR      R0,[R1, #+24]
//   66   dma_init_struct.DMA_DestAddrOffset = 1;       //目的地址偏移：每次读入增加1
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, #+30]
//   67   dma_init_struct.DMA_AutoDisableReq = TRUE;    //自动禁用请求，使能后通道请求将在主循环结束后禁用
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_9
        STRB     R0,[R1, #+36]
//   68   LPLD_DMA_Init(dma_init_struct);//初始化但未使能
        LDR.W    R1,??DataTable6_9
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//   69   
//   70   static UART_InitTypeDef uart4_init_struct;
//   71   uart4_init_struct.UART_Uartx = UART4; //UART4 用于与电脑通信           
        LDR.W    R0,??DataTable6_12  ;; 0x400ea000
        LDR.W    R1,??DataTable6_13
        STR      R0,[R1, #+0]
//   72   uart4_init_struct.UART_BaudRate = 115200;
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable6_13
        STR      R0,[R1, #+4]
//   73   uart4_init_struct.UART_TxPin = PTE24;//发送引脚为PTE24
        MOVS     R0,#+148
        LDR.W    R1,??DataTable6_13
        STRB     R0,[R1, #+8]
//   74   uart4_init_struct.UART_RxPin = PTE25;//接收引脚为PTE25
        MOVS     R0,#+149
        LDR.W    R1,??DataTable6_13
        STRB     R0,[R1, #+9]
//   75   uart4_init_struct.UART_RxIntEnable=TRUE;//使能接受中断
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_13
        STRB     R0,[R1, #+10]
//   76   LPLD_UART_EnableIrq(uart4_init_struct);//中断使能
        LDR.W    R1,??DataTable6_13
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   77   LPLD_UART_Init(uart4_init_struct); //初始化UART
        LDR.W    R1,??DataTable6_13
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   78   
//   79   static UART_InitTypeDef uart0_init_struct;
//   80   uart0_init_struct.UART_Uartx = UART0; //UART0用于设置摄像头
        LDR.W    R0,??DataTable6_14  ;; 0x4006a000
        LDR.W    R1,??DataTable6_15
        STR      R0,[R1, #+0]
//   81   uart0_init_struct.UART_BaudRate = 115200; 
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable6_15
        STR      R0,[R1, #+4]
//   82   uart0_init_struct.UART_RxPin = PTB16;  //接收引脚为PTB16
        MOVS     R0,#+48
        LDR.W    R1,??DataTable6_15
        STRB     R0,[R1, #+9]
//   83   uart0_init_struct.UART_TxPin = PTB17;  //发送引脚为PTB17
        MOVS     R0,#+49
        LDR.W    R1,??DataTable6_15
        STRB     R0,[R1, #+8]
//   84   LPLD_UART_Init(uart0_init_struct); //初始化UART
        LDR.W    R1,??DataTable6_15
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   85   
//   86   MT9V032_CFG_init();//MT9V032设置
        BL       MT9V032_CFG_init
//   87 }
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
??uart0_init_struct:
        DS8 28
//   88 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   89 void MT9V032_CFG_init(void)
//   90 {
MT9V032_CFG_init:
        PUSH     {R2-R4,LR}
//   91   uint16 i,light_time;
//   92   uint8 MT9V032_CFG[8];//定义数据包
//   93   my_delay(9999999);//延时以保证摄像头上面的51完成上电初始化
        LDR.W    R0,??DataTable6_16  ;; 0x98967f
        BL       my_delay
//   94   MT9V032_CFG[0] = 0xFF; //数据包帧头         
        MOVS     R0,#+255
        STRB     R0,[SP, #+0]
//   95   MT9V032_CFG[1] = 0x00; //命令位  
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//   96   switch(ROW) //分辨率选择位，不过列超过188后K60无法采集
//   97   {
//   98   case 480:MT9V032_CFG[2] = 8;break; //对应的分辨率为 480行）*188（列）
//   99   case 240:MT9V032_CFG[2] = 9;break;//对应的分辨率为 240行）*188（列）
        MOVS     R0,#+9
        STRB     R0,[SP, #+2]
//  100   case 120:MT9V032_CFG[2] = 10;break;//对应的分辨率为 120行）*188（列）
//  101   default :MT9V032_CFG[2] = 10;break;
//  102   }   
//  103   MT9V032_CFG[3] = 100;  //fps一秒钟拍摄图像帧数设置，设置图像帧率.行数不同可设置的范围也不同,范围限制  120行的时候是1-200,240行的时候是1-132,480行的时候是1-66                  
        MOVS     R0,#+100
        STRB     R0,[SP, #+3]
//  104   //曝光时间越大图像越亮     由于最大曝光时间受到fps与分辨率的共同影响，这里不给出具体范围，可以直接把曝光设置为1000，摄像头上的51收到之后会根据分辨率及FPS计算最大曝光时间，然后把
//  105   //曝光时间设置为最大曝光时间，并且会返回当前设置的最大曝光时间，这样就可以知道最大可以设置的曝光时间是多少了，然后觉得图像过亮，就可以在这个最大曝光值的基础上相应减少。
//  106   light_time = 120; //可调
        MOVS     R1,#+120
//  107   MT9V032_CFG[4] = light_time>>8;          //曝光时间高八位   
        MOVS     R0,R1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[SP, #+4]
//  108   MT9V032_CFG[5] = (uint8)light_time;      //曝光时间低八位  
        STRB     R1,[SP, #+5]
//  109   MT9V032_CFG[6] = 0;    //设置自动曝光，0表示关闭
        MOVS     R0,#+0
        STRB     R0,[SP, #+6]
//  110   MT9V032_CFG[7] = 0x5A;  //帧尾 
        MOVS     R0,#+90
        STRB     R0,[SP, #+7]
//  111   for(i=0;i<8;i++)
        MOVS     R4,#+0
        B.N      ??MT9V032_CFG_init_0
//  112   {
//  113     LPLD_UART_PutChar(UART0,MT9V032_CFG[i]);
??MT9V032_CFG_init_1:
        MOV      R0,SP
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRSB    R0,[R4, R0]
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable6_14  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//  114   }
        ADDS     R4,R4,#+1
??MT9V032_CFG_init_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+8
        BLT.N    ??MT9V032_CFG_init_1
//  115   my_delay(9999999);
        LDR.W    R0,??DataTable6_16  ;; 0x98967f
        BL       my_delay
//  116 }
        POP      {R0,R1,R4,PC}    ;; return
//  117 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 void my_delay(long t)
//  119 {
//  120     while(t--);
my_delay:
??my_delay_0:
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        CMP      R1,#+0
        BNE.N    ??my_delay_0
//  121 }
        BX       LR               ;; return
//  122 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  123 void porte_isr()
//  124 {  
//  125   if(LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin12)) // 场中断          
porte_isr:
        LDR.W    R0,??DataTable6_17  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BPL.N    ??porte_isr_0
//  126   {     
//  127     LPLD_GPIO_ClearIntFlag(PORTE);
        MOVS     R0,#-1
        LDR.W    R1,??DataTable6_17  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//  128     if( (WhichBuffer==1&&lock!=1) || (WhichBuffer==2&&lock!=2) )//将要传图1且图1没有在处理，或者将要传图2且图2没有在处理
        LDR.W    R0,??DataTable6_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??porte_isr_1
        LDR.W    R0,??DataTable6_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??porte_isr_2
??porte_isr_1:
        LDR.W    R0,??DataTable6_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??porte_isr_3
        LDR.W    R0,??DataTable6_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??porte_isr_3
//  129       start_flag=1; //丢弃不完整的第一帧图像，DMA启动标志，采集开始
??porte_isr_2:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_20
        STRB     R0,[R1, #+0]
        B.N      ??porte_isr_4
//  130     else
//  131       start_flag=0;  //忙，不传图
??porte_isr_3:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_20
        STRB     R0,[R1, #+0]
//  132     rowAdr=0;
??porte_isr_4:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_21
        STRB     R0,[R1, #+0]
//  133     row=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_22
        STRB     R0,[R1, #+0]
        B.N      ??porte_isr_5
//  134   } 
//  135   else if(LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin10)&&start_flag==1) //行中断，逐行采集                                                 
??porte_isr_0:
        LDR.W    R0,??DataTable6_17  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??porte_isr_5
        LDR.W    R0,??DataTable6_20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??porte_isr_5
//  136   {
//  137     LPLD_GPIO_ClearIntFlag(PORTE);
        MOVS     R0,#-1
        LDR.W    R1,??DataTable6_17  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//  138     row++;
        LDR.W    R0,??DataTable6_22
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_22
        STRB     R0,[R1, #+0]
//  139     if(row>=ROWbegin && row<ROWend)
        LDR.W    R0,??DataTable6_22
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+80
        CMP      R0,#+120
        BCS.N    ??porte_isr_6
//  140     {
//  141       if(WhichBuffer==1)
        LDR.W    R0,??DataTable6_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??porte_isr_7
//  142         LPLD_DMA_LoadDstAddr(DMA_CH0,(Image1[rowAdr]));//加载或更换目的地址
        LDR.W    R0,??DataTable6_11
        LDR.W    R1,??DataTable6_21
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+180
        MLA      R0,R2,R1,R0
        LDR.W    R1,??DataTable6_23  ;; 0x40009010
        STR      R0,[R1, #+0]
        B.N      ??porte_isr_8
//  143       else
//  144         LPLD_DMA_LoadDstAddr(DMA_CH0,(Image2[rowAdr]));
??porte_isr_7:
        LDR.W    R0,??DataTable6_24
        LDR.W    R1,??DataTable6_21
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+180
        MLA      R0,R2,R1,R0
        LDR.W    R1,??DataTable6_23  ;; 0x40009010
        STR      R0,[R1, #+0]
//  145       LPLD_DMA_EnableReq(DMA_CH0);//初始化中设定主循环结束屏蔽请求源，故每一行都需重新使能请求源
??porte_isr_8:
        LDR.W    R0,??DataTable6_25  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable6_25  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  146       rowAdr++; 
        LDR.W    R0,??DataTable6_21
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_21
        STRB     R0,[R1, #+0]
//  147     }
//  148     if(row>=ROWend)
??porte_isr_6:
        LDR.W    R0,??DataTable6_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+200
        BLT.N    ??porte_isr_5
//  149     {
//  150       LPLD_DMA_DisableReq(DMA_CH0);//采集结束，屏蔽DMA请求源
        LDR.W    R0,??DataTable6_25  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable6_25  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  151       if(WhichBuffer==1)
        LDR.W    R0,??DataTable6_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??porte_isr_9
//  152         WhichBuffer=2;  //切换传图，图1图2依次传输
        MOVS     R0,#+2
        LDR.W    R1,??DataTable6_18
        STRB     R0,[R1, #+0]
        B.N      ??porte_isr_10
//  153       else
//  154         WhichBuffer=1;
??porte_isr_9:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_18
        STRB     R0,[R1, #+0]
//  155       end_flag=1;
??porte_isr_10:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_26
        STRB     R0,[R1, #+0]
//  156       start_flag=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_20
        STRB     R0,[R1, #+0]
//  157     }
//  158   }
//  159 }
??porte_isr_5:
        BX       LR               ;; return
//  160 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  161 void Calculate_Middle_Point(void)
//  162 {
Calculate_Middle_Point:
        PUSH     {R3-R9,LR}
//  163   int i,j,k=0,minj=COLUMN,maxj=0,mini=ROWend,maxi=ROWbegin,prok=0;
        MOVS     R0,#+0
        MOVS     R1,#+180
        MOVS     R2,#+0
        MOVS     R3,#+200
        MOVS     R12,#+80
        MOVS     R4,#+0
//  164  
//  165   int pointy,pointx;
//  166   if(WhichBuffer == 2)//正在传图2
        LDR.W    R7,??DataTable6_18
        LDRB     R7,[R7, #+0]
        CMP      R7,#+2
        BNE.W    ??Calculate_Middle_Point_0
//  167   {
//  168     lock=1;//锁图1，处理图1
        MOVS     R7,#+1
        LDR.W    LR,??DataTable6_19
        STRB     R7,[LR, #+0]
//  169     for(i=0;i<ROWnum;i++)
        MOVS     R7,#+0
        B.N      ??Calculate_Middle_Point_1
//  170     {
//  171       for(j=0;j<COLUMN;j++)
//  172       {
//  173         if(Image1[i][j]>=setvalue)
??Calculate_Middle_Point_2:
        LDR.W    LR,??DataTable6_11
        MOVS     R9,#+180
        MLA      LR,R9,R7,LR
        LDRB     LR,[R8, LR]
        LDR.W    R9,??DataTable6_27
        LDRB     R9,[R9, #+0]
        CMP      LR,R9
        BCC.N    ??Calculate_Middle_Point_3
//  174         {
//  175           k++;
        ADDS     R0,R0,#+1
//  176           if(j<=minj)
        CMP      R1,R8
        BLT.N    ??Calculate_Middle_Point_4
//  177             minj=j;
        MOV      R1,R8
//  178           if(j>=maxj)
??Calculate_Middle_Point_4:
        CMP      R8,R2
        BLT.N    ??Calculate_Middle_Point_5
//  179             maxj=j;
        MOV      R2,R8
//  180           if(mini>i)
??Calculate_Middle_Point_5:
        CMP      R7,R3
        BGE.N    ??Calculate_Middle_Point_6
//  181             mini=i;
        MOVS     R3,R7
//  182           if(maxi<i)
??Calculate_Middle_Point_6:
        CMP      R12,R7
        BGE.N    ??Calculate_Middle_Point_3
//  183             maxi=i;
        MOV      R12,R7
//  184         }
//  185       }
??Calculate_Middle_Point_3:
        ADDS     R8,R8,#+1
??Calculate_Middle_Point_7:
        CMP      R8,#+180
        BLT.N    ??Calculate_Middle_Point_2
//  186       if(k>prok)
        CMP      R4,R0
        BGE.N    ??Calculate_Middle_Point_8
//  187       {
//  188         prok=k;
        MOVS     R4,R0
//  189         pointy=i;
        MOVS     R5,R7
//  190         pointx=(minj+maxj)/2;
        ADDS     R0,R2,R1
        MOVS     R6,#+2
        SDIV     R6,R0,R6
//  191       }
//  192       k=0;
??Calculate_Middle_Point_8:
        MOVS     R0,#+0
        ADDS     R7,R7,#+1
??Calculate_Middle_Point_1:
        CMP      R7,#+120
        BGE.N    ??Calculate_Middle_Point_9
        MOVS     R8,#+0
        B.N      ??Calculate_Middle_Point_7
//  193 
//  194     }
//  195         /**********计算块区比例**********/
//  196     if (prok>0)
??Calculate_Middle_Point_9:
        CMP      R4,#+1
        BLT.W    ??Calculate_Middle_Point_10
//  197     {
//  198       for (i=pointy-prok/2>0 ? pointy-prok/2 : 0;i<=pointy+prok/2;i++)
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        SUBS     R0,R5,R0
        CMP      R0,#+1
        BLT.N    ??Calculate_Middle_Point_11
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        SUBS     R7,R5,R0
        B.N      ??Calculate_Middle_Point_12
??Calculate_Middle_Point_11:
        MOVS     R7,#+0
        B.N      ??Calculate_Middle_Point_12
//  199         for (j=pointx-prok/2>0 ? pointx-prok/2 : 0;j<=pointx+prok/2;j++)
//  200         {
//  201            if(Image1[i][j]>=setvalue)
??Calculate_Middle_Point_13:
        LDR.N    R0,??DataTable6_11
        MOVS     R1,#+180
        MLA      R0,R1,R7,R0
        LDRB     R0,[R8, R0]
        LDR.N    R1,??DataTable6_27
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??Calculate_Middle_Point_14
//  202             sumtuan=sumtuan+1;
        LDR.N    R0,??DataTable6_28
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1065353216
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6_28
        STR      R0,[R1, #+0]
//  203         }
??Calculate_Middle_Point_14:
        ADDS     R8,R8,#+1
??Calculate_Middle_Point_15:
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        ADDS     R0,R0,R6
        CMP      R0,R8
        BGE.N    ??Calculate_Middle_Point_13
        ADDS     R7,R7,#+1
??Calculate_Middle_Point_12:
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        ADDS     R0,R0,R5
        CMP      R0,R7
        BLT.N    ??Calculate_Middle_Point_16
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        SUBS     R0,R6,R0
        CMP      R0,#+1
        BLT.N    ??Calculate_Middle_Point_17
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        SUBS     R8,R6,R0
        B.N      ??Calculate_Middle_Point_15
??Calculate_Middle_Point_17:
        MOVS     R8,#+0
        B.N      ??Calculate_Middle_Point_15
//  204      sumtuan=sumtuan/prok/prok;
??Calculate_Middle_Point_16:
        MOVS     R0,R4
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.N    R0,??DataTable6_28
        LDR      R0,[R0, #+0]
        BL       __aeabi_fdiv
        MOVS     R7,R0
        MOVS     R0,R4
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable6_28
        STR      R0,[R1, #+0]
        B.N      ??Calculate_Middle_Point_10
//  205     }
//  206   }
//  207   else if(WhichBuffer == 1)//正在传图1
??Calculate_Middle_Point_0:
        LDR.N    R7,??DataTable6_18
        LDRB     R7,[R7, #+0]
        CMP      R7,#+1
        BNE.W    ??Calculate_Middle_Point_10
//  208   {
//  209     lock=2;//锁图2，处理图2
        MOVS     R7,#+2
        LDR.W    LR,??DataTable6_19
        STRB     R7,[LR, #+0]
//  210     for(i=0;i<ROWnum;i++)
        MOVS     R7,#+0
        B.N      ??Calculate_Middle_Point_18
//  211     {
//  212       for(j=0;j<COLUMN;j++)
//  213       {
//  214         if(Image2[i][j]>=setvalue)
??Calculate_Middle_Point_19:
        LDR.W    LR,??DataTable6_24
        MOVS     R9,#+180
        MLA      LR,R9,R7,LR
        LDRB     LR,[R8, LR]
        LDR.W    R9,??DataTable6_27
        LDRB     R9,[R9, #+0]
        CMP      LR,R9
        BCC.N    ??Calculate_Middle_Point_20
//  215         {
//  216           k++;
        ADDS     R0,R0,#+1
//  217           if(j<=minj)
        CMP      R1,R8
        BLT.N    ??Calculate_Middle_Point_21
//  218             minj=j;
        MOV      R1,R8
//  219           if(j>=maxj)
??Calculate_Middle_Point_21:
        CMP      R8,R2
        BLT.N    ??Calculate_Middle_Point_22
//  220             maxj=j;
        MOV      R2,R8
//  221           if(mini>i)
??Calculate_Middle_Point_22:
        CMP      R7,R3
        BGE.N    ??Calculate_Middle_Point_23
//  222             mini=i;
        MOVS     R3,R7
//  223           if(maxi<i)
??Calculate_Middle_Point_23:
        CMP      R12,R7
        BGE.N    ??Calculate_Middle_Point_20
//  224             maxi=i;
        MOV      R12,R7
//  225         }
//  226       }
??Calculate_Middle_Point_20:
        ADDS     R8,R8,#+1
??Calculate_Middle_Point_24:
        CMP      R8,#+180
        BLT.N    ??Calculate_Middle_Point_19
//  227       if(k>prok)
        CMP      R4,R0
        BGE.N    ??Calculate_Middle_Point_25
//  228       {
//  229         prok=k;
        MOVS     R4,R0
//  230         pointy=i;
        MOVS     R5,R7
//  231         pointx=(minj+maxj)/2;
        ADDS     R0,R2,R1
        MOVS     R6,#+2
        SDIV     R6,R0,R6
//  232       }
//  233       k=0;     
??Calculate_Middle_Point_25:
        MOVS     R0,#+0
        ADDS     R7,R7,#+1
??Calculate_Middle_Point_18:
        CMP      R7,#+120
        BGE.N    ??Calculate_Middle_Point_26
        MOVS     R8,#+0
        B.N      ??Calculate_Middle_Point_24
//  234     }
//  235     /**********计算块区比例**********/
//  236     if (prok>0)
??Calculate_Middle_Point_26:
        CMP      R4,#+1
        BLT.N    ??Calculate_Middle_Point_10
//  237     {
//  238       for (i=pointy-prok/2>0 ? pointy-prok/2 : 0;i<=pointy+prok/2;i++)
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        SUBS     R0,R5,R0
        CMP      R0,#+1
        BLT.N    ??Calculate_Middle_Point_27
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        SUBS     R7,R5,R0
        B.N      ??Calculate_Middle_Point_28
??Calculate_Middle_Point_27:
        MOVS     R7,#+0
        B.N      ??Calculate_Middle_Point_28
//  239         for (j=pointx-prok/2>0 ? pointx-prok/2 : 0;j<=pointx+prok/2;j++)
//  240         {
//  241           if (Image2[i][j]>=setvalue)
??Calculate_Middle_Point_29:
        LDR.N    R0,??DataTable6_24
        MOVS     R1,#+180
        MLA      R0,R1,R7,R0
        LDRB     R0,[R8, R0]
        LDR.N    R1,??DataTable6_27
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??Calculate_Middle_Point_30
//  242             sumtuan=sumtuan+1;
        LDR.N    R0,??DataTable6_28
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1065353216
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6_28
        STR      R0,[R1, #+0]
//  243         }
??Calculate_Middle_Point_30:
        ADDS     R8,R8,#+1
??Calculate_Middle_Point_31:
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        ADDS     R0,R0,R6
        CMP      R0,R8
        BGE.N    ??Calculate_Middle_Point_29
        ADDS     R7,R7,#+1
??Calculate_Middle_Point_28:
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        ADDS     R0,R0,R5
        CMP      R0,R7
        BLT.N    ??Calculate_Middle_Point_32
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        SUBS     R0,R6,R0
        CMP      R0,#+1
        BLT.N    ??Calculate_Middle_Point_33
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        SUBS     R8,R6,R0
        B.N      ??Calculate_Middle_Point_31
??Calculate_Middle_Point_33:
        MOVS     R8,#+0
        B.N      ??Calculate_Middle_Point_31
//  244       sumtuan=sumtuan/prok/prok;
??Calculate_Middle_Point_32:
        MOVS     R0,R4
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.N    R0,??DataTable6_28
        LDR      R0,[R0, #+0]
        BL       __aeabi_fdiv
        MOVS     R7,R0
        MOVS     R0,R4
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable6_28
        STR      R0,[R1, #+0]
//  245     }
//  246   } 
//  247    lock=0; //解除图像锁定
??Calculate_Middle_Point_10:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_19
        STRB     R0,[R1, #+0]
//  248    //如果没有亮点
//  249     testsum[0]=testsum[1];
        LDR.N    R0,??DataTable6_29
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable6_29
        STR      R0,[R1, #+0]
//  250   testsum[1]=testsum[2];
        LDR.N    R0,??DataTable6_29
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable6_29
        STR      R0,[R1, #+4]
//  251   testsum[2]=testsum[3];
        LDR.N    R0,??DataTable6_29
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable6_29
        STR      R0,[R1, #+8]
//  252   testsum[3]=testsum[4];
        LDR.N    R0,??DataTable6_29
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable6_29
        STR      R0,[R1, #+12]
//  253   testsum[4]=sumtuan;
        LDR.N    R0,??DataTable6_28
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_29
        STR      R0,[R1, #+16]
//  254   testsum_average=(testsum[0]+testsum[1]+testsum[2]+testsum[3]+testsum[4])/5;//平均值滤波
        LDR.N    R0,??DataTable6_29
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable6_29
        LDR      R0,[R0, #+4]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6_29
        LDR      R1,[R1, #+8]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6_29
        LDR      R1,[R1, #+12]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6_29
        LDR      R1,[R1, #+16]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6_30  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable6_31
        STR      R0,[R1, #+0]
//  255   if (prok==0 || testsum_average<0.55)
        CMP      R4,#+0
        BEQ.N    ??Calculate_Middle_Point_34
        LDR.N    R0,??DataTable6_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_32  ;; 0x3f0ccccd
        BL       __aeabi_cfcmple
        BCS.N    ??Calculate_Middle_Point_35
//  256     NOpoint=1;
??Calculate_Middle_Point_34:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_33
        STRB     R0,[R1, #+0]
        B.N      ??Calculate_Middle_Point_36
//  257   else 
//  258   {
//  259     NOpoint=0;
??Calculate_Middle_Point_35:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_33
        STRB     R0,[R1, #+0]
//  260     real_pointy=pointy;//一场图像真正的中点！！！
        LDR.N    R0,??DataTable6_34
        STRB     R5,[R0, #+0]
//  261     real_pointx=pointx;//一场图像真正的中点！！！
        LDR.N    R0,??DataTable6_35
        STRB     R6,[R0, #+0]
//  262   }
//  263 
//  264   sumtuan=0;
??Calculate_Middle_Point_36:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_28
        STR      R0,[R1, #+0]
//  265 }
        POP      {R0,R4-R9,PC}    ;; return
//  266 
//  267 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  268 void picture2pc(void)
//  269 {
picture2pc:
        PUSH     {R3-R5,LR}
//  270   int i,j;
//  271    if(end_flag)
        LDR.N    R0,??DataTable6_26
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??picture2pc_0
//  272   {
//  273     disable_irq(PORTE_IRQn); 
        MOVS     R0,#+91
        BL       NVIC_DisableIRQ
//  274     LPLD_UART_PutChar(UART4,0X01);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable6_12  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  275     LPLD_UART_PutChar(UART4,0XFE);
        MVNS     R1,#+1
        LDR.N    R0,??DataTable6_12  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  276     
//  277     for(i=0;i<ROWend-ROWbegin;i++)
        MOVS     R4,#+0
        B.N      ??picture2pc_1
//  278     {
//  279       for(j=0;j<COLUMN;j++)
//  280       {       
//  281         LPLD_UART_PutChar(UART4,Image1[i][j]);
??picture2pc_2:
        LDR.N    R0,??DataTable6_11
        MOVS     R1,#+180
        MLA      R0,R1,R4,R0
        LDRSB    R0,[R5, R0]
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable6_12  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  282       }
        ADDS     R5,R5,#+1
??picture2pc_3:
        CMP      R5,#+180
        BLT.N    ??picture2pc_2
        ADDS     R4,R4,#+1
??picture2pc_1:
        CMP      R4,#+120
        BGE.N    ??picture2pc_4
        MOVS     R5,#+0
        B.N      ??picture2pc_3
//  283     }
//  284     LPLD_UART_PutChar(UART4,0XFE);
??picture2pc_4:
        MVNS     R1,#+1
        LDR.N    R0,??DataTable6_12  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  285     LPLD_UART_PutChar(UART4,0X01);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable6_12  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  286     enable_irq(PORTE_IRQn);
        MOVS     R0,#+91
        BL       NVIC_EnableIRQ
//  287     end_flag=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_26
        STRB     R0,[R1, #+0]
//  288   }
//  289   
//  290 }
??picture2pc_0:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     ??dmaReq_port_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x20003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     ??href_port_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x90013

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     ??vsync_port_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     ??data_port_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     ??dma_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0x400ff110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     Image1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     ??uart4_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     ??uart0_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     0x98967f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     0x4004d0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     WhichBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     start_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     rowAdr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_22:
        DC32     row

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_23:
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_24:
        DC32     Image2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_25:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_26:
        DC32     end_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_27:
        DC32     setvalue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_28:
        DC32     sumtuan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_29:
        DC32     testsum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_30:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_31:
        DC32     testsum_average

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_32:
        DC32     0x3f0ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_33:
        DC32     NOpoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_34:
        DC32     real_pointy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_35:
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
// 
// 86 616 bytes in section .bss
//      2 bytes in section .data
//  1 970 bytes in section .text
// 
//  1 970 bytes of CODE memory
// 86 618 bytes of DATA memory
//
//Errors: none
//Warnings: none
