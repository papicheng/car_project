
#ifndef __CAMERA_H__
#define __CAMERA_H__
#include "common.h"

extern uint8 NOpoint;
extern uint8 real_pointx,real_pointy;
void MT9V032_CFG_init(void);
void porte_isr(void);
void my_delay(long t);
void camera_init(void);
void Calculate_Middle_Point(void);
void pit0_isr(void);
void pit_init(void);
void nvic_init(void);

void picture2pc(void);

extern float testsum_average;
#endif
