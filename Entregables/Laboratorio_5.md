# **Laboratorio 5: Electroencefalograma**
### Fecha: 19/04/2023

# **Tabla de contenidos**
1. [Introducción al laboratorio](#id)
    1.1 [¿Qué es EEG?](#id)
    1.2 [Aplicaciones](#id)
    1.3 [¿De qué forma obtenemos la señal?](#id)</p>
2. [Objetivos](#id)
3. [Materiales y equipos](#id)
4. [Procedimiento](#id)
    4.1 [Medición y Adquisición](#id)
    4.2 [Preprocesamiento](#id)
    4.3 [Canales y Análisis](#id)
5. [Resultados](#id)
    5.1 [Archivos](#id)</p>
6. [Conclusiones](#id)
7. [Referencias](#id)

## **Introducción al laboratorio** <a name="id0"></a>

<center><img src="https://i.imgur.com/Uup0v26.png" width="50%" /></center>

### ¿Qué es EEG? <a name="id"></a>
<p align="justify"> El electroencefalograma (EEG) es un procedimiento de estudio de actividad electrica cerebral producida por la interfaz de
neuronas en el cerebro y la interacción de dichas neuronas produciendo señales electroquímicas.[1] </p>

<center>
    
| **_Tipos de Frecuencia de Ondas Cerebrales_** | **_Frecuencia (Hz)_** |Estado del cerebro|
|:---------------------------------------------:|:---------------------:|:------------:|
|                     Delta                     |      0.50 - 4.00      |Dormir|
|                     Theta                     |      4.00 - 8.00      |Relajamiendo profundo y estar enfocado |
|                     Alpha                     | 8.00 - 13.00          |Muy relajado y atento|
|                      Beta                     | 13.00 - 22.00         |Ansioso,activo|
|                     Gamma                     | 22.00 - 30.00         |Concentrado|

</center>
    
-**Delta** : el ritmo delta se observa fisiológicamente en el sueño profundo y es prominente en las regiones frontocentrales de la cabeza. El ritmo delta patológico se presenta en estados de vigilia en caso de encefalopatía generalizada y disfunción cerebral focal.</p>
-**Theta**: este es el ritmo provocado por la somnolencia y las primeras etapas del sueño, como N1 y N2. Es más prominente en las regiones frontocentrales de la cabeza y migra lentamente hacia atrás reemplazando el ritmo alfa debido a la somnolencia temprana. Los estados emocionales elevados también pueden mejorar el ritmo theta rítmico frontal en niños y adultos jóvenes. La actividad theta focal durante los estados de vigilia sugiere una disfunción cerebral focal.</p>
-**Alfa**: el ritmo alfa dominante posterior está presente de forma característica en los registros de EEG normales despiertos en la región occipital de la cabeza. Es la característica definitoria del ritmo de fondo normal de la grabación de EEG de adultos. El ritmo posterior alcanza el rango alfa de 8 Hz a la edad de 3 años y no decae incluso hasta la novena década de vida en individuos sanos. En la población normal se observan variantes rápidas del ritmo alfa de fondo. La ralentización del ritmo alfa de fondo se considera un signo de disfunción cerebral generalizada.</p>
-**Beta**:el ritmo Beta es el ritmo que se observa con mayor frecuencia en adultos y niños normales. Es más prominente en las regiones frontal y central de la cabeza y se atenúa a medida que avanza hacia atrás. La amplitud de la actividad beta suele ser de 10 a 20 microvoltios, que rara vez aumenta por encima de los 30 microvoltios. </p>
-**Gamma**:Se encuentra en al clasificación de ondas de alta frecuencia. La importancia de los ritmos gamma en una gran variedad de funciones cognitivas ha sido bien establecidaPueden ayudar en la detección temprana de desmielinización y otros trastornos de la integridad cortical.[6]</p>

<center><img src="https://i.imgur.com/VJE3Qq9.png" width="60%" /></center></p>

<center>Figura 1. Clasificación de onda.[7]</center></p>

### Aplicaciones <a name="id"></a>

---
<p align="justify"> Las ondas cerebrales pueden ser estudiadas gracias a la colocación específica de electrodos por métodos no invasivos e invasivos en el cuero cabelludo. Estos se utilizan para diagnosticar los trastornos como el Alzheimer Parkinson enfermedad mental, tumores cerebrales, demencia y epilepsia, trastornos y cambios en el patrón del sueño, etc. [2]</p>
<center><img src="https://i.imgur.com/5Nirdvp.png" width="60%" /></center></p>

### Tipos de medición de EEG <a name="id"></a>
___
Según la configuración del montaje de los electrodos, se pueden clasificar en tres tipos:

- Monopolar: En este tipo se registran las diferencias de potencial entre los electrodos ubicados en las zonas de interés y un electrodo de referencia. Este último se coloca generalmente en la oreja, la cual es una zona que refleja la menor actividad posible.
- Bipolar: Los electrodos son situados en diferentes zonas de interés y se adquieren diferencias de potenciales entre ellos.
- Laplaciana: Al igual que el primer tipo, se obtienen los valores con electrodos en zonas de interés (activos) y uno de referencia; sin embargo, la referencia viene a ser el promedio de varios electrodos posicionados alrededor del electrodo activo. Esto puede realizarse tanto de forma analógica como de forma digital.
<center><img src="https://i.imgur.com/qgZ7UsC.jpg" width="60%" /></center></p>
<center>Figura 2. Montaje para registro: (a) Monopolar (b) Bipolar.[5] </center></p>


### ¿De qué forma obtenemos la señal? <a name="id"></a>

---
En el presente laboratorio se utilizará el Ultracortex Mark IV EEG 
    
## **Objetivos** <a name="id"></a>
- Establecer un conocimiento teórico y práctico sobre la utilización y adquisición de señales EEG.
- Adquirir señales EEG biomédicas

---

## **Materiales y equipos** <a name="id2"></a>

<center>
    
|  **Modelo**  | **Descripción** | **Cantidad** |
|:------------:|:---------------:|:------------:|
| (R)EVOLUTION |  Kit BITalino   |      1       |
|      -       |     Laptop      |      1       |
|      OpenBCI       |     Ultracortex Mark IV EEG Headset      |      1       |
|      OpenBCI       |     OpenBCI Cyton 8-channel Board      |      1       |
|      Inkafarma       |     Electrodos con gel      |      3       |

</center>

## **Procedimiento** <a name="id"></a>

### Medición y Adquisición <a name="id"></a>
De manera general, los métodos de adquisición de señales EEG diseñados en el presente laboratorio utilizarán el estándar de posicionamiento 10/20 el cual se describe a continuación:

<center> Sistema 10/20 <img src="https://i.imgur.com/0O6KnqV.jpg" width="100%" />
Figura 2. Distribución de electrodos.
    
[https://anestesiar.org/2012/electroencefalografia-en-cuidados-criticos/]</center>

---
#### Adquisición y medición de señal EEG con OpenBCI


---
#### Adquisición y medición de señal EEG en bitalino
1. **Tipo de electrodo:** El electrodo del Bitalino es un sensor bipolar (conjuntos de dos pines de medición más una referencia) que mide las diferencias de potencial entre dos electrodos adyacente.Algunas consideraciones son:

    * La alta amplificación (ganancia=40000) lo hace muy sensible a los artefactos circundantes como la luz, los movimientos y las fuentes de alimentación (ruido de línea de 50/60 Hz).
    * La señal medida es la diferencia amplificada entre las dos señales de medición, que se filtra con un paso de banda de 0,8 a 48 Hz para eliminar las señales comunes no deseadas.
    * La piel debe estar debidamente preparada antes de la adherencia de los electrodos.Para ello, es necesario una desinfección de la piel para eliminar las partículas viejas así como la eliminación del vello.



2. **Protocolo de adquisición**
La adquisición y medición de señal EEG  en BITalino es un proceso que implica la utilización de un dispositivo de adquisición de datos llamado BITalino y el conjunto de sensores EEG los cuales son capaces de adquirir señales bioeléctricas del cerebro y convertirlas en señales digitales que pueden ser analizadas por el software especializado OpenSignal. A continuación se detalla el procedimiento realizado para la adquisición y medición de la señal:

2.1 **Posición de electrodo bipolar (fp1-fp2)**
    ![Colocación de electrodos EEG del Bitalino (posición fp1,fp2 en sistema 10-20)](https://i.imgur.com/8IGiiIx.png)
    
2.2 **Adquisición de datos**
    1. Abrir el software OpenSignals y conectar el Bitalino
    2. Conectar el sensor EEG al canal especificado del Bitalino según la ficha técnica.
    3. Colocar los electrodos húmedos con el debido gel en los pines de los sensores EEG 
    4. Colocar los electrodos instalados en la zona fp1 y fp2 de la cabeza del participante. Tener en cuenta las recomendaciones del tipo de electrodo detallado en la sección anterior
    5. Color el electrodo de referencia en la zona interoposterior de la oreja
    6. Empezar con el procedimiento de registro</p>
    6.1 Registrar una línea base de señal con poco ruido y sin movimientos (respiración normal,sin movimientos oculares/ojos cerrados) durante 30 segundos.</p>
    6.2 Repetir un ciclo de OJOS ABIERTOS - OJOS CERRADOS cinco veces, manteniendo ambasfases durante cinco segundos.</p>
    6.3 Registre otra fase de referencia de 30 segundos (paso 1).</p>
    6.4 Que uno de tus compañeros lea en voz alta una serie de ejercicios matemáticos (verindicaciones abajo) y resuelve cada uno de ellos mentalmente enfocando tu mirada en unpunto específico para evitar artefactos.</p>
     ![](https://i.imgur.com/Ulv3Rrn.jpg)
     6.5 Detenga la grabación y guarde sus datos.</p>
    7. Como una adquisición extra de señales, seguir los siguientes pasos:</p>
    7.1 Vendar los ojos al sujeto de estudio por 30 segundos.</p>
    7.2 Usar una luz intermitente y ver la reacción de la vista del sujeto.</p>
    7.3 Recolectar las señales y guardar la información.</p>


Cabe mencionar que el procedimiento se repitió en diferentes sujetos de estudio.

### Canales y Análisis <a name="id"></a>

--- 
 
## **Resultados** <a name="id"></a>
___
1. Fotos de conexión usada  
    - 
2. Señal con MarckOpenBCI4
    - 

### Archivos <a name="id"></a>

---

## **Conclusiones** <a name="id"></a>
- 
---

## **Referencias** <a name="id"></a>
1.  J. M. Kumar and V. K. Mittal, "EEG Data Acquisition System and Analysis of EEG Signals," 2021 2nd International Conference for Emerging Technology (INCET), Belagavi, India, 2021, pp. 1-5, doi: 10.1109/INCET51464.2021.9456431.
2.   Tomasz Piotrowski, Jan Nikadon, Alexander Moiseev c, “Localization of brain activity from EEG/MEG using MV-PURE framework”, Biomedical Signal Processing and control, Elsevier, 21st,oct,2020,pp- 1-14
3.   BITalino, “BITalino HOME-GUIDE #3 ELECTROENCEPHALOGRAPHY (EEG) Exploring Brain signals” 2020 Accessed: Apr. 19, 2023. [Online]. Available from:https://bitalino.com/storage/uploads/media/homeguide3-eeg.pdf
4.   D. De Electrotecnia, A. Noelia, and B. Cicchino, “UNIVERSIDAD NACIONAL DE LA PLATA FACULTAD DE INGENIERÍA Tesis presentada para la obtención del grado de MAGISTER EN INGENIERÍA.” Available: http://sedici.unlp.edu.ar/bitstream/handle/10915/32602/Documento_completo__.pdf?sequence=3&isAllowed=y
5. D. De Electrónica, “UNIVERSIDAD DE ALCALÁ Tema 5 Electroencefalografía.” Available: http://www.hca.es/huca/web/enfermeria/html/f_archivos/electroencefalografia.pdf?fbclid=IwAR3phj1ifwaCuPO8-udtqTg3AEHP716M-DzemN_ohP1RP7v9dXYLeBK76wQ
6. C. S. Nayak and A. C. Anilkumar, “EEG Normal Waveforms,” Nih.gov, Jan. 21, 2023. https://www.ncbi.nlm.nih.gov/books/NBK539805/#:~:text=However%2C%20the%20most%20frequently%20used,beta%20(13%20to%2030Hz) (accessed Apr. 19, 2023).
7. Priyanka A. Abhang, Bharti W. Gawali, Suresh C. Mehrotra, "Chapter 2 - Technological Basics of EEG Recording and Operation of Apparatus", Introduction to EEG- and Speech-Based Emotion Recognition, Academic Press, 2016, pp. 19-50, doi: 10.1016/B978-0-12-804490-2.00002-6.
‌
‌
