import serial
import time

Serialport = serial.Serial(port = 'COM18', baudrate = 9600, timeout = 1)

print(Serialport.name)