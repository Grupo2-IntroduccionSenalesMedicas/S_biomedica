# **LABORATORIO 3: – USO DE BiTalino PARA EMG y ECG**
# **Tabla de contenidos**

1. [Objetivos](#id1)
2. [Materiales y equipos](#id2)
3. [Resultados](#id3)\
     3.1 [Conexión usada](#id4)\
     3.2 [Video de la señal](#id5)\
     3.3 [Ploteo de la señal en OpenSignal](#id6)\
     3.4 [Archivos](#id7)\
     3.5 [Ploteo de la señal en Python](#id8)



## **Objetivos** <a name="id1"></a>
* Adquirir señales biomédicas de EMG y ECG.
* Hacer una correcta configuración de BiTalino.
* Extraer la información de las señales EMG y ECG del software OpenSignals (r)evolution



## **Materiales y equipos** <a name="id2"></a>


|  **Modelo**  | **Descripción** | **Cantidad** |
|:------------:|:---------------:|:------------:|
| (R)EVOLUTION |   Kit BITalino  |       1      |
|       -      |      Laptop     |       1      |


<p align="justify">
<p align="center"><img src="/Imagenes/Bitalino/working1.jpeg" width="400" height="266"></p>
</p>

## **RESULTADOS** <a name="id3"></a>
### **Conexión usada** <a name="id4"></a>
Se utilizó la conexión EMG en la placa Bitalino utilizando el sensor EMG de 3 electrodos como se muestra a continuación.
<p align="justify">
<p align="center"><img src="/Imagenes/Bitalino/bit-con2.jpg" width="400" height="266"></p>
</p>

El siguiente procedimiento consiste en colocar los electrodos EMG en el usuario de prueba. Para ello se utilizó la **Guía De Procedimiento de Electromiografía y velocidad de conducción de nervios periféricos** del año 2020 elaborada por el **Instituto Nacional del Niño de San Borja** para el Ministerio de Salud (MINSA).

### **Video de la señal** <a name="id5"></a>
### PRUEBA 1 <br>

<p align="justify">
En la prueba 1 se tomo señales del reposo y contracción del dedo pulgar, teniendo la conexión de tierra en el dorso de la mano.<br>
</p>
<p align="center"><img src="/Imagenes/Bitalino/electrodos_dedo1.png" width="400" height="300"></p>

[![EMG dedo contrayendose con fuerza en oposición]([https://img.youtube.com/vi/IBuOq4eIaFo/0.jpg])(https://youtu.be/IBuOq4eIaFo)

### PRUEBA 2 <br>

<p align="justify">
En la prueba 2 se tomo señales del reposo y contracción del biceps, teniendo la conexión de tierra a la altura de la muñeca.<br>
</p>
<p align="center"><img src="/Imagenes/Bitalino/electrodos_brazo1.png" width="400" height="300"></p>

### PRUEBA 3 <br>

<p align="justify">
En la prueba 3 se tomo señales del reposo y contracción del músculo gastrocnemio, teniendo la conexión de tierra en la parte anterior de la tibia.<br>
</p>
<p align="center"><img src="/Imagenes/Bitalino/electrodos_pantorrilla1.png" width="400" height="300"></p>

### **Ploteo de la señal y video en OpenSignal** <a name="id6"></a>
### **Archivos** <a name="id7"></a>
### **Ploteo de la señal en Python** <a name="id8"></a>
La primera prueba se realizo con el dedo pulgar en el cuál se tomaron muestras del dedo en reposo, contra fuerza y en posición de pinza con el dedo índice.<br>
En la segunda prueba se realizó con el biceps del brazo el cual se sometio a contra fuerza y contracción máxima. <br>
En la tercera prueba , el usuario estuvo en posición sentado y parado, y de las dos formas se sometió a contracción el músculo gastrocnemio.<br> 
