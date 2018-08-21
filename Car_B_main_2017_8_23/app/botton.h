

#ifndef _BOTTON_H_
#define _BOTTON_H_

#define BUZZER_ON LPLD_GPIO_Output_b(PTA,25,1)//·äÃùÆ÷Ïì
#define BUZZER_OFF LPLD_GPIO_Output_b(PTA,25,0)

void botton_dial_switch_gpio_init(void);
void Key_delay(void);
void delay(int n);
void Key_Process(void);
unsigned char KeyScan(void);
void SaveData(void);
void PageInit(signed char sPageNum);
void Key_Up(void);
void Key_Down(void);
void Key_DataUp(void);
void Key_DataDown(void);

void pianhang_config(void);
void ph_DataUp(void);
void ph_DataDown(void);
#endif

