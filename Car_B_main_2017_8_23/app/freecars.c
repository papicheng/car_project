

#include "common.h"
#include "Freecars.h"
#include "timer.h"

uint8 uSendBuf[UartDataNum*2]={0};
uint8 FreeCarsDataNum=UartDataNum*2;//����ͨ���� UartDataNum*2(��Ϊ������Int16�͵�)
double UartData[9] = {0};

SerialPortType SerialPortRx;
//��ʾFreecars��λ���޸�����

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
    Turn_PID.P=(int16)UartData[0];   //������ֵ
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
������պ���
CmdNum��0~255������
DATA  ��0~255����������Ӧ��������
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
/*��ѯ������һ֡����
����ʱ�������ݳ����й�
�����Է����ж����������Ե���
����ʱ����㿴�����ĵ�
*/
void sendDataToScope(void)
{
  uint8 i,sum=0;
  //ʹ����ѯ�ķ�ʽ�������ݣ�������δ���ͣ�����ͣ�ڴ˴�ֱ���������
  LPLD_UART_PutChar(UART4,251); 
  LPLD_UART_PutChar(UART4,109); 
  LPLD_UART_PutChar(UART4,37); 
  sum+=(251); //ȫ�����ݼ���У��
  sum+=(109);
  sum+=(37);
  for(i=0;i<FreeCarsDataNum;i++)
  {
    LPLD_UART_PutChar(UART4,uSendBuf[i]);
    sum+=uSendBuf[i]; //ȫ�����ݼ���У��
  }
  LPLD_UART_PutChar(UART4,sum);
}
/*
��ʾ����ĳ��ͨ���������������
chanel��ͨ��
data ������-32768~32767
push ��������������䵽���������棬��Ȼdate��16λ�ģ����������8λ�������档
*/
void push(uint8 chanel,uint16 data)
{
  uSendBuf[chanel*2]=data/256;
  uSendBuf[chanel*2+1]=data%256;
}
//�����жϻص�����
void uart4_isr(void)  //�жϴ�����
{
  int i,b,d1;
  uint32 d;
  //��������жϺ���
  if((UART4->S1 & UART_S1_RDRF_MASK) && (UART4->C2 & UART_C2_RIE_MASK))
  {
    SerialPortRx.Data = LPLD_UART_GetChar(UART4);  
    if(SerialPortRx.Stack < UartRxBufferLen)
    {
      SerialPortRx.Buffer[SerialPortRx.Stack++] = SerialPortRx.Data;
      if(SerialPortRx.Stack >= UartRxDataLen//UartRxDataLen����Ϊһ֡
         && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen]  ==0xff//У����ͷ
           && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+1]==0x55
             && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+2]==0xaa
               && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+3]==0x10)
      {//double data 9��ͨ������У��
        SerialPortRx.Check = 0;
        b = SerialPortRx.Stack - UartRxDataLen;//��ʼλ
        for(i=b;i<SerialPortRx.Stack-1;i++)//��У��λ���λ����У��
        {
          SerialPortRx.Check += SerialPortRx.Buffer[i];//У��
        }
        if(SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1])
        {//У��ɹ����������ݽ���
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
          UartDebug();  //תȥ�������ܵ������ݸ�������
        }
        SerialPortRx.Stack = 0;
      }
      else if(SerialPortRx.Stack >= UartRxCmdLen//UartRxDataLen����Ϊһ֡
              && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen]  ==0xff
                && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+1]==0x55
                  && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+2]==0xaa
                    && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+3]==0x77)//cmd
      {
        SerialPortRx.Check = 0;
        b = SerialPortRx.Stack - UartRxCmdLen;//��ʼλ
        for(i=b; i<SerialPortRx.Stack-1; i++)//��У��λ���λ����У��
        {
          SerialPortRx.Check += SerialPortRx.Buffer[i];//У��
        }
        if(SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1])
        {//У��ɹ�
          UartCmd(UartCmdNum,UartCmdData);//������յ����������MCU�������
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






