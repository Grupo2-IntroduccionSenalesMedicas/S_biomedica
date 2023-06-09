# **Laboratorio 5: Electroencefalograma**
### Fecha: 19/04/2023

# **Tabla de contenidos**
1. [Introducción al laboratorio](#id0)\
1.1 [¿Qué es EEG?](#id1)\
1.2 [Aplicaciones](#id2)\
1.3 [Tipos de medición de EEG](#id3)\
1.4 [¿De qué forma obtenemos la señal?](#id4)
2. [Objetivos](#id5)
3. [Materiales y equipos](#id6)
4. [Procedimiento](#id7)\
4.1 [Medición y Adquisición por electrodos](#id8)\
4.2 [Protocolo de adquisición](#id9)
5. [Resultados](#id10)\
5.1 [Fotos de conexión usada](#id11)\
5.2 [Señal con MarckOpenBCI4](#id12)\
    5.2.1 [Gráficas del OpenBCI](#id13)\
5.3 [Señal con Bitalino](#id14)\
    5.3.1 [Videos utilizando el Bitalino](#id15)\
    5.3.2 [Análisis de gráficas](#id16)
6. [Conclusiones](#id17)
7. [Referencias](#id18)

## **Introducción al laboratorio** <a name="id0"></a>

<p align="center"> <img src="https://i.imgur.com/Uup0v26.png" width="50%" /></p>
<p align="center"> Figura 1. Actividad cerebral.[7]</p>

### ¿Qué es EEG? <a name="id1"></a>
<p align="justify"> El electroencefalograma (EEG) es un procedimiento de estudio de actividad electrica cerebral producida por la interfaz de
neuronas en el cerebro y la interacción de dichas neuronas produciendo señales electroquímicas.[1] </p>

<p align="center"> 
    
| **_Tipos de Frecuencia de Ondas Cerebrales_** | **_Frecuencia (Hz)_** |Estado del cerebro|
|:---------------------------------------------:|:---------------------:|:------------:|
|                     Delta                     |      0.50 - 4.00      |Dormir|
|                     Theta                     |      4.00 - 8.00      |Relajamiendo profundo y estar enfocado |
|                     Alpha                     | 8.00 - 13.00          |Muy relajado y atento|
|                      Beta                     | 13.00 - 22.00         |Ansioso,activo|
|                     Gamma                     | 22.00 - 30.00         |Concentrado|

</p>
    
-**Delta** : el ritmo delta se observa fisiológicamente en el sueño profundo y es prominente en las regiones frontocentrales de la cabeza. El ritmo delta patológico se presenta en estados de vigilia en caso de encefalopatía generalizada y disfunción cerebral focal.</p>
-**Theta**: este es el ritmo provocado por la somnolencia y las primeras etapas del sueño, como N1 y N2. Es más prominente en las regiones frontocentrales de la cabeza y migra lentamente hacia atrás reemplazando el ritmo alfa debido a la somnolencia temprana. Los estados emocionales elevados también pueden mejorar el ritmo theta rítmico frontal en niños y adultos jóvenes. La actividad theta focal durante los estados de vigilia sugiere una disfunción cerebral focal.</p>
-**Alfa**: el ritmo alfa dominante posterior está presente de forma característica en los registros de EEG normales despiertos en la región occipital de la cabeza. Es la característica definitoria del ritmo de fondo normal de la grabación de EEG de adultos. El ritmo posterior alcanza el rango alfa de 8 Hz a la edad de 3 años y no decae incluso hasta la novena década de vida en individuos sanos. En la población normal se observan variantes rápidas del ritmo alfa de fondo. La ralentización del ritmo alfa de fondo se considera un signo de disfunción cerebral generalizada.</p>
-**Beta**:el ritmo Beta es el ritmo que se observa con mayor frecuencia en adultos y niños normales. Es más prominente en las regiones frontal y central de la cabeza y se atenúa a medida que avanza hacia atrás. La amplitud de la actividad beta suele ser de 10 a 20 microvoltios, que rara vez aumenta por encima de los 30 microvoltios. </p>
-**Gamma**:Se encuentra en al clasificación de ondas de alta frecuencia. La importancia de los ritmos gamma en una gran variedad de funciones cognitivas ha sido bien establecidaPueden ayudar en la detección temprana de desmielinización y otros trastornos de la integridad cortical.[6]</p>

<p align="center"> <img src="https://i.imgur.com/VJE3Qq9.png" width="60%" /> </p>
<p align="center"> Figura 2. Clasificación de onda.[7]</p>

### Aplicaciones <a name="id2"></a>
---
<p align="justify"> Las ondas cerebrales pueden ser estudiadas gracias a la colocación específica de electrodos por métodos no invasivos e invasivos en el cuero cabelludo. Estos se utilizan para diagnosticar los trastornos como el Alzheimer Parkinson enfermedad mental, tumores cerebrales, demencia y epilepsia, trastornos y cambios en el patrón del sueño, etc. [2]</p>
<p align="center"> <img src="https://i.imgur.com/5Nirdvp.png" width="60%" /></p>
<p align="center"> Figura 3. Aplicación clínica del EEG.</p>

### Tipos de medición de EEG <a name="id3"></a>
___
Según la configuración del montaje de los electrodos, se pueden clasificar en tres tipos:

- Monopolar: En este tipo se registran las diferencias de potencial entre los electrodos ubicados en las zonas de interés y un electrodo de referencia. Este último se coloca generalmente en la oreja, la cual es una zona que refleja la menor actividad posible.
- Bipolar: Los electrodos son situados en diferentes zonas de interés y se adquieren diferencias de potenciales entre ellos.
- Laplaciana: Al igual que el primer tipo, se obtienen los valores con electrodos en zonas de interés (activos) y uno de referencia; sin embargo, la referencia viene a ser el promedio de varios electrodos posicionados alrededor del electrodo activo. Esto puede realizarse tanto de forma analógica como de forma digital.
<p align="center"> <img src="https://i.imgur.com/qgZ7UsC.jpg" width="60%" /></p>
<p align="center"> Figura 4. Montaje para registro: (a) Monopolar (b) Bipolar.[5]</p>


### ¿De qué forma obtenemos la señal? <a name="id4"></a>
---
En el presente laboratorio se utilizará el Ultracortex Mark IV EEG 
    
## **Objetivos** <a name="id5"></a>
- Establecer un conocimiento teórico y práctico sobre la utilización y adquisición de señales EEG.
- Adquirir señales EEG biomédicas

---

## **Materiales y equipos** <a name="id6"></a>

<center>
    
|  **Modelo**  | **Descripción** | **Cantidad** |
|:------------:|:---------------:|:------------:|
| (R)EVOLUTION |  Kit BITalino   |      1       |
|      -       |     Laptop      |      1       |
|      OpenBCI       |     Ultracortex Mark IV EEG Headset      |      1       |
|      OpenBCI       |     OpenBCI Cyton 8-channel Board      |      1       |
|      Inkafarma       |     Electrodos con gel      |      3       |

</center>

## **Procedimiento** <a name="id7"></a>

### **Medición y Adquisición por electrodos** <a name="id8"></a>
De manera general, los métodos de adquisición de señales EEG diseñados en el presente laboratorio utilizarán el estándar de posicionamiento 10/20 el cual se describe a continuación:

<p align="center"> Sistema 10/20 <img src="https://i.imgur.com/0O6KnqV.jpg" width="100%" /> </p>
<p align="center"> Figura 5. Distribución de electrodos. [8] </p>

**Tipo de electrodo:** El electrodo del Bitalino es un sensor bipolar (conjuntos de dos pines de medición más una referencia) que mide las diferencias de potencial entre dos electrodos adyacente.Algunas consideraciones son:</p>
    - La alta amplificación (ganancia=40000) lo hace muy sensible a los artefactos circundantes como la luz, los movimientos y las fuentes de alimentación (ruido de línea de 50/60 Hz).</p>
    - La señal medida es la diferencia amplificada entre las dos señales de medición, que se filtra con un paso de banda de 0,8 a 48 Hz para eliminar las señales comunes no deseadas.</p>
    - La piel debe estar debidamente preparada antes de la adherencia de los electrodos.Para ello, es necesario una desinfección de la piel para eliminar las partículas viejas así como la eliminación del vello.



### **Protocolo de adquisición** <a name="id9"></a>
La adquisición y medición de señal EEG  en BITalino es un proceso que implica la utilización de un dispositivo de adquisición de datos llamado BITalino y el conjunto de sensores EEG los cuales son capaces de adquirir señales bioeléctricas del cerebro y convertirlas en señales digitales que pueden ser analizadas por el software especializado OpenSignal. A continuación se detalla el procedimiento realizado para la adquisición y medición de la señal:

1. **Posición de electrodo bipolar (fp1-fp2)**
    <p align="center"> <img src="https://i.imgur.com/8IGiiIx.png" width="50%" /></p>
    
    <p align="center"> Figura 6. Colocación de electrodos EEG del Bitalino. </p>

2. **Adquisición de datos**
    1. Abrir el software OpenSignals y conectar el Bitalino
    2. Conectar el sensor EEG al canal especificado del Bitalino según la ficha técnica.
    3. Colocar los electrodos húmedos con el debido gel en los pines de los sensores EEG.
    4. Colocar los electrodos instalados en la zona fp1 y fp2 de la cabeza del participante. Tener en cuenta las recomendaciones del tipo de electrodo detallado en la sección anterior.
    5. Color el electrodo de referencia en la zona interoposterior de la oreja.
    6. Empezar con el procedimiento de registro:</p>
        a. Registrar una línea base de señal con poco ruido y sin movimientos (respiración normal,sin movimientos oculares/ojos cerrados) durante 30 segundos.</p>
        b.  Repetir un ciclo de OJOS ABIERTOS - OJOS CERRADOS cinco veces, manteniendo ambasfases durante cinco segundos.</p>
        c. Registre otra fase de referencia de 30 segundos (paso 1).</p>
        d. Que uno de tus compañeros lea en voz alta una serie de ejercicios matemáticos (verindicaciones abajo) y resuelve cada uno de ellos mentalmente enfocando tu mirada en unpunto específico para evitar artefactos.</p>
        <p align="center"> <img src="https://i.imgur.com/Ulv3Rrn.jpg" width="100%" /></p>
        <p align="center"> Figura 7. Preguntas de distinta complejidad. </p>
        e. Detenga la grabación y guarde sus datos.</p>
    7. Como una adquisición extra de señales, seguir los siguientes pasos:</p>
        a. Vendar los ojos al sujeto de estudio por 30 segundos.</p>
        b. Usar una luz intermitente y ver la reacción de la vista del sujeto.</p>
        c. Recolectar las señales y guardar la información.</p>


Cabe mencionar que el procedimiento se repitió en diferentes sujetos de estudio.

 
## **Resultados** <a name="id10"></a>
___
### 1. **Fotos de conexión usada** <a name="id11"></a>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable5/IMG_20230419_112630.jpg" width=60%></p>
<p align="center">Figura 8. Posición de los electrodos en el Bitalino (vista frontal).</p>

<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable5/IMG_20230419_112617.jpg" width=60% ></p>

<p align="center">Figura 9. Posición de los electrodos en el vitalino (vista lateral).</p>

<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable5/IMG_20230419_115212.jpg" width="400" height="600"></p>
<p align="center">Figura 10. Posición de los electrodos del ULTRACORTEX "MARK IV" (vista posterior).</p>

<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable5/IMG_20230419_115202.jpg" width="400" height="600"></p>
<p align="center">Figura 11. Posición de los electrodos del ULTRACORTEX "MARK IV" (vista posterior).</p>

### 2. **Señal con MarckOpenBCI4** <a name="id12"></a>

#### **Videos con Ultracortex "Mark IV** <a name="id13"></a>

|                 **Fase**                 | **Video** |
|:------------------------------------------:|:---------:|
| **Fase de referencia de 30 segundos**                     |<video src="https://user-images.githubusercontent.com/128627001/233262542-abe3f2d1-9a1c-4e73-bcf2-d244204a3a26.mp4">|
| **Realizando secuencia de OJOS ABIERTOS - OJOS CERRADOS** |<video src="https://user-images.githubusercontent.com/128627001/233263555-8cf4f756-8c59-486e-9940-6db5c5b835cc.mp4">|
|                **Respondiendo preguntas categoría simple** |<video src="https://user-images.githubusercontent.com/128627001/233265792-14ec51f3-7390-4b74-82d9-f2054a0887cf.mp4">|
|                **Respondiendo preguntas categoría compleja (parte 1)** |<video src="https://user-images.githubusercontent.com/128627001/233266949-0d0af3dc-0e56-472a-ab08-0d0c0a24689f.mp4">|
|                **Respondiendo preguntas categoría compleja (parte 2)** |<video src="https://user-images.githubusercontent.com/128627001/233267165-a7fe473c-ae95-4366-bc09-a43da290e3de.mp4">|  

####  **Gráficas del OpenBCI**

<p align="center"><img src="/ISB/Laboratorios/Imagenes/FP1-FP3/1.jpg" width="100%"></p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/FP1-FP3/2.jpg" width="100%"></p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/FP1-FP3/3.jpg" width="100%"></p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/FP1-FP3/4.jpg" width="100%"></p>

<p align="justify">Si analizamos los canales, estos guardan relación con la ubicación 10/20 de un EEG, los canales que van del Fp1-F3-C3-P3-O1 corresponden al hemisferio izquierdo y los canales Fp2-F4-C4-P4-O2 al hemisferio derecho.
Podemos observar que el canal 5 y 6 contiene una mayor amplitud que el resto, estos se encuentran ubicados en el lóbulo frontal derecho, cabe resaltar que el hemisferio derecho izquierdo  lobulo frontal se encarga del pensamiento consciente, atención e inteligencia [9], por ello en los ultimos segundos cuando se empezo a desarrollar la ronde de preguntas se ve un mayor incremento en la amplitud.</p> 
Un caso contrario ocurrió para el canal 1 y 2 donde se observa una mínima amplitud, estos corresponden al FP1-F3-C3 los cuáles se ubican en el lóbulo frontal izquierdo.</p>

<p align="center"><img src="https://i.imgur.com/0MHKduk.png" width="70%"></p>
<p align="center">Figura 12. Explicación de lo que se encarga el hemisferio derecho e izquierdo. [10]</p>

<p align="center"><img src="https://i.imgur.com/I3K4YSs.jpg" width="100%"></p>   
<p align="center">Figura 13. Frecuencias de los 8 canales.</p>

### 3. **Señal con Bitalino** <a name="id14"></a>
####  **Videos utilizando el Bitalino** <a name="id15"></a>
|                 **Fase**                 | **Video** |
|:------------------------------------------:|:---------:|
| **Fase de referencia de 30 segundos**                     |<video src="https://user-images.githubusercontent.com/128627001/233433130-74e1f631-57b8-41d9-8dc4-dcd53a9f2d0f.mp4">|
| **Realizando secuencia de OJOS ABIERTOS - OJOS CERRADOS** |<video src="https://user-images.githubusercontent.com/128627001/233433248-e4648f16-ceac-4c42-b650-0853c8717613.mp4">|
|                **Respondiendo preguntas categoría simple** |<video src="https://user-images.githubusercontent.com/128627001/233433318-5b2c0ddb-5e23-4794-8f56-6cc35eefba0e.mp4">|
|                **Respondiendo preguntas categoría compleja** |<video src="https://user-images.githubusercontent.com/128627001/233433394-42610a9a-4101-4d07-a59d-6cc748af243c.mp4">|
|                **Reacción a la luz artificial** |<video src="https://user-images.githubusercontent.com/128627001/233433534-2aebb116-354d-4ba0-9717-40c2a81b055b.mp4">|
####  **Análisis de las gráficas** <a name="id16"></a>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable5/S1.png" width="100%"></p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable5/S2.png" width="100%"></p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable5/S3.png" width="100%"></p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable5/S4.png" width="100%"></p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable5/S5.png" width="100%"></p>

En el Bitalino, al realizar la medición, trabajan con un sensor de EEG el cuál brinda la señal medida como la diferencia amplificada entre las dos señales de medición que se filtra con un paso de banda de 0,8-48Hz para eliminar la señales no deseadas.[3]
Asimismo, al considerar la posición de los electrodos del Bitalino los cuales fueron en fp1 y fp2, estas regiones están relacionadas con diversas funciones cognitivas y emocionales.
De las 5 gráficas la que tiene mayor amplitud es en la que se expone al sujeto a una luz parpadeante luego de tener los ojos vendados por un periodo de tiempo.


## **Conclusiones** <a name="id17"></a>
---
- Las oscilaciones de la banda delta están presentes en diferentes fases del sueño. Las ondas theta están asociadas con el área frontal del cerebro y se correlacionan con tareas de metal e indican un mayor poder de banda con mayor dificultad de tarea. Las oscilaciones de la banda alfa reflejan funciones relacionadas con la memoria, el motor y los sentidos.La relajación durante la vigilia puede desencadenar un aumento de la potencia de la banda alfa cuando los ojos están cerrados. En comparación, las ondas alfa se suprimen al abrir los ojos y la actividad física o mental.
Las ondas beta se generan en las regiones posterior y frontal. se correlacionan con pensamiento activo y concentración. Con mayor concentración, las oscilaciones beta se disparan en una frecuencia más rápida. 
- Con respecto al bitalino, la mayor amplitud en las señales EEG durante la exposición a la luz parpadeante después de tener los ojos vendados podría deberse a la respuesta de frecuencia de parpadeo y la mayor sensibilidad del sistema visual debido a la privación sensorial previa.
    
## **Referencias** <a name="id18"></a>
1.  J. M. Kumar and V. K. Mittal, "EEG Data Acquisition System and Analysis of EEG Signals," 2021 2nd International Conference for Emerging Technology (INCET), Belagavi, India, 2021, pp. 1-5, doi: 10.1109/INCET51464.2021.9456431.</p>
2.   Tomasz Piotrowski, Jan Nikadon, Alexander Moiseev c, “Localization of brain activity from EEG/MEG using MV-PURE framework”, Biomedical Signal Processing and control, Elsevier, 21st,oct,2020,pp- 1-14.</p>
3.   BITalino, “BITalino HOME-GUIDE #3 ELECTROENCEPHALOGRAPHY (EEG) Exploring Brain signals” 2020 Accessed: Apr. 19, 2023. [Online]. Available from:https://bitalino.com/storage/uploads/media/homeguide3-eeg.pdf </p>
4.   D. De Electrotecnia, A. Noelia, and B. Cicchino, “UNIVERSIDAD NACIONAL DE LA PLATA FACULTAD DE INGENIERÍA Tesis presentada para la obtención del grado de MAGISTER EN INGENIERÍA.” Available: http://sedici.unlp.edu.ar/bitstream/handle/10915/32602/Documento_completo__.pdf?sequence=3&isAllowed=y</p>
5. D. De Electrónica, “UNIVERSIDAD DE ALCALÁ Tema 5 Electroencefalografía.” Available: http://www.hca.es/huca/web/enfermeria/html/f_archivos/electroencefalografia.pdf?fbclid=IwAR3phj1ifwaCuPO8-udtqTg3AEHP716M-DzemN_ohP1RP7v9dXYLeBK76wQ</p>
6. C. S. Nayak and A. C. Anilkumar, “EEG Normal Waveforms,” Nih.gov, Jan. 21, 2023. https://www.ncbi.nlm.nih.gov/books/NBK539805/#:~:text=However%2C%20the%20most%20frequently%20used,beta%20(13%20to%2030Hz) (accessed Apr. 19, 2023).</p>
7. Priyanka A. Abhang, Bharti W. Gawali, Suresh C. Mehrotra, "Chapter 2 - Technological Basics of EEG Recording and Operation of Apparatus", Introduction to EEG- and Speech-Based Emotion Recognition, Academic Press, 2016, pp. 19-50, doi: 10.1016/B978-0-12-804490-2.00002-6.</p>
‌8. AnestesiaR, “Electroencefalografí­a en Cuidados Crí­ticos,” AnestesiaR, Sep. 28, 2012. https://anestesiar.org/2012/electroencefalografia-en-cuidados-criticos/ (accessed Apr. 20, 2023).</p>
‌9. “Cerebral Cortex: What It Is, Function & Location,” Cleveland Clinic, 2022. https://my.clevelandclinic.org/health/articles/23073-cerebral-cortex (accessed Apr. 20, 2023).</p>
‌10. “Left and Right Hemisphere of the Brain | Functions & Characteristics,” The Human Memory, Oct. 29, 2019. https://human-memory.net/left-and-right-hemisphere-of-the-brain/ (accessed Apr. 20, 2023).
‌
‌

