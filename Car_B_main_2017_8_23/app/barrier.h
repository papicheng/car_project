#ifndef BARRIER_H
#define BARRIER_H

#include "common.h"

void barrier_init(void);
void PTD_isr(void);//车右转
void PTE_isr(void);//车左转

#endif