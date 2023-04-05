import pandas as pd
import matplotlib.pyplot as plt
import serial

df1 = pd.read_csv('TEK00000.csv')
df2 = pd.read_csv('TEK00001.csv')
df3 = pd.read_csv('TEK00002.csv')

plt.plot(df1['CH1'])
