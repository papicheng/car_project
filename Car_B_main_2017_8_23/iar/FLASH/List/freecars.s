///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      23/Aug/2017  10:34:55
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\freecars.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\freecars.c
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
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List\freecars.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_PutChar
        EXTERN Speed_PID
        EXTERN Turn_PID
        EXTERN __aeabi_cdcmpeq
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN car_stop_flag

        PUBLIC FreeCarsDataNum
        PUBLIC SerialPortRx
        PUBLIC UartCmd
        PUBLIC UartData
        PUBLIC UartDebug
        PUBLIC `push`
        PUBLIC sendDataToScope
        PUBLIC stopflag
        PUBLIC uSendBuf
        PUBLIC uart4_isr

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\freecars.c
//    1 
//    2 
//    3 #include "common.h"
//    4 #include "Freecars.h"
//    5 #include "timer.h"
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 uint8 uSendBuf[UartDataNum*2]={0};
uSendBuf:
        DS8 36

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//    8 uint8 FreeCarsDataNum=UartDataNum*2;//����ͨ���� UartDataNum*2(��Ϊ������Int16�͵�)
FreeCarsDataNum:
        DC8 34

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
//    9 double UartData[9] = {0};
UartData:
        DS8 72
//   10 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 SerialPortType SerialPortRx;
SerialPortRx:
        DS8 108
//   12 //��ʾFreecars��λ���޸�����
//   13 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   14 uint8 stopflag=0;
stopflag:
        DS8 1
//   15 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 void UartDebug(void)
//   17 {
UartDebug:
        PUSH     {R7,LR}
//   18   LPLD_UART_PutChar(UART4,1);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   19   
//   20   if(UartData[0]!=0)
        LDR.W    R0,??DataTable4_1
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        MOVS     R1,#+0
        BL       __aeabi_cdcmpeq
        BEQ.N    ??UartDebug_0
//   21   {
//   22     Speed_PID.P=(float)UartData[0];
        LDR.W    R2,??DataTable4_1
        LDRD     R0,R1,[R2, #+0]
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//   23   }
//   24   if(UartData[1]!=0)
??UartDebug_0:
        LDR.W    R0,??DataTable4_1
        LDRD     R2,R3,[R0, #+8]
        MOVS     R0,#+0
        MOVS     R1,#+0
        BL       __aeabi_cdcmpeq
        BEQ.N    ??UartDebug_1
//   25   {
//   26     Speed_PID.I=(float)(UartData[1]);
        LDR.W    R2,??DataTable4_1
        LDRD     R0,R1,[R2, #+8]
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+4]
//   27     
//   28   }
//   29   if(UartData[2]!=0)
??UartDebug_1:
        LDR.W    R0,??DataTable4_1
        LDRD     R2,R3,[R0, #+16]
        MOVS     R0,#+0
        MOVS     R1,#+0
        BL       __aeabi_cdcmpeq
        BEQ.N    ??UartDebug_2
//   30   {
//   31     Speed_PID.D=(int16)(UartData[2]);
        LDR.W    R2,??DataTable4_1
        LDRD     R0,R1,[R2, #+16]
        BL       __aeabi_d2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+8]
//   32     
//   33   }
//   34   if(UartData[3]!=0)
??UartDebug_2:
        LDR.W    R0,??DataTable4_1
        LDRD     R2,R3,[R0, #+24]
        MOVS     R0,#+0
        MOVS     R1,#+0
        BL       __aeabi_cdcmpeq
        BEQ.N    ??UartDebug_3
//   35   {
//   36     car_stop_flag=(uint8)(UartData[3]); 
        LDR.W    R2,??DataTable4_1
        LDRD     R0,R1,[R2, #+24]
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable4_3
        STRB     R0,[R1, #+0]
//   37   }
//   38   
//   39   if(UartData[4]!=0)
??UartDebug_3:
        LDR.W    R0,??DataTable4_1
        LDRD     R2,R3,[R0, #+32]
        MOVS     R0,#+0
        MOVS     R1,#+0
        BL       __aeabi_cdcmpeq
        BEQ.N    ??UartDebug_4
//   40   {
//   41     Turn_PID.P=(int16)UartData[0];   //������ֵ
        LDR.N    R2,??DataTable4_1
        LDRD     R0,R1,[R2, #+0]
        BL       __aeabi_d2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_4
        STR      R0,[R1, #+0]
//   42   }
//   43   if(UartData[5]!=0)
??UartDebug_4:
        LDR.N    R0,??DataTable4_1
        LDRD     R2,R3,[R0, #+40]
        MOVS     R0,#+0
        MOVS     R1,#+0
        BL       __aeabi_cdcmpeq
        BEQ.N    ??UartDebug_5
//   44   {
//   45     Turn_PID.D=(UartData[5]);
        LDR.N    R2,??DataTable4_1
        LDRD     R0,R1,[R2, #+40]
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_4
        STR      R0,[R1, #+8]
//   46   }
//   47   if(UartData[6]!=0)
//   48   {
//   49 //   Speed_PID.P=(int)(UartData[6]);
//   50   }
//   51   if(UartData[7]!=0)
//   52   {
//   53 //    Speed_PID.I=(int16)(UartData[7]);
//   54   }
//   55   if(UartData[8]!=0)
//   56   {
//   57 //    Speed_PID.D=(int16)(UartData[8]);
//   58   }
//   59 }
??UartDebug_5:
        POP      {R0,PC}          ;; return
//   60 /*
//   61 ������պ���
//   62 CmdNum��0~255������
//   63 DATA  ��0~255����������Ӧ��������
//   64 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 void UartCmd(uint8 CmdNum,uint8 Data)
//   66 {
UartCmd:
        PUSH     {R7,LR}
//   67   if(CmdNum==2&&Data==102)//page up
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??UartCmd_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+102
        BNE.N    ??UartCmd_0
//   68   {
//   69     stopflag=!stopflag;
        LDR.N    R2,??DataTable4_5
        LDRB     R2,[R2, #+0]
        CMP      R2,#+0
        BNE.N    ??UartCmd_1
        MOVS     R2,#+1
        LDR.N    R3,??DataTable4_5
        STRB     R2,[R3, #+0]
        B.N      ??UartCmd_0
??UartCmd_1:
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_5
        STRB     R2,[R3, #+0]
//   70     
//   71   }
//   72   if(CmdNum==2&&Data==103)//page down
??UartCmd_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??UartCmd_2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+103
        BNE.N    ??UartCmd_2
//   73   {
//   74     
//   75     LPLD_UART_PutChar(UART4,'d');
        MOVS     R1,#+100
        LDR.N    R0,??DataTable4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   76   }
//   77 }
??UartCmd_2:
        POP      {R0,PC}          ;; return
//   78 /*��ѯ������һ֡����
//   79 ����ʱ�������ݳ����й�
//   80 �����Է����ж����������Ե���
//   81 ����ʱ����㿴�����ĵ�
//   82 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 void sendDataToScope(void)
//   84 {
sendDataToScope:
        PUSH     {R3-R5,LR}
//   85   uint8 i,sum=0;
        MOVS     R5,#+0
//   86   //ʹ����ѯ�ķ�ʽ�������ݣ�������δ���ͣ�����ͣ�ڴ˴�ֱ���������
//   87   LPLD_UART_PutChar(UART4,251); 
        MVNS     R1,#+4
        LDR.N    R0,??DataTable4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   88   LPLD_UART_PutChar(UART4,109); 
        MOVS     R1,#+109
        LDR.N    R0,??DataTable4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   89   LPLD_UART_PutChar(UART4,37); 
        MOVS     R1,#+37
        LDR.N    R0,??DataTable4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   90   sum+=(251); //ȫ�����ݼ���У��
        SUBS     R5,R5,#+5
//   91   sum+=(109);
        ADDS     R5,R5,#+109
//   92   sum+=(37);
        ADDS     R5,R5,#+37
//   93   for(i=0;i<FreeCarsDataNum;i++)
        MOVS     R4,#+0
        B.N      ??sendDataToScope_0
//   94   {
//   95     LPLD_UART_PutChar(UART4,uSendBuf[i]);
??sendDataToScope_1:
        LDR.N    R0,??DataTable4_6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R0,[R4, R0]
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   96     sum+=uSendBuf[i]; //ȫ�����ݼ���У��
        LDR.N    R0,??DataTable4_6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R4, R0]
        ADDS     R5,R0,R5
//   97   }
        ADDS     R4,R4,#+1
??sendDataToScope_0:
        LDR.N    R0,??DataTable4_7
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BCC.N    ??sendDataToScope_1
//   98   LPLD_UART_PutChar(UART4,sum);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   99 }
        POP      {R0,R4,R5,PC}    ;; return
//  100 /*
//  101 ��ʾ����ĳ��ͨ���������������
//  102 chanel��ͨ��
//  103 data ������-32768~32767
//  104 push ��������������䵽���������棬��Ȼdate��16λ�ģ����������8λ�������档
//  105 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 void push(uint8 chanel,uint16 data)
//  107 {
//  108   uSendBuf[chanel*2]=data/256;
`push`:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R2,#+256
        SDIV     R2,R1,R2
        LDR.N    R3,??DataTable4_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R2,[R3, R0, LSL #+1]
//  109   uSendBuf[chanel*2+1]=data%256;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R2,#+256
        SDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        LDR.N    R1,??DataTable4_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+1
        STRB     R3,[R0, #+1]
//  110 }
        BX       LR               ;; return
//  111 //�����жϻص�����

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  112 void uart4_isr(void)  //�жϴ�����
//  113 {
uart4_isr:
        PUSH     {R3-R5,LR}
//  114   int i,b,d1;
//  115   uint32 d;
//  116   //��������жϺ���
//  117   if((UART4->S1 & UART_S1_RDRF_MASK) && (UART4->C2 & UART_C2_RIE_MASK))
        LDR.N    R0,??DataTable4_8  ;; 0x400ea004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.W    ??uart4_isr_0
        LDR.N    R0,??DataTable4_9  ;; 0x400ea003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.W    ??uart4_isr_0
//  118   {
//  119     SerialPortRx.Data = LPLD_UART_GetChar(UART4);  
        LDR.N    R0,??DataTable4  ;; 0x400ea000
        BL       LPLD_UART_GetChar
        LDR.N    R1,??DataTable4_10
        STRB     R0,[R1, #+4]
//  120     if(SerialPortRx.Stack < UartRxBufferLen)
        LDR.N    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BGE.W    ??uart4_isr_1
//  121     {
//  122       SerialPortRx.Buffer[SerialPortRx.Stack++] = SerialPortRx.Data;
        LDR.N    R0,??DataTable4_10
        LDRB     R0,[R0, #+4]
        LDR.N    R1,??DataTable4_10
        LDR.N    R2,??DataTable4_10
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        STRB     R0,[R1, #+6]
        LDR.N    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_10
        STR      R0,[R1, #+0]
//  123       if(SerialPortRx.Stack >= UartRxDataLen//UartRxDataLen����Ϊһ֡
//  124          && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen]  ==0xff//У����ͷ
//  125            && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+1]==0x55
//  126              && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+2]==0xaa
//  127                && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+3]==0x10)
        LDR.N    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BLT.W    ??uart4_isr_2
        LDR.N    R0,??DataTable4_10
        LDR.N    R1,??DataTable4_10
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-35]
        CMP      R0,#+255
        BNE.W    ??uart4_isr_2
        LDR.N    R0,??DataTable4_10
        LDR.N    R1,??DataTable4_10
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-34]
        CMP      R0,#+85
        BNE.N    ??uart4_isr_2
        LDR.N    R0,??DataTable4_10
        LDR.N    R1,??DataTable4_10
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-33]
        CMP      R0,#+170
        BNE.N    ??uart4_isr_2
        LDR.N    R0,??DataTable4_10
        LDR.N    R1,??DataTable4_10
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-32]
        CMP      R0,#+16
        BNE.N    ??uart4_isr_2
//  128       {//double data 9��ͨ������У��
//  129         SerialPortRx.Check = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_10
        STRB     R0,[R1, #+107]
//  130         b = SerialPortRx.Stack - UartRxDataLen;//��ʼλ
        LDR.N    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        SUBS     R4,R0,#+41
//  131         for(i=b;i<SerialPortRx.Stack-1;i++)//��У��λ���λ����У��
        MOVS     R5,R4
        B.N      ??uart4_isr_3
//  132         {
//  133           SerialPortRx.Check += SerialPortRx.Buffer[i];//У��
??uart4_isr_4:
        LDR.N    R0,??DataTable4_10
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable4_10
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+6]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable4_10
        STRB     R0,[R1, #+107]
//  134         }
        ADDS     R5,R5,#+1
??uart4_isr_3:
        LDR.N    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        CMP      R5,R0
        BLT.N    ??uart4_isr_4
//  135         if(SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1])
        LDR.N    R0,??DataTable4_10
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable4_10
        LDR.N    R2,??DataTable4_10
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+5]
        CMP      R0,R1
        BNE.N    ??uart4_isr_5
//  136         {//У��ɹ����������ݽ���
//  137           for(i = 0;i<9;i++)
        MOVS     R5,#+0
        B.N      ??uart4_isr_6
//  138           {
//  139             d = SerialPortRx.Buffer[b+i*4+4]*0x1000000L + SerialPortRx.Buffer[b+i*4+5]*0x10000L + SerialPortRx.Buffer[b+i*4+6]*0x100L + SerialPortRx.Buffer[b+i*4+7];
//  140             if(d>0x7FFFFFFF)
//  141             {
//  142               d1 = 0x7FFFFFFF - d;
//  143             }
//  144             else
//  145             {
//  146               d1 = d;
//  147             }
//  148             UartData[i]=d1;
??uart4_isr_7:
??uart4_isr_8:
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable4_1
        ADDS     R2,R2,R5, LSL #+3
        STRD     R0,R1,[R2, #+0]
//  149             UartData[i]/=65536.0;
        LDR.N    R0,??DataTable4_1
        ADDS     R2,R0,R5, LSL #+3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_11  ;; 0x40f00000
        BL       __aeabi_ddiv
        LDR.N    R2,??DataTable4_1
        ADDS     R2,R2,R5, LSL #+3
        STRD     R0,R1,[R2, #+0]
        ADDS     R5,R5,#+1
??uart4_isr_6:
        CMP      R5,#+9
        BGE.N    ??uart4_isr_9
        LDR.N    R0,??DataTable4_10
        ADDS     R1,R4,R5, LSL #+2
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+10]
        MOVS     R1,#+16777216
        LDR.N    R2,??DataTable4_10
        ADDS     R3,R4,R5, LSL #+2
        ADDS     R2,R3,R2
        LDRB     R2,[R2, #+11]
        MOVS     R3,#+65536
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.N    R1,??DataTable4_10
        ADDS     R2,R4,R5, LSL #+2
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+12]
        MOV      R2,#+256
        MLA      R0,R2,R1,R0
        LDR.N    R1,??DataTable4_10
        ADDS     R2,R4,R5, LSL #+2
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+13]
        UXTAB    R0,R0,R1
        CMP      R0,#-2147483648
        BCC.N    ??uart4_isr_7
        MVNS     R1,#-2147483648
        SUBS     R0,R1,R0
        B.N      ??uart4_isr_8
//  150           }
//  151           UartDebug();  //תȥ�������ܵ������ݸ�������
??uart4_isr_9:
        BL       UartDebug
//  152         }
//  153         SerialPortRx.Stack = 0;
??uart4_isr_5:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_10
        STR      R0,[R1, #+0]
        B.N      ??uart4_isr_0
//  154       }
//  155       else if(SerialPortRx.Stack >= UartRxCmdLen//UartRxDataLen����Ϊһ֡
//  156               && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen]  ==0xff
//  157                 && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+1]==0x55
//  158                   && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+2]==0xaa
//  159                     && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+3]==0x77)//cmd
??uart4_isr_2:
        LDR.N    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+7
        BLT.N    ??uart4_isr_0
        LDR.N    R0,??DataTable4_10
        LDR.N    R1,??DataTable4_10
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+255
        BNE.N    ??uart4_isr_0
        LDR.N    R0,??DataTable4_10
        LDR.N    R1,??DataTable4_10
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        CMP      R0,#+85
        BNE.N    ??uart4_isr_0
        LDR.N    R0,??DataTable4_10
        LDR.N    R1,??DataTable4_10
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+1]
        CMP      R0,#+170
        BNE.N    ??uart4_isr_0
        LDR.N    R0,??DataTable4_10
        LDR.N    R1,??DataTable4_10
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+2]
        CMP      R0,#+119
        BNE.N    ??uart4_isr_0
//  160       {
//  161         SerialPortRx.Check = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_10
        STRB     R0,[R1, #+107]
//  162         b = SerialPortRx.Stack - UartRxCmdLen;//��ʼλ
        LDR.N    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        SUBS     R4,R0,#+7
//  163         for(i=b; i<SerialPortRx.Stack-1; i++)//��У��λ���λ����У��
        MOVS     R5,R4
        B.N      ??uart4_isr_10
//  164         {
//  165           SerialPortRx.Check += SerialPortRx.Buffer[i];//У��
??uart4_isr_11:
        LDR.N    R0,??DataTable4_10
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable4_10
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+6]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable4_10
        STRB     R0,[R1, #+107]
//  166         }
        ADDS     R5,R5,#+1
??uart4_isr_10:
        LDR.N    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        CMP      R5,R0
        BLT.N    ??uart4_isr_11
//  167         if(SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1])
        LDR.N    R0,??DataTable4_10
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable4_10
        LDR.N    R2,??DataTable4_10
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+5]
        CMP      R0,R1
        BNE.N    ??uart4_isr_12
//  168         {//У��ɹ�
//  169           UartCmd(UartCmdNum,UartCmdData);//������յ����������MCU�������
        LDR.N    R0,??DataTable4_10
        LDR.N    R1,??DataTable4_10
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R1,[R0, #+4]
        LDR.N    R0,??DataTable4_10
        LDR.N    R2,??DataTable4_10
        LDR      R2,[R2, #+0]
        ADDS     R0,R2,R0
        LDRB     R0,[R0, #+3]
        BL       UartCmd
//  170         }
//  171         SerialPortRx.Stack = 0;
??uart4_isr_12:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_10
        STR      R0,[R1, #+0]
        B.N      ??uart4_isr_0
//  172       }
//  173     }
//  174     else
//  175     {
//  176       SerialPortRx.Stack = 0;
??uart4_isr_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_10
        STR      R0,[R1, #+0]
//  177     } 
//  178   }
//  179 }
??uart4_isr_0:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     UartData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     Speed_PID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     car_stop_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     Turn_PID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     stopflag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     uSendBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     FreeCarsDataNum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x400ea004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x400ea003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     SerialPortRx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x40f00000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  180 
//  181 
//  182 
//  183 
//  184 
//  185 
// 
//   217 bytes in section .bss
//     1 byte  in section .data
// 1 002 bytes in section .text
// 
// 1 002 bytes of CODE memory
//   218 bytes of DATA memory
//
//Errors: none
//Warnings: 4
