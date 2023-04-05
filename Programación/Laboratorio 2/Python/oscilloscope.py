import serial
import time

arduinoData = serial.Serial('com12', 9600)

def led_on():
    arduinoData.write(b'1') 

def led_off():
    arduinoData.write(b'0')

t = 0
while(t<2000):
    if(t % 10 == 0):
        print(t)
    t+=1

led_on()
print("done")