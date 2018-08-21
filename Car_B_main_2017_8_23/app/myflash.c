
#include "common.h"
#include "camera_test.h"  
#include "timer.h"
#include "infrared.h"
#include "oled.h"
#include "botton.h"
#include "Freecars.h"
#include "barrier.h"
#include "myflash.h"

#define FLASH_TEST_SECTOR   (256-20)
#define FLASH_TEST_ADDR     (FLASH_TEST_SECTOR*2048)// FLASH_TEST_SECTOR*(2048)
#define DATA_SIZE           (50)

float write_buffer[DATA_SIZE]; //¶¨ÒåÐ´»º³åÇø
float *ptr;
uint8 result=NULL;

void parameter_flash(void)
{
  ptr = (float*)FLASH_TEST_ADDR;  //¶Á
  
  lph1=(uint8)*(ptr+0);
  lph2=(uint8)*(ptr+1);
  lph3=(uint8)*(ptr+2);
  lph4=(uint8)*(ptr+3);
  lph5=(uint8)*(ptr+4);
  lph6=(uint8)*(ptr+5);
  lph7=(uint8)*(ptr+6);
  rph1=(uint8)*(ptr+7);
  rph2=(uint8)*(ptr+8);
  rph3=(uint8)*(ptr+9);
  rph4=(uint8)*(ptr+10);
  rph5=(uint8)*(ptr+11);
  rph6=(uint8)*(ptr+12);
  rph7=(uint8)*(ptr+13);
  
  acce=(uint16)*(ptr+14);
  highspeed=(int16)*(ptr+15);
  lowspeed=(int16)*(ptr+16);
  turnspeed=(int16)*(ptr+17);
  
  LPLD_LPTMR_DelayMs(100);
}
void flash_config(void)
{
  
  result=LPLD_Flash_SectorErase(FLASH_TEST_ADDR); //²Á³ý
  LPLD_LPTMR_DelayMs(100);
  
  write_buffer[0]=lph1*1.0;
  write_buffer[1]=lph2*1.0;
  write_buffer[2]=lph3*1.0;
  write_buffer[3]=lph4*1.0;
  write_buffer[4]=lph5*1.0;
  write_buffer[5]=lph6*1.0;
  write_buffer[6]=lph7*1.0;
  write_buffer[7]=rph1*1.0;
  write_buffer[8]=rph2*1.0;
  write_buffer[9]=rph3*1.0;
  write_buffer[10]=rph4*1.0;
  write_buffer[11]=rph5*1.0;
  write_buffer[12]=rph6*1.0;
  write_buffer[13]=rph7*1.0;
  
  write_buffer[14]=acce*1.0;
  write_buffer[15]=highspeed*1.0;
  write_buffer[16]=lowspeed*1.0;
  write_buffer[17]=turnspeed*1.0;
  
  result=LPLD_Flash_ByteProgram((uint32)FLASH_TEST_ADDR,(uint32*)write_buffer, sizeof(write_buffer)); //Ð´
  
  LPLD_LPTMR_DelayMs(100);
  
  
}




