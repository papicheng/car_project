
#ifndef CAMERA_TEST_H
#define CAMERA_TEST_H

#include "common.h"

#define COLUMN 180       //列
#define ROW    240      //行
#define ROWbegin    80      //开始采集行
#define ROWend    170      //结束采集行
#define ROWnum    90      //采集行数


void MT9V032_CFG_init(void);
void portb_isr(void);
void my_delay(long t);
void camera_init(void);
void Calculate_Middle_Point(void);
void picture_send(void);
void uart3_isr(void);

extern uint8 real_pointx,real_pointy,NOpoint;
extern uint8 bzx,bzy,bz_nopoint;
extern uint32 bz_turn_pwm;



#endif