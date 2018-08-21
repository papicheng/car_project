///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      23/Aug/2017  10:35:13
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\timer.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\timer.c
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
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List\timer.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Calculate_Middle_Point
        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN LPLD_FTM_QD_Enable
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_PIT_Init
        EXTERN NOpoint
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4
        EXTERN code_switch
        EXTERN move_flag
        EXTERN real_pointx
        EXTERN real_pointy

        PUBLIC A_Speed_PID_Cal
        PUBLIC Acenter
        PUBLIC DianG_Init
        PUBLIC L_R_judge
        PUBLIC Middle_Point_Configure
        PUBLIC PID_Init
        PUBLIC QD_init
        PUBLIC Servo_Init
        PUBLIC SetCenterX
        PUBLIC SetSpeed
        PUBLIC SetSpeed_Configuration
        PUBLIC Speed_PID
        PUBLIC Speed_PID_Cal
        PUBLIC Turn_PID
        PUBLIC Turn_PID_Cal
        PUBLIC Turn_close_PID
        PUBLIC acce
        PUBLIC atime
        PUBLIC brake_start
        PUBLIC bz_end
        PUBLIC bz_flag
        PUBLIC bz_speed
        PUBLIC car_stop_flag
        PUBLIC dc_judge
        PUBLIC del
        PUBLIC highspeed
        PUBLIC i
        PUBLIC lowspeed
        PUBLIC lph1
        PUBLIC lph2
        PUBLIC lph3
        PUBLIC lph4
        PUBLIC lph5
        PUBLIC lph6
        PUBLIC lph7
        PUBLIC lr_lock
        PUBLIC passflag
        PUBLIC ph_lock1
        PUBLIC ph_lock2
        PUBLIC pit0_isr
        PUBLIC pit_init
        PUBLIC qd_result
        PUBLIC rol
        PUBLIC rph1
        PUBLIC rph2
        PUBLIC rph3
        PUBLIC rph4
        PUBLIC rph5
        PUBLIC rph6
        PUBLIC rph7
        PUBLIC s5
        PUBLIC sflag
        PUBLIC speed
        PUBLIC ss
        PUBLIC stop
        PUBLIC turn_large
        PUBLIC turn_little
        PUBLIC turnspeed
        PUBLIC xbnum
        PUBLIC zero_lock1
        PUBLIC zero_lock2

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\timer.c
//    1   
//    2 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable7  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//    3 #include "timer.h"
//    4 #include "camera_test.h"
//    5 #include "infrared.h"
//    6 #include "Freecars.h"
//    7 #include "math.h"
//    8 #include "Heb_learning.h"
//    9 #include "botton.h"
//   10 
//   11 extern uint8 code_switch;  
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13 PID_TypeDef Turn_PID,Turn_close_PID,Speed_PID;
Turn_PID:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
Turn_close_PID:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
Speed_PID:
        DS8 44
//   14 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   15 short qd_result;
qd_result:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   16 int16 speed;
speed:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   17 uint8 car_stop_flag=0; //������ʱͣ����־
car_stop_flag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   18 int16 highspeed=400,lowspeed=250,turnspeed=200;
highspeed:
        DC16 400

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
lowspeed:
        DC16 250

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
turnspeed:
        DC16 200

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   19 int16 SetSpeed=0;
SetSpeed:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   20 uint8 SetCenterX=85;//����ƫ��
SetCenterX:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   21 uint8 Acenter=85;  //ʵ������
Acenter:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   22 uint8 lph1=85,lph2=85,lph3=85,lph4=85,lph5=85,lph6=85,lph7=85,rph1=85,rph2=85,rph3=85,rph4=85,rph5=85,rph6=85,rph7=85;
lph1:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
lph2:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
lph3:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
lph4:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
lph5:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
lph6:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
lph7:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
rph1:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
rph2:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
rph3:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
rph4:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
rph5:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
rph6:
        DC8 85

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
rph7:
        DC8 85

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   23 uint8 L_R_judge[50][2];
L_R_judge:
        DS8 100
//   24 
//   25 //��һλ��ʾ���������ű����ƫ��(1)������ƫ��(0)
//   26 //�ڶ�λ��ʾ�ű�Ϩ���ҿ�������һ���ű�ʱ��ת(1)������ת(0)  ֱ����2
//   27 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   28 float atime=100;  //PID����
atime:
        DC32 42C80000H

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   29 uint8 xbnum;
xbnum:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   30 int16 s5[10]={0};  //�����ж�����
s5:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   31 int8 i=0;  //���ڲɼ�10�ζ����� 
i:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   32 int16 ss,dc_judge=30;   //�����ж������ֵ  ��������
ss:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
dc_judge:
        DC16 30

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   33 uint8 sflag,rol=1,passflag;  //rolΪ1,��ƫ��,Ϊ0,��ƫ��
sflag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
rol:
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
passflag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   34 uint16 acce=70,stop=300; //������ֵ ͣ����־
acce:
        DC16 70

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
stop:
        DC16 300

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   35 uint32 turn_little[2],turn_large[2];//0�� 1�� ���ϴ��
turn_little:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
turn_large:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   36 uint8 lr_lock;//�״ο����Ƶ�λ�þ���ƫ������
lr_lock:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   37 uint8 zero_lock1,zero_lock2;//�����������趨�ٶ�Ϊ���٣����ڼ���
zero_lock1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
zero_lock2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   38 uint8 ph_lock1,ph_lock2;
ph_lock1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
ph_lock2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   39 uint8 bz_flag;//���ϱ�־
bz_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   40 uint8 del; //����ƫ��������ʱȥ��
del:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   41 uint8 bz_end=12;  //y����
bz_end:
        DC8 12

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   42 uint8 brake_start=50; //y����
brake_start:
        DC8 50

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   43 int16 bz_speed=200;
bz_speed:
        DC16 200
//   44 
//   45 /*----------------PID��ʼ��-----------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void PID_Init(void)
//   47 {  
//   48   Turn_PID.P=15;    //15      //ת���PID
PID_Init:
        LDR.W    R0,??DataTable5  ;; 0x41700000
        LDR.W    R1,??DataTable5_1
        STR      R0,[R1, #+0]
//   49   Turn_PID.I=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_1
        STR      R0,[R1, #+4]
//   50   Turn_PID.D=20;       //5 
        LDR.W    R0,??DataTable5_2  ;; 0x41a00000
        LDR.W    R1,??DataTable5_1
        STR      R0,[R1, #+8]
//   51   Turn_PID.iLimit=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_1
        STR      R0,[R1, #+32]
//   52   
//   53   Turn_close_PID.P=10;           //10       //ת���PID
        LDR.W    R0,??DataTable5_3  ;; 0x41200000
        LDR.W    R1,??DataTable5_4
        STR      R0,[R1, #+0]
//   54   Turn_close_PID.I=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_4
        STR      R0,[R1, #+4]
//   55   Turn_close_PID.D=10;       //10 
        LDR.W    R0,??DataTable5_3  ;; 0x41200000
        LDR.W    R1,??DataTable5_4
        STR      R0,[R1, #+8]
//   56   Turn_close_PID.iLimit=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_4
        STR      R0,[R1, #+32]
//   57   
//   58   Speed_PID.P=90;//50  90             //�ٶ�PID
        LDR.W    R0,??DataTable5_5  ;; 0x42b40000
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//   59   Speed_PID.I=10;//10
        LDR.W    R0,??DataTable5_3  ;; 0x41200000
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+4]
//   60   Speed_PID.D=1;//1 2
        MOVS     R0,#+1065353216
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+8]
//   61   Speed_PID.Desired=0;                  
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+12]
//   62   Speed_PID.Error=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+16]
//   63   Speed_PID.PreError=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+20]
//   64   Speed_PID.PrePreError=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+24]
//   65   Speed_PID.Integer=0;                 //������             
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+28]
//   66   Speed_PID.iLimit=0;                  //������ֵ
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+32]
//   67   Speed_PID.Deriv=0;                   //΢����
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+36]
//   68   Speed_PID.Output=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+40]
//   69   Speed_PID.iLimit=3000;
        LDR.W    R0,??DataTable5_6  ;; 0x453b8000
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+32]
//   70 }
        BX       LR               ;; return
//   71 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 void pit_init(void)
//   73 {
pit_init:
        PUSH     {R7,LR}
//   74   static PIT_InitTypeDef pit0_init_struct; //10ms��ʱ�ж�
//   75   pit0_init_struct.PIT_Pitx = PIT0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8
        STRB     R0,[R1, #+0]
//   76   pit0_init_struct.PIT_PeriodMs =10;     //
        MOVS     R0,#+10
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+8]
//   77   pit0_init_struct.PIT_Isr = pit0_isr;   //�����жϺ���
        ADR.W    R0,pit0_isr
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+16]
//   78   LPLD_PIT_Init(pit0_init_struct);  
        LDR.W    R1,??DataTable8
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   79   disable_irq(PIT0_IRQn);
        MOVS     R0,#+68
        BL       NVIC_DisableIRQ
//   80 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??pit0_init_struct:
        DS8 20
//   81 
//   82 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   83 void pit0_isr(void)  
//   84 {
pit0_isr:
        PUSH     {R4,LR}
//   85   Calculate_Middle_Point();//�ű��е����
        BL       Calculate_Middle_Point
//   86   /*------------------ת�򲿷�---------------------------------*/
//   87   if(lr_lock==0 && !NOpoint && bz_flag==0)  //��ͼ���һ�ο����ű���߱��Ϻ�ƫ�������趨
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit0_isr_0
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit0_isr_0
        LDR.W    R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit0_isr_0
//   88   {
//   89     lr_lock=1;//����ƫ������
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//   90     if(real_pointx>Acenter)
        LDR.W    R0,??DataTable7_4
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable6_1
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??pit0_isr_1
//   91       rol=0;  //��ƫ��
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_2
        STRB     R0,[R1, #+0]
        B.N      ??pit0_isr_0
//   92     else
//   93       rol=1; //��ƫ��
??pit0_isr_1:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_2
        STRB     R0,[R1, #+0]
//   94   }
//   95   Middle_Point_Configure();  //ƫ���е��趨
??pit0_isr_0:
        BL       Middle_Point_Configure
//   96   Turn_PID_Cal();//ת��PID����,�õ�Turn_PID.Output
        BL       Turn_PID_Cal
//   97   /*
//   98   //���ϴ���趨
//   99   turn_little[0]=(uint32)Turn_PID.Output-300;  
//  100   turn_little[1]=(uint32)Turn_PID.Output+300;
//  101   turn_large[0]=(uint32)Turn_PID.Output-500;
//  102   turn_large[1]=(uint32)Turn_PID.Output+500;
//  103   //�޷�
//  104   turn_little[0]=(turn_little[0]<SerLeftMin)?SerLeftMin:turn_little[0];
//  105   turn_little[1]=(turn_little[1]>SerRightMax)?SerRightMax:turn_little[1];
//  106   turn_large[0]=(turn_large[0]<SerLeftMin)?SerLeftMin:turn_large[0];
//  107   turn_large[1]=(turn_large[1]>SerRightMax)?SerRightMax:turn_large[1];
//  108   */
//  109   turn_little[0]=SerMid-300;  
        MOVW     R0,#+4300
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+0]
//  110   turn_little[1]=SerMid+300;
        MOVW     R0,#+4900
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+4]
//  111   turn_large[0]=SerMid-500;
        MOVW     R0,#+4100
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  112   turn_large[1]=SerMid+500; 
        MOVW     R0,#+5100
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+4]
//  113   
//  114   //ת�����
//  115   if(dc_judge<0 && dc_judge>-40 && code_switch==16) //����������ƣ������������ȼ����
        LDR.W    R0,??DataTable9
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+39
        CMP      R0,#+39
        BCS.N    ??pit0_isr_2
        LDR.W    R0,??DataTable7_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+16
        BNE.N    ??pit0_isr_2
//  116     LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerLeftMin);
        MOVW     R2,#+3700
        MOVS     R1,#+0
        LDR.W    R0,??DataTable7_6  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??pit0_isr_3
//  117   
//  118   else if(!NOpoint)  //��ͼת�����
??pit0_isr_2:
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit0_isr_4
//  119   {
//  120     stop=300; //3sͣ��������λ
        MOV      R0,#+300
        LDR.W    R1,??DataTable7_7
        STRH     R0,[R1, #+0]
//  121     if(real_pointy < bz_end )  //���Ϸ�Χ����ת�����
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_8
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??pit0_isr_5
//  122     {
//  123       //Զ����С���
//  124       if( PTE27_I == 1)//���ϰ�   E27-----A15A
        LDR.W    R0,??DataTable7_9  ;; 0x43fe226c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_6
//  125         LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_little[1] ); 
        LDR.W    R0,??DataTable6_3
        LDR      R2,[R0, #+4]
        MOVS     R1,#+0
        LDR.W    R0,??DataTable7_6  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??pit0_isr_3
//  126       else if(PTE28_I==1)//���ϰ�   E28-----A14A
??pit0_isr_6:
        LDR.W    R0,??DataTable7_10  ;; 0x43fe2270
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_7
//  127         LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_little[0] );
        LDR.W    R0,??DataTable6_3
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        LDR.W    R0,??DataTable7_6  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??pit0_isr_3
//  128       //�����ϴ���
//  129       else if(PTD8_I == 1 )//���ϰ�
??pit0_isr_7:
        LDR.W    R0,??DataTable7_11  ;; 0x43fe1a20
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_8
//  130         LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_large[1] );
        LDR.W    R0,??DataTable6_4
        LDR      R2,[R0, #+4]
        MOVS     R1,#+0
        LDR.W    R0,??DataTable7_6  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??pit0_isr_3
//  131       else if(PTD9_I == 1 )//���ϰ�
??pit0_isr_8:
        LDR.W    R0,??DataTable7_12  ;; 0x43fe1a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_9
//  132         LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_large[0] );
        LDR.W    R0,??DataTable6_4
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        LDR.W    R0,??DataTable7_6  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??pit0_isr_3
//  133       else
//  134         LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,(uint32)Turn_PID.Output );//ת�����
??pit0_isr_9:
        LDR.W    R0,??DataTable5_1
        LDR      R0,[R0, #+40]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable7_6  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??pit0_isr_3
//  135     } 
//  136     else  
//  137       LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,(uint32)Turn_PID.Output );//��ͼ���ϰ����ƫ����ʻ 
??pit0_isr_5:
        LDR.W    R0,??DataTable5_1
        LDR      R0,[R0, #+40]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable7_6  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??pit0_isr_3
//  138   }
//  139   
//  140   else if(NOpoint && move_flag)//������ͼ�����Ѿ�����ʱת�����
??pit0_isr_4:
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??pit0_isr_3
        LDR.W    R0,??DataTable8_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??pit0_isr_3
//  141   {
//  142     zero_lock1=0; //��ͼ�����������
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_13
        STRB     R0,[R1, #+0]
//  143     zero_lock2=0; //��ͼ�����������
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_3
        STRB     R0,[R1, #+0]
//  144     lr_lock=0;   //ƫ���趨����
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  145     ph_lock1=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_1
        STRB     R0,[R1, #+0]
//  146     ph_lock2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_2
        STRB     R0,[R1, #+0]
//  147     if(code_switch==16)  //����
        LDR.W    R0,??DataTable7_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+16
        BNE.N    ??pit0_isr_10
//  148     {
//  149       if(stop--==0)  //�ѷ�����һ��ʱ����ͼ ͣ��
        LDR.W    R0,??DataTable7_7
        LDRH     R0,[R0, #+0]
        SUBS     R1,R0,#+1
        LDR.W    R2,??DataTable7_7
        STRH     R1,[R2, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??pit0_isr_10
//  150         car_stop_flag=1;  //�˱�־�趨�ٶ�Ϊ0�������ȼ����
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_14
        STRB     R0,[R1, #+0]
//  151     }
//  152     /*
//  153     //��ͼ����
//  154     //Զ�ϰ�
//  155     if(PTE27_I == 1 )
//  156       LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerRightMax );//���ϰ�
//  157     else if(PTE28_I==1)
//  158       LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerLeftMin );//���ϰ�
//  159     //���ϰ�
//  160     else if(PTD8_I==1)
//  161     {
//  162       LPLD_FTM_PWM_ChangeDuty(FTM1,  FTM_Ch0,SerRightMax );//���ϰ�
//  163       LPLD_LPTMR_DelayMs( 100 );
//  164     }
//  165     else if(PTD9_I==1)
//  166     {
//  167       LPLD_FTM_PWM_ChangeDuty(FTM1,  FTM_Ch0,SerLeftMin );//���ϰ�
//  168       
//  169       LPLD_LPTMR_DelayMs(100 );  //����ת��100ms
//  170     }
//  171     else   */
//  172       if(rol==1)
??pit0_isr_10:
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_11
//  173         LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerLeftMin);//��ת
        MOVW     R2,#+3700
        MOVS     R1,#+0
        LDR.W    R0,??DataTable7_6  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??pit0_isr_3
//  174       else
//  175         LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerRightMax);//��ת
??pit0_isr_11:
        MOVW     R2,#+5500
        MOVS     R1,#+0
        LDR.W    R0,??DataTable7_6  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
//  176   }
//  177   /*---------------------------------------------------*/
//  178   
//  179   /*-------------------�ٶȲ���------------------------------*/
//  180   s5[i++]=(real_pointx-SetCenterX)*(real_pointx-SetCenterX);
??pit0_isr_3:
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable6_1
        LDRB     R1,[R1, #+0]
        LDR.W    R2,??DataTable11
        LDRB     R2,[R2, #+0]
        SUBS     R1,R1,R2
        SMULBB   R0,R0,R1
        LDR.W    R1,??DataTable8_4
        LDR.W    R2,??DataTable8_5
        LDRSB    R2,[R2, #+0]
        STRH     R0,[R1, R2, LSL #+1]
        LDR.W    R0,??DataTable8_5
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8_5
        STRB     R0,[R1, #+0]
//  181   if(i>=10) i=0;  //�ɼ�10�ζ�����
        LDR.W    R0,??DataTable8_5
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??pit0_isr_12
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_5
        STRB     R0,[R1, #+0]
//  182   ss=(s5[0]+s5[1]+s5[2]+s5[3]+s5[4]+s5[5]+s5[6]+s5[7]+s5[8]+s5[9])/10;  //��Ӧ����ƽ����
??pit0_isr_12:
        LDR.W    R0,??DataTable8_4
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable8_4
        LDRSH    R1,[R1, #+2]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable8_4
        LDRSH    R1,[R1, #+4]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable8_4
        LDRSH    R1,[R1, #+6]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable8_4
        LDRSH    R1,[R1, #+8]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable8_4
        LDRSH    R1,[R1, #+10]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable8_4
        LDRSH    R1,[R1, #+12]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable8_4
        LDRSH    R1,[R1, #+14]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable8_4
        LDRSH    R1,[R1, #+16]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable8_4
        LDRSH    R1,[R1, #+18]
        ADDS     R0,R0,R1
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable10
        STRH     R0,[R1, #+0]
//  183   
//  184   qd_result = -LPLD_FTM_GetCounter(FTM2);//10�����������
        LDR.W    R0,??DataTable9_3  ;; 0x400b8000
        BL       LPLD_FTM_GetCounter
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable10_1
        STRH     R0,[R1, #+0]
//  185   LPLD_FTM_ClearCounter(FTM2);                //��ռ�����
        LDR.W    R0,??DataTable9_3  ;; 0x400b8000
        BL       LPLD_FTM_ClearCounter
//  186   speed = qd_result*100*100/ CAR_PLUSE_ONE_METER;//�ٶȼ���cm/s
        LDR.W    R0,??DataTable10_1
        LDRSH    R0,[R0, #+0]
        MOVW     R1,#+10000
        SMULBB   R0,R0,R1
        MOVW     R1,#+29360
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_1
        STRH     R0,[R1, #+0]
//  187   
//  188   SetSpeed_Configuration();//���ݲ�ͬ��������ٶ��趨
        BL       SetSpeed_Configuration
//  189   //pid����
//  190   Speed_PID_Cal(SetSpeed,speed);  
        LDR.W    R0,??DataTable11_1
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R4,R1
        LDR.W    R0,??DataTable11_2
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       Speed_PID_Cal
//  191   //Speed_PID.Output=Heb_learning_Function(&Speed_Struct,SetSpeed,speed,4,atime );
//  192   //A_Speed_PID_Cal(SetSpeed,speed);  //����PID
//  193   
//  194   if(move_flag)//������������
        LDR.W    R0,??DataTable8_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??pit0_isr_13
//  195   {
//  196     if (Speed_PID.Output>=0)
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+40]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??pit0_isr_14
//  197     {
//  198       LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,(uint32)Speed_PID.Output);
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+40]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+5
        LDR.W    R0,??DataTable11_3  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  199       LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,0);
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.W    R0,??DataTable11_3  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??pit0_isr_15
//  200     }
//  201     else //�����ת
//  202     { 
//  203       LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,(uint32)(-Speed_PID.Output));
??pit0_isr_14:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+40]
        EORS     R0,R0,#0x80000000
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+4
        LDR.W    R0,??DataTable11_3  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  204       LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);
        MOVS     R2,#+0
        MOVS     R1,#+5
        LDR.W    R0,??DataTable11_3  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??pit0_isr_15
//  205     }
//  206   }
//  207   else  //���ڷ�����������0
//  208   {
//  209     LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,0);
??pit0_isr_13:
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.W    R0,??DataTable11_3  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  210     LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);
        MOVS     R2,#+0
        MOVS     R1,#+5
        LDR.W    R0,??DataTable11_3  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  211   } 
//  212   
//  213   
//  214 }
??pit0_isr_15:
        POP      {R4,PC}          ;; return
//  215 
//  216 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  217 void SetSpeed_Configuration()//�ٶ�����
//  218 { 
SetSpeed_Configuration:
        PUSH     {R7,LR}
//  219   /*------------�ٶȿ�����Ҫ����---------------*/
//  220   if(NOpoint) //������ͼ���趨���٣������и�������
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SetSpeed_Configuration_0
//  221   {
//  222     SetSpeed=turnspeed;  
        LDR.W    R0,??DataTable11_4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
//  223     sflag=0;  //������־
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_5
        STRB     R0,[R1, #+0]
        B.N      ??SetSpeed_Configuration_1
//  224   }
//  225   else   
//  226   {
//  227     if(sflag==0)//��ͼ��δ��������
??SetSpeed_Configuration_0:
        LDR.W    R0,??DataTable11_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SetSpeed_Configuration_2
//  228     {
//  229       if(ss<acce)  //����ƽ�����ж�
        LDR.W    R0,??DataTable10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_6
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??SetSpeed_Configuration_3
//  230       {
//  231         SetSpeed=highspeed;
        LDR.W    R0,??DataTable11_7
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
//  232         sflag=1;//������־
        MOVS     R0,#+1
        LDR.W    R1,??DataTable11_5
        STRB     R0,[R1, #+0]
        B.N      ??SetSpeed_Configuration_2
//  233       }
//  234       else 
//  235         SetSpeed=lowspeed;
??SetSpeed_Configuration_3:
        LDR.W    R0,??DataTable11_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
//  236     }
//  237     
//  238     if(sflag==1)  //��ͼ�񣬸�������
??SetSpeed_Configuration_2:
        LDR.W    R0,??DataTable11_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??SetSpeed_Configuration_1
//  239       SetSpeed=highspeed;
        LDR.W    R0,??DataTable11_7
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
//  240   }
//  241   /*-------------------------------------*/
//  242   
//  243   //�����趨���Ը���ǰ���趨��Խ�������ȼ�Խ��
//  244    
//  245   if(real_pointy>=brake_start && !NOpoint)  //�����Ƽ���,�˶η��ں��棬�ɸ���ǰ���ٶ��趨
??SetSpeed_Configuration_1:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_9
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??SetSpeed_Configuration_4
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SetSpeed_Configuration_4
//  246   {
//  247     if((speed>420)|| zero_lock1==1)  
        LDR.W    R0,??DataTable11_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+420
        BGT.N    ??SetSpeed_Configuration_5
        LDR.W    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??SetSpeed_Configuration_6
//  248     {
//  249       zero_lock1=1;  //��1�������趨0�٣�ֱ����ͼ��0
??SetSpeed_Configuration_5:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_13
        STRB     R0,[R1, #+0]
//  250       SetSpeed=150;
        MOVS     R0,#+150
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
        B.N      ??SetSpeed_Configuration_4
//  251     }
//  252     else if((speed>380) || zero_lock2==1)
??SetSpeed_Configuration_6:
        LDR.W    R0,??DataTable11_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+380
        BGT.N    ??SetSpeed_Configuration_7
        LDR.W    R0,??DataTable8_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??SetSpeed_Configuration_8
//  253     {
//  254       zero_lock2=1;  //��1�������趨0�٣�ֱ����ͼ��0
??SetSpeed_Configuration_7:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable8_3
        STRB     R0,[R1, #+0]
//  255       SetSpeed=200;
        MOVS     R0,#+200
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
        B.N      ??SetSpeed_Configuration_4
//  256     }
//  257     else
//  258       SetSpeed=lowspeed; 
??SetSpeed_Configuration_8:
        LDR.W    R0,??DataTable11_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
//  259   }
//  260   /* 
//  261   if(real_pointy>=50 && !NOpoint)  //�����Ƽ���,�˶η��ں��棬�ɸ���ǰ���ٶ��趨
//  262   {
//  263     if(speed>lowspeed+50)  
//  264       SetSpeed=-lowspeed;
//  265     else
//  266       SetSpeed=lowspeed; 
//  267   }
//  268    */
//  269   //�����ٶȿ���
//  270   if(real_pointy <= bz_end && NOpoint==0)//��ͼ���Ϸ�Χ
??SetSpeed_Configuration_4:
        LDR.W    R0,??DataTable7_8
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable8_1
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??SetSpeed_Configuration_9
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SetSpeed_Configuration_9
//  271   {
//  272     if(PTE27_I==1||PTE28_I==1||PTD9_I==1||PTD9_I==1)
        LDR.W    R0,??DataTable7_9  ;; 0x43fe226c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??SetSpeed_Configuration_10
        LDR.W    R0,??DataTable7_10  ;; 0x43fe2270
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??SetSpeed_Configuration_10
        LDR.W    R0,??DataTable7_12  ;; 0x43fe1a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??SetSpeed_Configuration_10
        LDR.W    R0,??DataTable7_12  ;; 0x43fe1a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??SetSpeed_Configuration_11
//  273     {
//  274       BUZZER_ON;
??SetSpeed_Configuration_10:
        MOVS     R2,#+1
        MOVS     R1,#+25
        LDR.W    R0,??DataTable11_10  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  275       SetSpeed=bz_speed;//���ϵ���
        LDR.W    R0,??DataTable11_11
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
//  276       sflag=0;//������������
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_5
        STRB     R0,[R1, #+0]
//  277       if(del++>=5)  //��ʱȥ��
        LDR.W    R0,??DataTable11_12
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable11_12
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+5
        BLT.N    ??SetSpeed_Configuration_12
//  278       {
//  279         bz_flag=1;//�����ϱ�־
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  280         lr_lock=0;//����ƫ���趨
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
        B.N      ??SetSpeed_Configuration_12
//  281       }
//  282     }
//  283     else
//  284     {
//  285       del=0;
??SetSpeed_Configuration_11:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_12
        STRB     R0,[R1, #+0]
//  286       bz_flag=0;  //����ϱ�־
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  287       BUZZER_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+25
        LDR.W    R0,??DataTable11_10  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??SetSpeed_Configuration_12
//  288     }
//  289   }
//  290   else
//  291   {
//  292     del=0;
??SetSpeed_Configuration_9:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_12
        STRB     R0,[R1, #+0]
//  293     bz_flag=0;  //����ϱ�־
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  294     BUZZER_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+25
        LDR.W    R0,??DataTable11_10  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  295   }
//  296   
//  297   if(code_switch==16 && move_flag)// ����������  
??SetSpeed_Configuration_12:
        LDR.W    R0,??DataTable7_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+16
        BNE.N    ??SetSpeed_Configuration_13
        LDR.W    R0,??DataTable8_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SetSpeed_Configuration_13
//  298   {
//  299     if(speed<10)//�����ٶȿ��ƣ�������ٶ��趨֮�������������������֮ǰ�ٶ��趨
        LDR.W    R0,??DataTable11_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+10
        BGE.N    ??SetSpeed_Configuration_14
//  300     {
//  301       dc_judge--;
        LDR.W    R0,??DataTable9
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9
        STRH     R0,[R1, #+0]
//  302       if(dc_judge<0 && dc_judge>-40 )  //300ms���ֳ�����ת���趨��ת����תʱ��Ϊ300ms
        LDR.W    R0,??DataTable9
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+39
        CMP      R0,#+39
        BCS.N    ??SetSpeed_Configuration_15
//  303         SetSpeed=-lowspeed;
        LDR.W    R0,??DataTable11_8
        LDRSH    R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
        B.N      ??SetSpeed_Configuration_13
//  304       else 
//  305         SetSpeed=lowspeed;
??SetSpeed_Configuration_15:
        LDR.W    R0,??DataTable11_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
        B.N      ??SetSpeed_Configuration_13
//  306     }
//  307     else
//  308       dc_judge=30;  //���ʱ��Ϊ300ms
??SetSpeed_Configuration_14:
        MOVS     R0,#+30
        LDR.W    R1,??DataTable9
        STRH     R0,[R1, #+0]
//  309   }
//  310   
//  311   //if(car_stop_flag==1) //���ߵ�����ʱ,����3s������ͼʱ��ͣ����־���������
//  312     //SetSpeed=0;
//  313     
//  314 }
??SetSpeed_Configuration_13:
        POP      {R0,PC}          ;; return
//  315 
//  316 /*-------------------���ҿ����е�У��---------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  317 void Middle_Point_Configure( void )  
//  318 {
//  319   
//  320   if(real_pointy>10) //����ֵ(�����ű�),ƫ��
Middle_Point_Configure:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+11
        BLT.W    ??Middle_Point_Configure_0
//  321   {
//  322     if((speed>400 && ph_lock2!=1)|| ph_lock1==1)
        LDR.W    R0,??DataTable11_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+400
        BLE.N    ??Middle_Point_Configure_1
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_2
??Middle_Point_Configure_1:
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Middle_Point_Configure_3
//  323     {
//  324       ph_lock1=1;         //ƫ������
??Middle_Point_Configure_2:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        STRB     R0,[R1, #+0]
//  325       if(real_pointy<15)//rol�ж�����
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BGE.N    ??Middle_Point_Configure_4
//  326         if (rol==1) SetCenterX=rph1-2; // 82 
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_5
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  327         else SetCenterX=lph1+2;      //92
??Middle_Point_Configure_5:
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  328         
//  329       else if(real_pointy>=15&&real_pointy<20)
??Middle_Point_Configure_4:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+15
        CMP      R0,#+5
        BCS.N    ??Middle_Point_Configure_7
//  330         if (rol==1) SetCenterX=rph2-2;// 79 
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_8
        LDR.W    R0,??DataTable11_15
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  331         else SetCenterX=lph2+2;     //95
??Middle_Point_Configure_8:
        LDR.W    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  332         
//  333       else if(real_pointy>=20&&real_pointy<30)
??Middle_Point_Configure_7:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+20
        CMP      R0,#+10
        BCS.N    ??Middle_Point_Configure_9
//  334         if (rol==1) SetCenterX=rph3-2;// 75
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_10
        LDR.W    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  335         else SetCenterX=lph3+2;   //100
??Middle_Point_Configure_10:
        LDR.W    R0,??DataTable11_18
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  336         
//  337       else if(real_pointy>=30&&real_pointy<40)
??Middle_Point_Configure_9:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+30
        CMP      R0,#+10
        BCS.N    ??Middle_Point_Configure_11
//  338         if (rol==1)  SetCenterX=rph4-2;// 70 
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_12
        LDR.W    R0,??DataTable11_19
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  339         else SetCenterX=lph4+2;  //103
??Middle_Point_Configure_12:
        LDR.W    R0,??DataTable11_20
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  340         
//  341       else if(real_pointy>=40&&real_pointy<50)
??Middle_Point_Configure_11:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+40
        CMP      R0,#+10
        BCS.N    ??Middle_Point_Configure_13
//  342         if (rol==1) SetCenterX=rph5-2;// 65
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_14
        LDR.W    R0,??DataTable11_21
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  343         else SetCenterX=lph5+2;    //105
??Middle_Point_Configure_14:
        LDR.W    R0,??DataTable11_22
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  344         
//  345       else if(real_pointy>=50&&real_pointy<70)
??Middle_Point_Configure_13:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+50
        CMP      R0,#+20
        BCS.N    ??Middle_Point_Configure_15
//  346         if (rol==1) SetCenterX=rph6-2;// 60 
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_16
        LDR.W    R0,??DataTable11_23
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  347         else SetCenterX=lph6+2;      //110
??Middle_Point_Configure_16:
        LDR.W    R0,??DataTable11_24
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  348         
//  349       else if(real_pointy>=70  )
??Middle_Point_Configure_15:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+70
        BLT.W    ??Middle_Point_Configure_6
//  350         if (rol==1) SetCenterX=rph7-2;// 55 
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_17
        LDR.W    R0,??DataTable11_25
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  351         else SetCenterX=lph7+2;    //115
??Middle_Point_Configure_17:
        LDR.W    R0,??DataTable11_26
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  352     }
//  353     else if((speed<=400 &&  ph_lock1!=1) || ph_lock2==1)
??Middle_Point_Configure_3:
        LDR.W    R0,??DataTable11_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+400
        BGT.N    ??Middle_Point_Configure_18
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_19
??Middle_Point_Configure_18:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Middle_Point_Configure_20
//  354     {
//  355       ph_lock2=1;         //ƫ������
??Middle_Point_Configure_19:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_2
        STRB     R0,[R1, #+0]
//  356       if(real_pointy<15)//rol�ж�����
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BGE.N    ??Middle_Point_Configure_21
//  357         if (rol==1) SetCenterX=rph1; // 82 
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_22
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  358         else SetCenterX=lph1;      //92
??Middle_Point_Configure_22:
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  359         
//  360       else if(real_pointy>=15&&real_pointy<20)
??Middle_Point_Configure_21:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+15
        CMP      R0,#+5
        BCS.N    ??Middle_Point_Configure_23
//  361         if (rol==1) SetCenterX=rph2;// 79 
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_24
        LDR.W    R0,??DataTable11_15
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  362         else SetCenterX=lph2;     //95
??Middle_Point_Configure_24:
        LDR.W    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  363         
//  364       else if(real_pointy>=20&&real_pointy<30)
??Middle_Point_Configure_23:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+20
        CMP      R0,#+10
        BCS.N    ??Middle_Point_Configure_25
//  365         if (rol==1) SetCenterX=rph3;// 75
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_26
        LDR.W    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  366         else SetCenterX=lph3;   //100
??Middle_Point_Configure_26:
        LDR.W    R0,??DataTable11_18
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  367         
//  368       else if(real_pointy>=30&&real_pointy<40)
??Middle_Point_Configure_25:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+30
        CMP      R0,#+10
        BCS.N    ??Middle_Point_Configure_27
//  369         if (rol==1)  SetCenterX=rph4;// 70 
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_28
        LDR.W    R0,??DataTable11_19
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  370         else SetCenterX=lph4;  //103
??Middle_Point_Configure_28:
        LDR.W    R0,??DataTable11_20
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  371         
//  372       else if(real_pointy>=40&&real_pointy<50)
??Middle_Point_Configure_27:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+40
        CMP      R0,#+10
        BCS.N    ??Middle_Point_Configure_29
//  373         if (rol==1) SetCenterX=rph5;// 65
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_30
        LDR.W    R0,??DataTable11_21
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  374         else SetCenterX=lph5;    //105
??Middle_Point_Configure_30:
        LDR.W    R0,??DataTable11_22
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  375         
//  376       else if(real_pointy>=50&&real_pointy<70)
??Middle_Point_Configure_29:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+50
        CMP      R0,#+20
        BCS.N    ??Middle_Point_Configure_31
//  377         if (rol==1) SetCenterX=rph6;// 60 
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_32
        LDR.W    R0,??DataTable11_23
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  378         else SetCenterX=lph6;      //110
??Middle_Point_Configure_32:
        LDR.W    R0,??DataTable11_24
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  379         
//  380       else if(real_pointy>=70  )
??Middle_Point_Configure_31:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+70
        BLT.W    ??Middle_Point_Configure_6
//  381         if (rol==1) SetCenterX=rph7;// 55 
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_33
        LDR.W    R0,??DataTable11_25
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  382         else SetCenterX=lph7;    //115
??Middle_Point_Configure_33:
        LDR.W    R0,??DataTable11_26
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  383     }
//  384     else
//  385     {
//  386       if(real_pointy<15)//rol�ж�����
??Middle_Point_Configure_20:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BGE.N    ??Middle_Point_Configure_34
//  387         if (rol==1) SetCenterX=rph1; // 82 
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_35
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  388         else SetCenterX=lph1;      //92
??Middle_Point_Configure_35:
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  389         
//  390       else if(real_pointy>=15&&real_pointy<20)
??Middle_Point_Configure_34:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+15
        CMP      R0,#+5
        BCS.N    ??Middle_Point_Configure_36
//  391         if (rol==1) SetCenterX=rph2;// 79 
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_37
        LDR.W    R0,??DataTable11_15
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  392         else SetCenterX=lph2;     //95
??Middle_Point_Configure_37:
        LDR.W    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  393         
//  394       else if(real_pointy>=20&&real_pointy<30)
??Middle_Point_Configure_36:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+20
        CMP      R0,#+10
        BCS.N    ??Middle_Point_Configure_38
//  395         if (rol==1) SetCenterX=rph3;// 75
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_39
        LDR.W    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  396         else SetCenterX=lph3;   //100
??Middle_Point_Configure_39:
        LDR.W    R0,??DataTable11_18
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  397         
//  398       else if(real_pointy>=30&&real_pointy<40)
??Middle_Point_Configure_38:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+30
        CMP      R0,#+10
        BCS.N    ??Middle_Point_Configure_40
//  399         if (rol==1)  SetCenterX=rph4;// 70 
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_41
        LDR.W    R0,??DataTable11_19
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  400         else SetCenterX=lph4;  //103
??Middle_Point_Configure_41:
        LDR.W    R0,??DataTable11_20
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  401         
//  402       else if(real_pointy>=40&&real_pointy<50)
??Middle_Point_Configure_40:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+40
        CMP      R0,#+10
        BCS.N    ??Middle_Point_Configure_42
//  403         if (rol==1) SetCenterX=rph5;// 65
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_43
        LDR.W    R0,??DataTable11_21
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  404         else SetCenterX=lph5;    //105
??Middle_Point_Configure_43:
        LDR.W    R0,??DataTable11_22
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  405         
//  406       else if(real_pointy>=50&&real_pointy<70)
??Middle_Point_Configure_42:
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+50
        CMP      R0,#+20
        BCS.N    ??Middle_Point_Configure_44
//  407         if (rol==1) SetCenterX=rph6;// 60 
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_45
        LDR.W    R0,??DataTable11_23
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  408         else SetCenterX=lph6;      //110
??Middle_Point_Configure_45:
        LDR.W    R0,??DataTable11_24
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  409         
//  410       else if(real_pointy>=70  )
??Middle_Point_Configure_44:
        LDR.N    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+70
        BLT.N    ??Middle_Point_Configure_6
//  411         if (rol==1) SetCenterX=rph7;// 55 
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Middle_Point_Configure_46
        LDR.W    R0,??DataTable11_25
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  412         else SetCenterX=lph7;    //115
??Middle_Point_Configure_46:
        LDR.W    R0,??DataTable11_26
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        B.N      ??Middle_Point_Configure_6
//  413     }
//  414   }
//  415   else   
//  416   {
//  417     SetCenterX=Acenter; //����
??Middle_Point_Configure_0:
        LDR.N    R0,??DataTable7_4
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
//  418   }
//  419 }
??Middle_Point_Configure_6:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x41700000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     Turn_PID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x41a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     Turn_close_PID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x42b40000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x453b8000
//  420 
//  421 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  422 void Speed_PID_Cal(float Target,float Measure)
//  423 {
Speed_PID_Cal:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  424   
//  425   Speed_PID.Error=Target-Measure;   //���=����ֵ-����ֵ,����Ϊ����
        MOVS     R0,R4
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+16]
//  426   if(Speed_PID.Error>=Target-20)          //???
        LDR.W    R0,??DataTable11_27  ;; 0xc1a00000
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R1,R0
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+16]
        BL       __aeabi_cfrcmple
        BHI.N    ??Speed_PID_Cal_0
//  427     Speed_PID.Integer=Speed_PID.Integer/2;
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+28]
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+28]
//  428   
//  429   if(Speed_PID.Integer<0)
??Speed_PID_Cal_0:
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+28]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_PID_Cal_1
//  430     Speed_PID.Integer=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+28]
        B.N      ??Speed_PID_Cal_2
//  431   else if(Speed_PID.I*Speed_PID.Integer>=Speed_PID.iLimit)
??Speed_PID_Cal_1:
        LDR.N    R0,??DataTable7_1
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+28]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+32]
        BL       __aeabi_cfrcmple
        BHI.N    ??Speed_PID_Cal_2
//  432     Speed_PID.Integer=Speed_PID.iLimit/Speed_PID.I;
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+32]
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+4]
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+28]
//  433   Speed_PID.Integer+=Speed_PID.Error;//����
??Speed_PID_Cal_2:
        LDR.N    R0,??DataTable7_1
        LDR      R1,[R0, #+28]
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+16]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+28]
//  434   Speed_PID.Deriv=Speed_PID.Error-Speed_PID.PreError;//΢��     
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+20]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+36]
//  435   Speed_PID.Output=Speed_PID.P*Speed_PID.Error+Speed_PID.I*Speed_PID.Integer+Speed_PID.D*Speed_PID.Deriv;
        LDR.N    R0,??DataTable7_1
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+16]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable7_1
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+28]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable7_1
        LDR      R1,[R0, #+8]
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+36]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+40]
//  436   Speed_PID.PreError=Speed_PID.Error; 
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+20]
//  437   //�޷�
//  438   if (Speed_PID.Output >= 9990 )
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+40]
        LDR.W    R1,??DataTable11_28  ;; 0x461c1800
        BL       __aeabi_cfrcmple
        BHI.N    ??Speed_PID_Cal_3
//  439     Speed_PID.Output=9990;
        LDR.W    R0,??DataTable11_28  ;; 0x461c1800
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+40]
//  440   if (Speed_PID.Output <= -9990 )
??Speed_PID_Cal_3:
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+40]
        LDR.W    R1,??DataTable11_29  ;; 0xc61c17ff
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_PID_Cal_4
//  441     Speed_PID.Output=-9990; 
        LDR.W    R0,??DataTable11_30  ;; 0xc61c1800
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+40]
//  442   
//  443   
//  444   
//  445 }
??Speed_PID_Cal_4:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     NOpoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     real_pointx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     rol

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     turn_little

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     turn_large
//  446 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  447 void A_Speed_PID_Cal(float Target,float Measure)
//  448 {
A_Speed_PID_Cal:
        PUSH     {R4,LR}
//  449   Speed_PID.Error=Target-Measure;
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+16]
//  450   Speed_PID.Output=Speed_PID.Output+Speed_PID.P*(Speed_PID.Error-Speed_PID.PreError)+Speed_PID.I*Speed_PID.Error+Speed_PID.D*(Speed_PID.Error-2*Speed_PID.PreError+Speed_PID.PrePreError);
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+20]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+40]
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable7_1
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+16]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable7_1
        LDR      R1,[R0, #+20]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+16]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+24]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+40]
//  451   if (Speed_PID.Output >= 9990 )
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+40]
        LDR.N    R1,??DataTable11_28  ;; 0x461c1800
        BL       __aeabi_cfrcmple
        BHI.N    ??A_Speed_PID_Cal_0
//  452      Speed_PID.Output=9990;
        LDR.N    R0,??DataTable11_28  ;; 0x461c1800
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+40]
//  453    if (Speed_PID.Output <= -9990 )
??A_Speed_PID_Cal_0:
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+40]
        LDR.N    R1,??DataTable11_29  ;; 0xc61c17ff
        BL       __aeabi_cfcmple
        BCS.N    ??A_Speed_PID_Cal_1
//  454      Speed_PID.Output=-9990; 
        LDR.N    R0,??DataTable11_30  ;; 0xc61c1800
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+40]
//  455   Speed_PID.PrePreError=Speed_PID.PreError;
??A_Speed_PID_Cal_1:
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+24]
//  456   Speed_PID.PreError=Speed_PID.Error;
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+20]
//  457   
//  458 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     Speed_PID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     lr_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     bz_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     Acenter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     code_switch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     bz_end

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     0x43fe226c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     0x43fe2270

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x43fe1a20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     0x43fe1a24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     zero_lock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     car_stop_flag

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  459 void Turn_PID_Cal(void)
//  460 { 
Turn_PID_Cal:
        PUSH     {R4,LR}
//  461   Turn_PID.Error=real_pointx-SetCenterX;  //����ֵ���趨ֵ 
        LDR.N    R0,??DataTable11_31
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable11
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable11_32
        STR      R0,[R1, #+16]
//  462   Turn_PID.Deriv=Turn_PID.Error-Turn_PID.PreError; 
        LDR.N    R0,??DataTable11_32
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable11_32
        LDR      R1,[R1, #+20]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable11_32
        STR      R0,[R1, #+36]
//  463   if(Turn_PID.Error>=15||Turn_PID.Error<=-15)
        LDR.N    R0,??DataTable11_32
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable11_33  ;; 0x41700000
        BL       __aeabi_cfrcmple
        BLS.N    ??Turn_PID_Cal_0
        LDR.N    R0,??DataTable11_32
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable11_34  ;; 0xc16fffff
        BL       __aeabi_cfcmple
        BCS.N    ??Turn_PID_Cal_1
//  464     Turn_PID.Output=Turn_close_PID.P*(Turn_PID.Error)+Turn_PID.Deriv*Turn_close_PID.D+SerMid;//Turn_PID
??Turn_PID_Cal_0:
        LDR.N    R0,??DataTable11_35
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_32
        LDR      R0,[R0, #+16]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable11_32
        LDR      R1,[R0, #+36]
        LDR.N    R0,??DataTable11_35
        LDR      R0,[R0, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable11_36  ;; 0x458fc000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable11_32
        STR      R0,[R1, #+40]
        B.N      ??Turn_PID_Cal_2
//  465   else
//  466     Turn_PID.Output=Turn_PID.P*(Turn_PID.Error)+Turn_PID.Deriv*Turn_PID.D+SerMid;//Turn_close_PID
??Turn_PID_Cal_1:
        LDR.N    R0,??DataTable11_32
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_32
        LDR      R0,[R0, #+16]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable11_32
        LDR      R1,[R0, #+36]
        LDR.N    R0,??DataTable11_32
        LDR      R0,[R0, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable11_36  ;; 0x458fc000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable11_32
        STR      R0,[R1, #+40]
//  467   if (Turn_PID.Output>SerRightMax)//ת���޷�
??Turn_PID_Cal_2:
        LDR.N    R0,??DataTable11_32
        LDR      R0,[R0, #+40]
        LDR.N    R1,??DataTable11_37  ;; 0x45abe001
        BL       __aeabi_cfrcmple
        BHI.N    ??Turn_PID_Cal_3
//  468     Turn_PID.Output=SerRightMax;
        LDR.N    R0,??DataTable11_38  ;; 0x45abe000
        LDR.N    R1,??DataTable11_32
        STR      R0,[R1, #+40]
        B.N      ??Turn_PID_Cal_4
//  469   else if (Turn_PID.Output<SerLeftMin)
??Turn_PID_Cal_3:
        LDR.N    R0,??DataTable11_32
        LDR      R0,[R0, #+40]
        LDR.N    R1,??DataTable11_39  ;; 0x45674000
        BL       __aeabi_cfcmple
        BCS.N    ??Turn_PID_Cal_4
//  470     Turn_PID.Output=SerLeftMin;
        LDR.N    R0,??DataTable11_39  ;; 0x45674000
        LDR.N    R1,??DataTable11_32
        STR      R0,[R1, #+40]
//  471   
//  472   Turn_PID.PreError=Turn_PID.Error;
??Turn_PID_Cal_4:
        LDR.N    R0,??DataTable11_32
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable11_32
        STR      R0,[R1, #+20]
//  473 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     ??pit0_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     real_pointy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     move_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     zero_lock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     s5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     i

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  474 void QD_init(void)
//  475 {
QD_init:
        PUSH     {R5-R7,LR}
//  476   static GPIO_InitTypeDef encoder_init_struct;
//  477   encoder_init_struct.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable11_40  ;; 0x400ff040
        LDR.N    R1,??DataTable11_41
        STR      R0,[R1, #+0]
//  478   encoder_init_struct.GPIO_Pins = GPIO_Pin18|GPIO_Pin19;
        MOVS     R0,#+786432
        LDR.N    R1,??DataTable11_41
        STR      R0,[R1, #+4]
//  479   encoder_init_struct.GPIO_Dir = DIR_INPUT;        //����
        MOVS     R0,#+0
        LDR.N    R1,??DataTable11_41
        STRB     R0,[R1, #+12]
//  480   encoder_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable11_41
        STR      R0,[R1, #+8]
//  481   LPLD_GPIO_Init(encoder_init_struct);
        LDR.N    R1,??DataTable11_41
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  482   
//  483   static FTM_InitTypeDef ftm_init_struct;
//  484   ftm_init_struct.FTM_Ftmx = FTM2;              //ֻ��FTM1��FTM2���������빦��
        LDR.N    R0,??DataTable9_3  ;; 0x400b8000
        LDR.N    R1,??DataTable11_42
        STR      R0,[R1, #+0]
//  485   ftm_init_struct.FTM_Mode = FTM_MODE_QD;       //�������빦��
        MOVS     R0,#+4
        LDR.N    R1,??DataTable11_42
        STRB     R0,[R1, #+4]
//  486   ftm_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB������ģʽ
        MOVS     R0,#+0
        LDR.N    R1,??DataTable11_42
        STRB     R0,[R1, #+18]
//  487   //��ʼ��FTM
//  488   LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable11_42
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  489   //ʹ��AB������ͨ��
//  490   //PTB18���Ž�A�����롢PTB19���Ž�B������
//  491   LPLD_FTM_QD_Enable(FTM2, PTB18, PTB19);  
        MOVS     R2,#+51
        MOVS     R1,#+50
        LDR.N    R0,??DataTable9_3  ;; 0x400b8000
        BL       LPLD_FTM_QD_Enable
//  492   
//  493 }
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     dc_judge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     ph_lock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     ph_lock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x400b8000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??encoder_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??ftm_init_struct:
        DS8 28
//  494 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  495 void Servo_Init( void )
//  496 {
Servo_Init:
        PUSH     {R5-R7,LR}
//  497   static FTM_InitTypeDef ftm_init_struct;
//  498   ftm_init_struct.FTM_Ftmx = FTM1;	//ʹ��FTM1ͨ��
        LDR.N    R0,??DataTable11_43  ;; 0x40039000
        LDR.N    R1,??DataTable11_44
        STR      R0,[R1, #+0]
//  499   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//ʹ��PWMģʽ
        MOVS     R0,#+1
        LDR.N    R1,??DataTable11_44
        STRB     R0,[R1, #+4]
//  500   ftm_init_struct.FTM_PwmFreq = 300;	//PWMƵ��300Hz
        MOV      R0,#+300
        LDR.N    R1,??DataTable11_44
        STR      R0,[R1, #+8]
//  501   LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable11_44
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  502   LPLD_FTM_PWM_Enable(FTM1, //ʹ��FTM1
//  503                       FTM_Ch0, //ʹ��Ch0ͨ��
//  504                       SerMid, //��ʼ���Ƕ�0��    ,3600,2850,4350
//  505                       PTA8, 
//  506                       ALIGN_LEFT);   //���������                        
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+8
        MOVW     R2,#+4600
        MOVS     R1,#+0
        LDR.N    R0,??DataTable11_43  ;; 0x40039000
        BL       LPLD_FTM_PWM_Enable
//  507 }
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     ss

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     qd_result

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??ftm_init_struct_1:
        DS8 28
//  508 /*------------------��ʼ���������------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  509 void DianG_Init(void)
//  510 {
DianG_Init:
        PUSH     {R5-R7,LR}
//  511   static  FTM_InitTypeDef FTM_Init;
//  512   FTM_Init.FTM_Ftmx=FTM0;
        LDR.N    R0,??DataTable11_3  ;; 0x40038000
        LDR.N    R1,??DataTable11_45
        STR      R0,[R1, #+0]
//  513   FTM_Init.FTM_Mode=FTM_MODE_PWM;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable11_45
        STRB     R0,[R1, #+4]
//  514   FTM_Init.FTM_PwmFreq=20000;
        MOVW     R0,#+20000
        LDR.N    R1,??DataTable11_45
        STR      R0,[R1, #+8]
//  515  
//  516   FTM_Init.FTM_PwmDeadtimeVal=8;//���Ƶ��20K ����50us  ȡ�ٷ�֮5������ 5*0.3/50=5%
        MOVS     R0,#+8
        LDR.N    R1,??DataTable11_45
        STRB     R0,[R1, #+17]
//  517   FTM_Init.FTM_PwmDeadtimeCfg=DEADTIME_CH45;
        MOVS     R0,#+1048576
        LDR.N    R1,??DataTable11_45
        STR      R0,[R1, #+12]
//  518   FTM_Init.FTM_PwmDeadtimeDiv=DEADTIME_DIV16;//����50M/16=3M  ����0.3us
        MOVS     R0,#+3
        LDR.N    R1,??DataTable11_45
        STRB     R0,[R1, #+16]
//  519   
//  520   LPLD_FTM_Init(FTM_Init);          //ʹ��PWM
        LDR.N    R1,??DataTable11_45
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  521   LPLD_FTM_PWM_Enable(FTM0,FTM_Ch4,0,PTD4,ALIGN_LEFT);       
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+96
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.N    R0,??DataTable11_3  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  522   LPLD_FTM_PWM_Enable(FTM0,FTM_Ch5,0,PTD5,ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+97
        MOVS     R2,#+0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable11_3  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  523   
//  524   LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);//δ���������0
        MOVS     R2,#+0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable11_3  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  525   LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,0);
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.N    R0,??DataTable11_3  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  526   
//  527 }
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     SetCenterX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     SetSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     turnspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     sflag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     acce

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     highspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     lowspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     brake_start

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     bz_speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     del

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     rph1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     lph1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     rph2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_16:
        DC32     lph2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_17:
        DC32     rph3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_18:
        DC32     lph3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_19:
        DC32     rph4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_20:
        DC32     lph4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_21:
        DC32     rph5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_22:
        DC32     lph5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_23:
        DC32     rph6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_24:
        DC32     lph6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_25:
        DC32     rph7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_26:
        DC32     lph7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_27:
        DC32     0xc1a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_28:
        DC32     0x461c1800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_29:
        DC32     0xc61c17ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_30:
        DC32     0xc61c1800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_31:
        DC32     real_pointx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_32:
        DC32     Turn_PID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_33:
        DC32     0x41700000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_34:
        DC32     0xc16fffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_35:
        DC32     Turn_close_PID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_36:
        DC32     0x458fc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_37:
        DC32     0x45abe001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_38:
        DC32     0x45abe000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_39:
        DC32     0x45674000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_40:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_41:
        DC32     ??encoder_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_42:
        DC32     ??ftm_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_43:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_44:
        DC32     ??ftm_init_struct_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_45:
        DC32     ??FTM_Init

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
??FTM_Init:
        DS8 28

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
//   412 bytes in section .bss
//    37 bytes in section .data
// 4 076 bytes in section .text
// 
// 4 076 bytes of CODE memory
//   449 bytes of DATA memory
//
//Errors: none
//Warnings: 3
