

#include "common.h"
#include "Freecars.h"
#include "timer.h"

uint8 uSendBuf[UartDataNum*2]={0};
uint8 FreeCarsDataNum=UartDataNum*2;//它是通道数 UartDataNum*2(因为数据是Int16型的)
double UartData[9] = {0};

SerialPortType SerialPortRx;
//显示Freecars上位机修改数据

uint8 stopflag=0;

void UartDebug(void)
{
  LPLD_UART_PutChar(UART4,1);
  
  if(UartData[0]!=0)
  {
    Speed_PID.P=(float)UartData[0];
  }
  if(UartData[1]!=0)
  {
    Speed_PID.I=(float)(UartData[1]);
    
  }
  if(UartData[2]!=0)
  {
    Speed_PID.D=(int16)(UartData[2]);
    
  }
  if(UartData[3]!=0)
  {
    car_stop_flag=(uint8)(UartData[3]); 
  }
  
  if(UartData[4]!=0)
  {
    Turn_PID.P=(int16)UartData[0];   //高速阈值
  }
  if(UartData[5]!=0)
  {
    Turn_PID.D=(UartData[5]);
  }
  if(UartData[6]!=0)
  {
//   Speed_PID.P=(int)(UartData[6]);
  }
  if(UartData[7]!=0)
  {
//    Speed_PID.I=(int16)(UartData[7]);
  }
  if(UartData[8]!=0)
  {
//    Speed_PID.D=(int16)(UartData[8]);
  }
}
/*
命令接收函数
CmdNum：0~255号命令
DATA  ：0~255个命令所对应的命令字
*/
void UartCmd(uint8 CmdNum,uint8 Data)
{
  if(CmdNum==2&&Data==102)//page up
  {
    stopflag=!stopflag;
    
  }
  if(CmdNum==2&&Data==103)//page down
  {
    
    LPLD_UART_PutChar(UART4,'d');
  }
}
/*轮询法发送一帧数据
消耗时间与数据长度有关
不可以放在中断里面周期性调用
消耗时间计算看帮助文档
*/
void sendDataToScope(void)
{
  uint8 i,sum=0;
  //使用轮询的方式发送数据，当数据未发送，程序停在此处直到发送完成
  LPLD_UART_PutChar(UART4,251); 
  LPLD_UART_PutChar(UART4,109); 
  LPLD_UART_PutChar(UART4,37); 
  sum+=(251); //全部数据加入校验
  sum+=(109);
  sum+=(37);
  for(i=0;i<FreeCarsDataNum;i++)
  {
    LPLD_UART_PutChar(UART4,uSendBuf[i]);
    sum+=uSendBuf[i]; //全部数据加入校验
  }
  LPLD_UART_PutChar(UART4,sum);
}
/*
向示波器某个通道缓冲区填充数据
chanel：通道
data ：数据-32768~32767
push 是用来将数据填充到缓冲区里面，显然date是16位的，因此用两个8位数来储存。
*/
void push(uint8 chanel,uint16 data)
{
  uSendBuf[chanel*2]=data/256;
  uSendBuf[chanel*2+1]=data%256;
}
//接收中断回调函数
void uart4_isr(void)  //中断处理函数
{
  int i,b,d1;
  uint32 d;
  //进入接收中断函数
  if((UART4->S1 & UART_S1_RDRF_MASK) && (UART4->C2 & UART_C2_RIE_MASK))
  {
    SerialPortRx.Data = LPLD_UART_GetChar(UART4);  
    if(SerialPortRx.Stack < UartRxBufferLen)
    {
      SerialPortRx.Buffer[SerialPortRx.Stack++] = SerialPortRx.Data;
      if(SerialPortRx.Stack >= UartRxDataLen//UartRxDataLen个数为一帧
         && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen]  ==0xff//校验字头
           && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+1]==0x55
             && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+2]==0xaa
               && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+3]==0x10)
      {//double data 9个通道数据校验
        SerialPortRx.Check = 0;
        b = SerialPortRx.Stack - UartRxDataLen;//起始位
        for(i=b;i<SerialPortRx.Stack-1;i++)//除校验位外的位进行校验
        {
          SerialPortRx.Check += SerialPortRx.Buffer[i];//校验
        }
        if(SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1])
        {//校验成功，进行数据解算
          for(i = 0;i<9;i++)
          {
            d = SerialPortRx.Buffer[b+i*4+4]*0x1000000L + SerialPortRx.Buffer[b+i*4+5]*0x10000L + SerialPortRx.Buffer[b+i*4+6]*0x100L + SerialPortRx.Buffer[b+i*4+7];
            if(d>0x7FFFFFFF)
            {
              d1 = 0x7FFFFFFF - d;
            }
            else
            {
              d1 = d;
            }
            UartData[i]=d1;
            UartData[i]/=65536.0;
          }
          UartDebug();  //转去处理，把受到的数据付给变量
        }
        SerialPortRx.Stack = 0;
      }
      else if(SerialPortRx.Stack >= UartRxCmdLen//UartRxDataLen个数为一帧
              && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen]  ==0xff
                && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+1]==0x55
                  && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+2]==0xaa
                    && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+3]==0x77)//cmd
      {
        SerialPortRx.Check = 0;
        b = SerialPortRx.Stack - UartRxCmdLen;//起始位
        for(i=b; i<SerialPortRx.Stack-1; i++)//除校验位外的位进行校验
        {
          SerialPortRx.Check += SerialPortRx.Buffer[i];//校验
        }
        if(SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1])
        {//校验成功
          UartCmd(UartCmdNum,UartCmdData);//处理接收到的命令，付给MCU命令变量
        }
        SerialPortRx.Stack = 0;
      }
    }
    else
    {
      SerialPortRx.Stack = 0;
    } 
  }
}






