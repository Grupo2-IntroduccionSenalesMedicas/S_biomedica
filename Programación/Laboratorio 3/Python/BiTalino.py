import numpy as np
import matplotlib.pyplot as plt

f = np.loadtxt('File.txt')

plt.figure(1)
plt.plot(f,'r')
plt.title('Obtained Signal')
plt.xlabel('Time');plt.ylabel('Amplitude')
plt.grid(True);plt.show()