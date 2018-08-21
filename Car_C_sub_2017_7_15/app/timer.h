#ifndef __TIMER_H__
#define __TIMER_H__

#include "common.h"

void pit_init(void);
void pit0_isr(void);
void Key_delay(void);

#endif