# Laboratorio 7
# **Tabla de contenidos**
1. [Introducción](#id0)\
  1.1 [¿Qué es un filtro?](#id1)\
  1.2 [Filtros analógicos](#id2)\
  1.3 [Filtros con método de ventana](#id3)\
  1.4 [Características eléctricas de las señales de interferencia en ECG](#id4)
2. [Objetivos](#id5)
3. [Materiales y equipos](#id6)
4. [Procedimiento](#id7)
5. [Resultados](#id8)\
  5.1 [Filtro IIR generado: Butterworth](#id9)\
  5.2 [Filtro FIR generado: Método Hamming](#id10)\
  5.3 [Señales crudas y filtradas para cada campo](#id11)\
  5.3 [Comparación de señal cruda vs filtrada](#id12)\
  5.4 [Archivos](#id13)\
6. [Conclusiones](#id14)
7. [Referencias](#id15)
***
## **Introducción al laboratorio** <a name="id0"></a>
### **¿Qué es un filtro?**<a name="id1"></a>
Un filtro es un dispositivo (bien realizado en hardware o software) que se aplica a un conjunto de datos ruidosos para poder extraer información sobre una cantidad de interés. En el área de las señales, el filtrado es un proceso mediante el cual se modifica el contenido espectral de una señal.

Existen filtros analógicos y digitales según la aplicación.
Dentro de los analógicos podemos diferenciar los pasivos (filtros en escalera RLC) y activos (utilizando OPAMPS o transistores).

### **Filtros analógicos [1][2]**<a name="id2"></a>
|Nombre del Filtro|Descripción|
|:-----------:|:-----:|
|   Butterworth|No tienen rizado ni en la pasa banda ni en detiene banda. Debido a la falta de rizado, también se le conoce como filtro máximamente plano. Su respuesta de frecuencia se caracteriza por su respuesta suave a todas las frecuencias. Asimismo, existen ligeros sobrepasamintos y oscilaciones en la respusta a pulsos    |
| Bessel     | Tiene mejor respuesta a pulsos. Asegura la pasa lineal en toda la bandas pasante, es decir, no distorsionan la señal, a costa de aumentar la zona de transición. Tiene una rspuesta menos constante en la banda de paso en relación a butterworth   | 
| Chebyshev  |  Consiguen una caída más abrupta a frecuencias bajas en base a permitir un rizado de la respuesta.Por otro lado, tiene sobrepasamientos y oscilaciones ante entrada de pulsos    |
| Elíptico   |  Estos filtros presentan fase menos lineal. Consiguen estrechar la zona de transición permitindo un rizado constante en las bandas  | 


![](https://i.imgur.com/IjRexVv.png)
<p align="center">Fig 1. Filtros analógicos [3] [Guía]</p>

Un filtro digital es un sistema LTI que modifica el espectro en frecuencia de la señal de entrada según la función de trasnferencia. La clasificación según el tipo de respuesta ante entrada unitaria es : FIR (finite impulse responde) que se caracterizan por ser no recursivos , e IIR (infite impulse responde) que tienen retroalimentación en la señal de salida.
Cabe resaltar que para el diseño de filtros digitales **IIR** se basa en la utilización de filtros analógicos. 
Para diseñar los filtros FIR se tienen que truncar la serie infinita de los coeficientes de Fourier en una serie finita. En primer lugar se debe buscar la DFT inversa y a partir de esta obtener los coeficientes del filtro para luego acotarlo con un determinado tipo de ventana. 

### **Filtros con método de Ventana [3]**<a name="id3"></a>
|Nombre de Ventana|Visualización|
|:-----------:|:-----:|
|  Rectangular|![](https://i.imgur.com/BRLbDjX.png)|
| Bartlett |![](https://i.imgur.com/8j29Ywr.png)|
| Hanning  |  ![](https://i.imgur.com/GSevUQP.png)|
| Hamming   | ![](https://i.imgur.com/prxc8xD.png)|
| Blackman  | ![](https://i.imgur.com/K0880MV.png)|

http://www3.fi.mdp.edu.ar/tds/material/10-Filtros%20FIR.pdf (no puedo citar, mi extensión no me deja)


|FIR [4]|IIR [4]|
|:-----------:|:-----:|
|Siempre son estables porque utilizan ceros en el plano complejo. No existen desbordamintos porque la sumatoria es de elementos finito. La salida siempre es una combinación lineal de los valores presentes y apsados de la señal de entrada. Se diseñan utilizando técnicas como método de ventana o método de frecuencia de sampleo | La salida esta en función no sólo de la entrada actual y futura sino también de anteriores. Se diseñan a partir de filtros anaóligcosx. Como son capaces de realizar retroalimentación, poseen ceros y polos de la función de transferencia   |       


### **Características eléctricas de las señales de interferencia en ECG**<a name="id4"></a>
Las señales típicas de interferencia son generadas por factores como:
- Contactos inestables entre electrodos y la piel del sujeto de estudio.
- La respiración produce componente de baja frecuencia
- Las señales EMG
- La red eléctrica

Estas pueden afectar en mayor medida a la morfología de las señales ECG, hasta el punto de no ser útiles para el ojo médico.[5]

|Tipo de interferencia|Rango de frecuencias|Amplitud en función del valor pico a pico del ECG|
|:-----------:|:-----:|:-------:|
| EMG         | 0 - 10 KHz| rms del 10%       |
| Red eléctrica     | 60 Hz    | mayor al 50%       |
| Respiración  |  0.15 - 0.3 Hz   |    15%    |


## **Objetivos** <a name="id5"></a>
- Establecer un conocimiento téorico y práctico sobre el diseño y utilización de los filtros IIR y FIR.
- Obtener las señales filtradas de ECG de diferentes actividades y compararlas con la señal cruda.

## **Materiales y equipos** <a name="id6"></a>

1. Adquisición de señales ECG:

|Cantidad|Material o equipo|Uso|
|:-----:|:-----:|:-------:|
|1|Kit BITalino (R)EVOLUTION|Recolección de señales de origen fisiológico|
|1|OpenSignals (R)EVOLUTION |Aquisición, visualización y procesado de señales obtenidas por el BITalino|
|3|Electrodos|Registro de señales eléctricas para el análisis de electrocardiograma|
|1|Laptop|Visualización y procesamiento de las señales ECG con lenguaje de programación|

2. Procesamiento de señales:

|Cantidad|Material o equipo|Uso|
|:-----------:|:-----:|:-------:|
|1|Laptop|Visualización y procesamiento de las señales ECG con lenguaje de programación|

## **Procedimiento** <a name="id7"></a>
1. 
![](https://i.imgur.com/rQqMmE6.png)
![](https://i.imgur.com/qZ7ecgt.png)


## **Resultados** <a name="id8"></a>

### **Filtro IIR generado: Butterworth**<a name="id9"></a>

|Respuesta en frecuencia|Polos y ceros|
|:-----:|:-----:|
|![](https://i.imgur.com/3lfgvS4.png)|![](https://i.imgur.com/Ob3XBy1.png)|

### **Filtro FIR generado: Método Hamming**<a name="id10"></a>
|Respuesta en frecuencia|Polos y ceros|
|:-----:|:-----:|
|![](https://i.imgur.com/WTXeWNT.png)|![](https://i.imgur.com/S0uJSW4.png)|



### **Señales crudas y filtradas para cada campo**<a name="id11"></a>
|Campo            |Señal Cruda|Filtro IIR| Filtro FIR|
|:-----------:|:-----:|:-------:|:----------:|
|   Basal         |![](https://i.imgur.com/ju5s3LY.png)|![](https://i.imgur.com/meXv9WT.png)|![](https://i.imgur.com/x9Fyo3S.png)|
| Respiración     |![](https://i.imgur.com/wQuyKme.png)|![](https://i.imgur.com/3nQfnRF.png)|![](https://i.imgur.com/Kv0IlO6.png)|
| Post ejercicio  |![](https://i.imgur.com/uZv9cIg.png)|![](https://i.imgur.com/tkdYgEs.png)|![](https://i.imgur.com/Ru5IPIx.png)|

### **Comparación de señal cruda vs filtrada**<a name="id12"></a>
**1. Filtrado IIR**
![](https://i.imgur.com/mqTBK28.png)

**2. Filtrado FIR**
![](https://i.imgur.com/KNOYBls.png)


### **Archivos**<a name="id13"></a>
[1. Carpeta de las señales ECG crudas](https://github.com/Grupo2-IntroduccionSenalesMedicas/S_biomedica/tree/main/ISB/Laboratorios/Programación/Filtering/Señales%20ECG)</p>
[2. Dataset de las señales](https://github.com/Grupo2-IntroduccionSenalesMedicas/S_biomedica/blob/main/ISB/Laboratorios/Programación/Filtering/Dataset.mat)</p>
[3. Código de programación del filtrado](https://github.com/Grupo2-IntroduccionSenalesMedicas/S_biomedica/blob/main/ISB/Laboratorios/Programación/Filtering/FilteringSignals.ipynb)</p>
[4. Código de programación del filtrado en Google Colab](https://colab.research.google.com/drive/15u-UyS5ebRgpkwa1JFneBlgCbcg1GJKp?usp=sharing)</p>

## **Conclusiones** <a name="id14"></a>
- 

## **Referencias** <a name="id15"></a>
1. “A-15 Dispositivos y Circuitos Electrónicos II Ingeniería Electrónica Filtros Activos.” Available: https://www.fceia.unr.edu.ar/dce2/Files/Apuntes/FILTROS ACTIVOS - Notas de Clase (v-2019-1).pdf
2. D. Filtros, L. Martínez, A. Gómez, J. Serrano, J. Vila, and Gómez, “2.1,” 2009. Available: http://ocw.uv.es/ingenieria-y-arquitectura/filtros-digitales/tema_2._revision_de_los_tipos_de_filtros_analogicos_mas_comunes.pdf
3. Introducción a Señales Biomédicas. "Guía de Laboratorio 07".
4. J. Manuel and M. De La Rosa, “FUNDAMENTOS TEÓRICOS 7 FUNDAMENTOS TEÓRICOS 1.1. FUNDAMENTOS TEÓRICOS: FILTROS.” Accessed: May 03, 2023. [Online]. Available: https://biblus.us.es/bibing/proyectos/abreproy/11375/fichero/MEMORIA%252FFundamentos+teoricos.pdf
5. Gerardo Tibamoso Pedraza, “Reducción de interferencias en señales ECG mediante filtros digitales IIR,” Ingeniería Investigación y Desarrollo: I2+D, vol. 5, no. 2, pp. 33–40, 2023, doi: https://dialnet.unirioja.es/descarga/articulo/6096156.pdf.
