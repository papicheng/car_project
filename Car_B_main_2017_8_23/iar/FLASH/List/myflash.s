///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      23/Aug/2017  10:35:09
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\myflash.c
//    Command line =  
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\myflash.c
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
//        G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\iar\FLASH\List\myflash.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_Flash_ByteProgram
        EXTERN LPLD_Flash_SectorErase
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_i2d
        EXTERN __aeabi_ui2d
        EXTERN acce
        EXTERN highspeed
        EXTERN lowspeed
        EXTERN lph1
        EXTERN lph2
        EXTERN lph3
        EXTERN lph4
        EXTERN lph5
        EXTERN lph6
        EXTERN lph7
        EXTERN rph1
        EXTERN rph2
        EXTERN rph3
        EXTERN rph4
        EXTERN rph5
        EXTERN rph6
        EXTERN rph7
        EXTERN turnspeed

        PUBLIC flash_config
        PUBLIC parameter_flash
        PUBLIC ptr
        PUBLIC result
        PUBLIC write_buffer

// G:\study\car\program\lib_and_example\LPLD_OSKinetis_V3\project\Car_B_main_2017_8_23\app\myflash.c
//    1 
//    2 #include "common.h"
//    3 #include "camera_test.h"  
//    4 #include "timer.h"
//    5 #include "infrared.h"
//    6 #include "oled.h"
//    7 #include "botton.h"
//    8 #include "Freecars.h"
//    9 #include "barrier.h"
//   10 #include "myflash.h"
//   11 
//   12 #define FLASH_TEST_SECTOR   (256-20)
//   13 #define FLASH_TEST_ADDR     (FLASH_TEST_SECTOR*2048)// FLASH_TEST_SECTOR*(2048)
//   14 #define DATA_SIZE           (50)
//   15 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   16 float write_buffer[DATA_SIZE]; //¶¨ÒåÐ´»º³åÇø
write_buffer:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   17 float *ptr;
ptr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   18 uint8 result=NULL;
result:
        DS8 1
//   19 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 void parameter_flash(void)
//   21 {
parameter_flash:
        PUSH     {R7,LR}
//   22   ptr = (float*)FLASH_TEST_ADDR;  //¶Á
        MOVS     R0,#+483328
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//   23   
//   24   lph1=(uint8)*(ptr+0);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+0]
//   25   lph2=(uint8)*(ptr+1);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_2
        STRB     R0,[R1, #+0]
//   26   lph3=(uint8)*(ptr+2);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+8]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+0]
//   27   lph4=(uint8)*(ptr+3);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_4
        STRB     R0,[R1, #+0]
//   28   lph5=(uint8)*(ptr+4);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+16]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_5
        STRB     R0,[R1, #+0]
//   29   lph6=(uint8)*(ptr+5);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+20]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+0]
//   30   lph7=(uint8)*(ptr+6);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+0]
//   31   rph1=(uint8)*(ptr+7);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+28]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_8
        STRB     R0,[R1, #+0]
//   32   rph2=(uint8)*(ptr+8);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+32]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_9
        STRB     R0,[R1, #+0]
//   33   rph3=(uint8)*(ptr+9);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+36]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_10
        STRB     R0,[R1, #+0]
//   34   rph4=(uint8)*(ptr+10);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+40]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_11
        STRB     R0,[R1, #+0]
//   35   rph5=(uint8)*(ptr+11);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+44]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_12
        STRB     R0,[R1, #+0]
//   36   rph6=(uint8)*(ptr+12);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+48]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_13
        STRB     R0,[R1, #+0]
//   37   rph7=(uint8)*(ptr+13);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+52]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
//   38   
//   39   acce=(uint16)*(ptr+14);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+56]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_15
        STRH     R0,[R1, #+0]
//   40   highspeed=(int16)*(ptr+15);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+60]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_16
        STRH     R0,[R1, #+0]
//   41   lowspeed=(int16)*(ptr+16);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+64]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_17
        STRH     R0,[R1, #+0]
//   42   turnspeed=(int16)*(ptr+17);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+68]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_18
        STRH     R0,[R1, #+0]
//   43   
//   44   LPLD_LPTMR_DelayMs(100);
        MOVS     R0,#+100
        BL       LPLD_LPTMR_DelayMs
//   45 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void flash_config(void)
//   47 {
flash_config:
        PUSH     {R7,LR}
//   48   
//   49   result=LPLD_Flash_SectorErase(FLASH_TEST_ADDR); //²Á³ý
        MOVS     R0,#+483328
        BL       LPLD_Flash_SectorErase
        LDR.N    R1,??DataTable1_19
        STRB     R0,[R1, #+0]
//   50   LPLD_LPTMR_DelayMs(100);
        MOVS     R0,#+100
        BL       LPLD_LPTMR_DelayMs
//   51   
//   52   write_buffer[0]=lph1*1.0;
        LDR.N    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+0]
//   53   write_buffer[1]=lph2*1.0;
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+4]
//   54   write_buffer[2]=lph3*1.0;
        LDR.N    R0,??DataTable1_3
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+8]
//   55   write_buffer[3]=lph4*1.0;
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+12]
//   56   write_buffer[4]=lph5*1.0;
        LDR.N    R0,??DataTable1_5
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+16]
//   57   write_buffer[5]=lph6*1.0;
        LDR.N    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+20]
//   58   write_buffer[6]=lph7*1.0;
        LDR.N    R0,??DataTable1_7
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+24]
//   59   write_buffer[7]=rph1*1.0;
        LDR.N    R0,??DataTable1_8
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+28]
//   60   write_buffer[8]=rph2*1.0;
        LDR.N    R0,??DataTable1_9
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+32]
//   61   write_buffer[9]=rph3*1.0;
        LDR.N    R0,??DataTable1_10
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+36]
//   62   write_buffer[10]=rph4*1.0;
        LDR.N    R0,??DataTable1_11
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+40]
//   63   write_buffer[11]=rph5*1.0;
        LDR.N    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+44]
//   64   write_buffer[12]=rph6*1.0;
        LDR.N    R0,??DataTable1_13
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+48]
//   65   write_buffer[13]=rph7*1.0;
        LDR.N    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+52]
//   66   
//   67   write_buffer[14]=acce*1.0;
        LDR.N    R0,??DataTable1_15
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+56]
//   68   write_buffer[15]=highspeed*1.0;
        LDR.N    R0,??DataTable1_16
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+60]
//   69   write_buffer[16]=lowspeed*1.0;
        LDR.N    R0,??DataTable1_17
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+64]
//   70   write_buffer[17]=turnspeed*1.0;
        LDR.N    R0,??DataTable1_18
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_20  ;; 0x3ff00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_21
        STR      R0,[R1, #+68]
//   71   
//   72   result=LPLD_Flash_ByteProgram((uint32)FLASH_TEST_ADDR,(uint32*)write_buffer, sizeof(write_buffer)); //Ð´
        MOVS     R2,#+200
        LDR.N    R1,??DataTable1_21
        MOVS     R0,#+483328
        BL       LPLD_Flash_ByteProgram
        LDR.N    R1,??DataTable1_19
        STRB     R0,[R1, #+0]
//   73   
//   74   LPLD_LPTMR_DelayMs(100);
        MOVS     R0,#+100
        BL       LPLD_LPTMR_DelayMs
//   75   
//   76   
//   77 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     lph1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     lph2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     lph3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     lph4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     lph5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     lph6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     lph7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     rph1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     rph2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     rph3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     rph4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     rph5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     rph6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     rph7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     acce

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     highspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     lowspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     turnspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     result

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DC32     write_buffer

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   78 
//   79 
//   80 
//   81 
// 
// 205 bytes in section .bss
// 840 bytes in section .text
// 
// 840 bytes of CODE memory
// 205 bytes of DATA memory
//
//Errors: none
//Warnings: 3
