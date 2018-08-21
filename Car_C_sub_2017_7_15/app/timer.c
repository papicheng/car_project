
#include "timer.h"
#include "camera.h"
#include "obstacle.h"
uint8 errleft[2], errright[2];
extern uint8 NOpoint;
extern uint8 real_pointx, real_pointy;

void pit_init( void )
{
    static PIT_InitTypeDef pit0_init_struct;
    pit0_init_struct.PIT_Pitx = PIT0;
    pit0_init_struct.PIT_PeriodMs = 10;    //计算时间会到2ms，
    pit0_init_struct.PIT_Isr = pit0_isr;   //设置中断函数
    LPLD_PIT_Init( pit0_init_struct );
    LPLD_PIT_EnableIrq( pit0_init_struct );
}   

void pit0_isr( void )
{
  static uint32 cnt1000ms;
  static uint8 barrier_flag=0;
  if(!barrier_flag)
  cnt1000ms++;
  if(cnt1000ms>=500)
  {
    barrier_flag=1;
    ob_gpio_init();
    cnt1000ms=0;
  }
    Calculate_Middle_Point();
    //if(NOpoint==0&&real_pointy>51&&45<real_pointx&&real_pointx<130)
    /*-----------------小打脚-----------------------*/
    
    if( NOpoint == 0 && 51 < real_pointx && real_pointx < 141 && real_pointy < 25  )
    {
        //单纯主从引脚连接E26-AA16  E27-AA17 E28-AA18 A4-AA19 A5-AA12 A7-AA13可触发中断
        if( real_pointx < 90 && errleft[1] != 1 &&errright[0] != 1 &&errright[1] != 1) //障碍在左
        {
            PTA19_O = 1;  //A16输出高电平 ，与主单片机E26相连
            PTA17_O = 0;
            PTA12_O = 0;
            PTA13_O = 0;
            errleft[0] = 1;
            errleft[1] = 0;
            errright[0] = 0;
            errright[1] = 0;
        }
        else if(real_pointx > 90 && errleft[0] != 1 && errleft[1] != 1 &&errright[1] != 1)//障碍在右
        {
            PTA19_O = 0;
            PTA17_O = 1;//A17输出高电平 ，与主单片机E27相连
            PTA12_O = 0;
            PTA13_O = 0;
            errleft[0] = 0;
            errleft[1] = 0;
            errright[0] = 1;
            errright[1] = 0;
        }
    }
    /*---------------------大打脚------------------------------*/
   else if( NOpoint == 0 && real_pointy >= 25 && 36 <= real_pointx && real_pointx <= 146  ) //pointy在55左右障碍点仍有效
    {
        if( real_pointx < 90 && errleft[0] != 1 &&errright[0] != 1&&errright[1] != 1) //障碍在左
        {
            PTA19_O = 0;
            PTA17_O = 0;//A17输出高电平 ，与主单片机E27相连
            PTA12_O = 1;
            PTA13_O = 0;
            errleft[0] = 0;
            errleft[1] = 1;
            errright[0] = 0;
            errright[1] = 0;
        }
        else if( real_pointx > 90 && errleft[0] != 1 && errleft[1] != 1 && errright[0] != 1)//障碍在右
        {
            PTA19_O = 0;
            PTA17_O = 0;//A17输出高电平 ，与主单片机E27相连
            PTA12_O = 0;
            PTA13_O = 1;
            errleft[1] = 0;
            errleft[0] = 0;
            errright[0] = 0;
            errright[1] = 1;
        }
    }
    else if(NOpoint)
    {
      PTA19_O = 0; //避障后看不到图，恢复低电平
        //disable_irq(PIT1_IRQn);
        errleft[0] = 0;
        PTA17_O = 0; //避障后看不到图，恢复低电平
        //disable_irq(PIT1_IRQn);
        errright[0] = 0;
         PTA12_O = 0;
        errleft[1] = 0;
        PTA13_O = 0;
        errright[1] = 0;
    }
}
void Key_delay( void )
{
    uint16 i, n;
    for( i = 0; i < 19000; i++ )
    {
        for( n = 0; n < 50; n++ )
        {
            asm( "nop" );
        }
    }
}