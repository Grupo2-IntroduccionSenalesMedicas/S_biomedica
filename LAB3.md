# **LABORATORIO 2: ADQUISICIÓN DE SEÑALES Y GRAFICACIÓN EN ARDUINO**

# OBJETIVOS
- Generar 3 señales sinusoidales con cierta frecuencia y amplitud 
- Guardar las señales adquiridas en el osciloscopio en archivo CSV y las adquiridas en ARDUINO mediante el ploteo por el código en ARDUINO IDLE.
- Comparar una señal leída de un osciloscopio y el arduino Nano 33 IoT 

***

# **Tabla de contenidos**

1. [Materiales](#id3)
2. [Procedimientos](#id4)
3. [Resultados](#id5)


# MATERIALES <a name="id3"></a>
<p align="justify">
<p align="center"><img src="/Imagenes/materiales_lab2.png"></p>
</p>


# PROCEDIMIENTOS <a name="id4"></a>
<p align="justify">
</p>

## Uso del Generador de Señales y Osciloscopio<br>
a) Se quiere generar 3 señales en el Generador: </p>
### 1 Voltio , 10 Hertz </p>
<p align="center"><img src="/Imagenes/1V.jpg" width="400" height="200"></p>


### 2 Voltio , 20 Hertz

<p align="center"><img src="/Imagenes/2V.jpg" width="400" height="200"></p>



### 3 Voltio , 20 Hertz


<p align="center"><img src="/Imagenes/3V.jpg" width="400" height="200"></p>
</p> 

b) Conectar un extremo del cable BNC en el canal 1 del generador de señales y el otro extremo en el canal 1 del osciloscopio</p>
c) Haciendo uso de los cursores, calcular y mostrar en el osciloscopio las magnitudes mencionadas en a) </p>
d) Obtener archivo tipo CSV del osciloscopio por cada señal leída </p>


## Conexión de Hardware<br>
e)Realizar la conexión de la señal desde la sonda del generador hasta el pin del Arduino IoT a través de un jumper, de igual manera conectar la tierra desde la pinza de cocodrilo de la sonda hasta el GND del arduino. </p>
f)Conectar un condensador para regular los picos altos de voltaje que podría emitir la señal. </p>
<p align="center"><img src="/Imagenes/conexion.jpeg" width="300" height="600"></p>


## Uso del arduino IoT<br>
  
g)Conecta el Arduino a tu computadora: Una vez que tengas tu placa Arduino y el software instalado </p>
h) Escribe un código para leer la señal entregada del generador de señales a cierto periodo de muestreo, considerar la frecuencia original de la señal simulada y las condiciones del arduino IoT </p>


# RESULTADOS <a name="id5"></a>
<p align="justify">
</p>

A continaución se presentarán los ploteos que se realizaron en Arduino IDE con la lectura de las señales generadas </p>
Considerando que el eje X es el tiempo y el eje Y la amplitud de la señal en relación a la resolución del Arduino, es decir, si la placa Nano IoT funciona a 3.3V y su resolucion es de 10 bits, por ende en el eje Y alcanza valores de 1023, en caso sea 3V, en el eje Y será 930 y así sucesivamente. </p>
## 1 Voltio con 10 Hertz<br>

<p align="center"><img src="/Imagenes/Screenshot (444).png" width="900" height="600"></p>


## 2 Voltio con 20 Hertz<br>

<p align="center"><img src="/Imagenes/Screenshot (446).png" width="900" height="600"></p>


## 3 Voltio con 20 Hertz<br>

<p align="center"><img src="/Imagenes/Screenshot (445).png" width="900" height="600"></p>


## Comparación entre las 3 señales<br>


<p align="center"><img src="/Imagenes/COMPARACION.jpg" width="900" height="600"></p>
