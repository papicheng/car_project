///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      23/Aug/2017  10:34:56
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\Heb_learning.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\Heb_learning.c
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
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List\Heb_learning.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub

        PUBLIC Heb_learning_Function
        PUBLIC Left_Mortor
        PUBLIC Right_Mortor
        PUBLIC Speed_Struct

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\Heb_learning.c
//    1 
//    2 #include "Heb_learning.h"
//    3 #include "math.h"
//    4 #include "timer.h"
//    5 
//    6 ////本Heb 学习算法使用的是增量式PID.
//    7 //  Control_Param X;
//    8 //
//    9 //  float xite_P;
//   10 //  float xite_I;
//   11 //  float xite_D;
//   12 //
//   13 //  //Initilizing kp,ki an kd
//   14 //  float wkp_1;
//   15 //  float wki_1;
//   16 //  float wkd_1;
//   17 //
//   18 //  float wkp_Now;
//   19 //  float wki_Now;
//   20 //  float wkd_Now;
//   21 //
//   22 //  float error_1;
//   23 //  float error_2;
//   24 //
//   25 //  float u_1;
//   26 //  

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   27 Node_Struct Left_Mortor={
Left_Mortor:
        DC32 0H, 0H, 0H, 40600000H, 40000000H, 3E99999AH, 3F800000H, 3F800000H
        DC32 3F800000H, 3FC66666H, 3F800000H, 3F800000H, 0H, 0H, 0H, 0H, 0H, 0H
//   28   {0,0,0},
//   29 
//   30   3.5,
//   31   2,
//   32   0.3,
//   33   
//   34   //MIN kp,ki an kd
//   35   1,
//   36   1,
//   37   1,
//   38   
//   39   //Initilizing kp,ki an kd
//   40   1.55,
//   41   1,
//   42   1,
//   43 
//   44   0,
//   45   0,
//   46   0,
//   47 
//   48   0,
//   49   0,
//   50 
//   51   0,
//   52 };

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   53 Node_Struct Right_Mortor={
Right_Mortor:
        DC32 0H, 0H, 0H, 40600000H, 40000000H, 3E99999AH, 3F800000H, 3F800000H
        DC32 3F800000H, 3FC66666H, 3F800000H, 3F800000H, 0H, 0H, 0H, 0H, 0H, 0H
//   54   //本Heb 学习算法使用的是增量式PID.
//   55   {0,0,0},
//   56 
//   57   3.5,
//   58   2,
//   59   0.3,
//   60 
//   61   //MIN kp,ki an kd
//   62   1,
//   63   1,
//   64   1,
//   65   
//   66   //Initilizing kp,ki an kd
//   67   1.55,
//   68   1,
//   69   1,
//   70 
//   71   0,
//   72   0,
//   73   0,
//   74 
//   75   0,
//   76   0,
//   77   0,
//   78 };
//   79 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   80 Node_Struct Speed_Struct={
Speed_Struct:
        DC32 0H, 0H, 0H, 40600000H, 40000000H, 3E99999AH, 3F800000H, 3F800000H
        DC32 3F800000H, 3FC66666H, 3F800000H, 41200000H, 0H, 0H, 0H, 0H, 0H, 0H
//   81   //本Heb 学习算法使用的是增量式PID.
//   82   {0,0,0},
//   83 
//   84   3.5,
//   85   2,
//   86   0.3,
//   87 
//   88   //MIN kp,ki an kd
//   89   1,
//   90   1,
//   91   1,
//   92   
//   93   //Initilizing kp,ki an kd
//   94   1.55,
//   95   1,
//   96   10,
//   97 
//   98   0,
//   99   0,
//  100   0,
//  101 
//  102   0,
//  103   0,
//  104   0,
//  105 };
//  106 
//  107 /*
//  108 **********Heb 单神经元学习算法***************8
//  109 ****parameter：
//  110 Set_Target:设定的目标值
//  111 InValue_Now:当前目标的状态。
//  112 USE_TYPE:使用学习算法类型。
//  113 Act_Time:算法的响应时间。非常重要，需要仔细调节
//  114 //返回控制量
//  115 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  116 float Heb_learning_Function(Node_Struct* Nude_X,float Set_Target,float InValue_Now,int USE_TYPE,float Act_Time)
//  117 {
Heb_learning_Function:
        PUSH     {R3-R11,LR}
        MOVS     R6,R0
        MOVS     R4,R3
//  118   int M=3;//默认使用第3算法
        MOVS     R5,#+3
//  119   float K=Act_Time;
        LDR      R8,[SP, #+40]
//  120   float error_Now=0,u_Now=0;
        MOVS     R7,#+0
        MOVS     R0,#+0
//  121   float w11=0,w22=0,w33=0,wadd=1;
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
        MOVS     R11,#+1065353216
//  122   
//  123   error_Now=Set_Target-InValue_Now;
        MOVS     R0,R1
        MOVS     R1,R2
        BL       __aeabi_fsub
        MOVS     R7,R0
//  124   
//  125   //%Adjusting Weight Value by Heb learning algrithm
//  126   if(USE_TYPE!=M && USE_TYPE<=4 && USE_TYPE>=1)//判断是否更改使用的算法类型
        CMP      R4,R5
        BEQ.N    ??Heb_learning_Function_0
        SUBS     R0,R4,#+1
        CMP      R0,#+4
        BCS.N    ??Heb_learning_Function_0
//  127   {
//  128     M=USE_TYPE;
        MOVS     R5,R4
//  129   }
//  130   if(M==1)//   %No Supervised Heb learning algorithm
??Heb_learning_Function_0:
        CMP      R5,#+1
        BNE.N    ??Heb_learning_Function_1
//  131   {
//  132     Nude_X->wkp_Now=Nude_X->wkp_1+Nude_X->xite_P*Nude_X->u_1*Nude_X->X.P_Cacul_Param;  //%P
        LDR      R1,[R6, #+12]
        LDR      R0,[R6, #+68]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+0]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+36]
        BL       __aeabi_fadd
        STR      R0,[R6, #+48]
//  133     Nude_X->wki_Now=Nude_X->wki_1+Nude_X->xite_I*Nude_X->u_1*Nude_X->X.I_Cacul_Param; // %I
        LDR      R1,[R6, #+16]
        LDR      R0,[R6, #+68]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+4]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+40]
        BL       __aeabi_fadd
        STR      R0,[R6, #+52]
//  134     Nude_X->wkd_Now=Nude_X->wkd_1+Nude_X->xite_D*Nude_X->u_1*Nude_X->X.D_Cacul_Param; // %D
        LDR      R1,[R6, #+20]
        LDR      R0,[R6, #+68]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+8]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+44]
        BL       __aeabi_fadd
        STR      R0,[R6, #+56]
        B.N      ??Heb_learning_Function_2
//  135   }
//  136   else if(M==2)// %Supervised Dolta learing algorithm
??Heb_learning_Function_1:
        CMP      R5,#+2
        BNE.N    ??Heb_learning_Function_3
//  137   {
//  138     Nude_X->wkp_Now=Nude_X->wkp_1+Nude_X->xite_P*error_Now*Nude_X->u_1;  //%P
        LDR      R0,[R6, #+12]
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+68]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+36]
        BL       __aeabi_fadd
        STR      R0,[R6, #+48]
//  139     Nude_X->wki_Now=Nude_X->wki_1+Nude_X->xite_I*error_Now*Nude_X->u_1;  //%I
        LDR      R0,[R6, #+16]
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+68]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+40]
        BL       __aeabi_fadd
        STR      R0,[R6, #+52]
//  140     Nude_X->wkd_Now=Nude_X->wkd_1+Nude_X->xite_D*error_Now*Nude_X->u_1;  //%D
        LDR      R0,[R6, #+20]
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+68]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+44]
        BL       __aeabi_fadd
        STR      R0,[R6, #+56]
        B.N      ??Heb_learning_Function_2
//  141   }
//  142   else if(M==3)// %Supervised Heb learning algorithm
??Heb_learning_Function_3:
        CMP      R5,#+3
        BNE.N    ??Heb_learning_Function_4
//  143   {
//  144     Nude_X->wkp_Now=Nude_X->wkp_1+Nude_X->xite_P*error_Now*Nude_X->u_1*Nude_X->X.P_Cacul_Param;  //%P
        LDR      R0,[R6, #+12]
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+68]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+0]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+36]
        BL       __aeabi_fadd
        STR      R0,[R6, #+48]
//  145     Nude_X->wki_Now=Nude_X->wki_1+Nude_X->xite_I*error_Now*Nude_X->u_1*Nude_X->X.I_Cacul_Param;  //%I
        LDR      R0,[R6, #+16]
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+68]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+4]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+40]
        BL       __aeabi_fadd
        STR      R0,[R6, #+52]
//  146     Nude_X->wkd_Now=Nude_X->wkd_1+Nude_X->xite_D*error_Now*Nude_X->u_1*Nude_X->X.D_Cacul_Param;  //%D
        LDR      R0,[R6, #+20]
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+68]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+8]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+44]
        BL       __aeabi_fadd
        STR      R0,[R6, #+56]
        B.N      ??Heb_learning_Function_2
//  147   }
//  148   else if(M==4)//Improved Heb learning algorithm
??Heb_learning_Function_4:
        CMP      R5,#+4
        BNE.N    ??Heb_learning_Function_2
//  149   {
//  150     Nude_X->wkp_Now=Nude_X->wkp_1+Nude_X->xite_P*error_Now*Nude_X->u_1*(2*error_Now-Nude_X->error_1);  //%P
        LDR      R0,[R6, #+12]
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+68]
        BL       __aeabi_fmul
        MOVS     R4,R0
        MOVS     R0,#+1073741824
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+60]
        BL       __aeabi_fsub
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR      R1,[R6, #+36]
        BL       __aeabi_fadd
        STR      R0,[R6, #+48]
//  151     Nude_X->wki_Now=Nude_X->wki_1+Nude_X->xite_I*error_Now*Nude_X->u_1*(2*error_Now-Nude_X->error_1);  //%I
        LDR      R0,[R6, #+16]
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+68]
        BL       __aeabi_fmul
        MOVS     R4,R0
        MOVS     R0,#+1073741824
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+60]
        BL       __aeabi_fsub
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR      R1,[R6, #+40]
        BL       __aeabi_fadd
        STR      R0,[R6, #+52]
//  152     Nude_X->wkd_Now=Nude_X->wkd_1+Nude_X->xite_D*error_Now*Nude_X->u_1*(2*error_Now-Nude_X->error_1);  //%D
        LDR      R0,[R6, #+20]
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+68]
        BL       __aeabi_fmul
        MOVS     R4,R0
        MOVS     R0,#+1073741824
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[R6, #+60]
        BL       __aeabi_fsub
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR      R1,[R6, #+44]
        BL       __aeabi_fadd
        STR      R0,[R6, #+56]
//  153   }
//  154   
//  155   Nude_X->wkp_Now=((Nude_X->wkp_Now<Nude_X->wkp_min)?Nude_X->wkp_min:Nude_X->wkp_Now);
??Heb_learning_Function_2:
        LDR      R0,[R6, #+48]
        LDR      R1,[R6, #+24]
        BL       __aeabi_cfcmple
        BCS.N    ??Heb_learning_Function_5
        LDR      R0,[R6, #+24]
        B.N      ??Heb_learning_Function_6
??Heb_learning_Function_5:
        LDR      R0,[R6, #+48]
??Heb_learning_Function_6:
        STR      R0,[R6, #+48]
//  156   Nude_X->wki_Now=((Nude_X->wki_Now<Nude_X->wki_min)?Nude_X->wki_min:Nude_X->wki_Now);
        LDR      R0,[R6, #+52]
        LDR      R1,[R6, #+28]
        BL       __aeabi_cfcmple
        BCS.N    ??Heb_learning_Function_7
        LDR      R0,[R6, #+28]
        B.N      ??Heb_learning_Function_8
??Heb_learning_Function_7:
        LDR      R0,[R6, #+52]
??Heb_learning_Function_8:
        STR      R0,[R6, #+52]
//  157   Nude_X->wkd_Now=((Nude_X->wkd_Now<Nude_X->wkd_min)?Nude_X->wkd_min:Nude_X->wkd_Now);
        LDR      R0,[R6, #+56]
        LDR      R1,[R6, #+32]
        BL       __aeabi_cfcmple
        BCS.N    ??Heb_learning_Function_9
        LDR      R0,[R6, #+32]
        B.N      ??Heb_learning_Function_10
??Heb_learning_Function_9:
        LDR      R0,[R6, #+56]
??Heb_learning_Function_10:
        STR      R0,[R6, #+56]
//  158   
//  159   Nude_X->X.P_Cacul_Param=error_Now-Nude_X->error_1;    //%P
        MOVS     R0,R7
        LDR      R1,[R6, #+60]
        BL       __aeabi_fsub
        STR      R0,[R6, #+0]
//  160   Nude_X->X.I_Cacul_Param=error_Now;            //%I
        STR      R7,[R6, #+4]
//  161   Nude_X->X.D_Cacul_Param=error_Now-2*Nude_X->error_1+Nude_X->error_2; //%D
        LDR      R1,[R6, #+60]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        LDR      R1,[R6, #+64]
        BL       __aeabi_fadd
        STR      R0,[R6, #+8]
//  162 
//  163   wadd=fabs(Nude_X->wkp_Now)+fabs(Nude_X->wki_Now)+fabs(Nude_X->wkd_Now);
        LDR      R0,[R6, #+48]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R5,R5,#0x80000000
        LDR      R0,[R6, #+52]
        BL       __aeabi_f2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R6, #+56]
        BL       __aeabi_f2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        MOV      R11,R0
//  164   w11=Nude_X->wkp_Now/wadd;
        LDR      R0,[R6, #+48]
        MOV      R1,R11
        BL       __aeabi_fdiv
        MOV      R9,R0
//  165   w22=Nude_X->wki_Now/wadd;
        LDR      R0,[R6, #+52]
        MOV      R1,R11
        BL       __aeabi_fdiv
        MOV      R10,R0
//  166   w33=Nude_X->wkd_Now/wadd;
        LDR      R0,[R6, #+56]
        MOV      R1,R11
        BL       __aeabi_fdiv
        MOV      R11,R0
//  167   
//  168   
//  169   u_Now=Nude_X->u_1+K*(w11*Nude_X->X.P_Cacul_Param+w22*Nude_X->X.I_Cacul_Param+w33*Nude_X->X.D_Cacul_Param);   //%Control law
        LDR      R0,[R6, #+0]
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR      R0,[R6, #+4]
        MOV      R1,R10
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR      R0,[R6, #+8]
        MOV      R1,R11
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOV      R1,R8
        BL       __aeabi_fmul
        LDR      R1,[R6, #+68]
        BL       __aeabi_fadd
//  170   
//  171   if (u_Now>9000)
        LDR.N    R1,??Heb_learning_Function_11  ;; 0x460ca001
        BL       __aeabi_cfrcmple
        BHI.N    ??Heb_learning_Function_12
//  172   {
//  173     u_Now=9000;
        LDR.N    R0,??Heb_learning_Function_11+0x4  ;; 0x460ca000
        B.N      ??Heb_learning_Function_13
//  174   }
//  175   else if (u_Now<-9000)
??Heb_learning_Function_12:
        LDR.N    R1,??Heb_learning_Function_11+0x8  ;; 0xc60ca000
        BL       __aeabi_cfcmple
        BCS.N    ??Heb_learning_Function_13
//  176   {
//  177     u_Now=-9000;
        LDR.N    R0,??Heb_learning_Function_11+0x8  ;; 0xc60ca000
//  178   }
//  179   
//  180   Nude_X->error_2=Nude_X->error_1;
??Heb_learning_Function_13:
        LDR      R1,[R6, #+60]
        STR      R1,[R6, #+64]
//  181   Nude_X->error_1=error_Now;
        STR      R7,[R6, #+60]
//  182   
//  183   Nude_X->u_1=u_Now;
        STR      R0,[R6, #+68]
//  184   
//  185   Nude_X->wkp_1=Nude_X->wkp_Now;
        LDR      R1,[R6, #+48]
        STR      R1,[R6, #+36]
//  186   Nude_X->wki_1=Nude_X->wki_Now;
        LDR      R1,[R6, #+52]
        STR      R1,[R6, #+40]
//  187   Nude_X->wkd_1=Nude_X->wkd_Now;
        LDR      R1,[R6, #+56]
        STR      R1,[R6, #+44]
//  188   
//  189   return u_Now;
        POP      {R1,R4-R11,PC}   ;; return
        DATA
??Heb_learning_Function_11:
        DC32     0x460ca001
        DC32     0x460ca000
        DC32     0xc60ca000
//  190 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  191 
//  192 
// 
// 216 bytes in section .data
// 724 bytes in section .text
// 
// 724 bytes of CODE memory
// 216 bytes of DATA memory
//
//Errors: none
//Warnings: 3
