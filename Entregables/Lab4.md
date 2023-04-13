# **LABORATORIO 4: – USO DE BiTalino PARA ECG**
Fecha: 12-04-2023


# **Tabla de contenidos**
1. [Introducción](#id0)
2. [Objetivos](#id1)
3. [Materiales y equipos](#id2)
4. [Procedimiento](#id3)
5. [Resultados](#id4)\
     4.1 [Conexión usada](#id5)\
     4.2 [Video de la señal](#id6)\
     4.3 [Ploteo de la señal en OpenSignal](#id7)\
     4.4 [Archivos](#id8)\
     4.5 [Ploteo de la señal en Python](#id9)
6. [Conclusiones](#id10)
7. [Referencias](#id11)

## **Introducción al laboratorio** <a name="id0"></a>
---
<p align="justify">Un electrocardiograma (ECG) es un procedimiento sencillo, sin dolor y de rápida ejecución que registra la actividad eléctrica del corazón. Cada vez que el corazón late, una señal eléctrica recorre su músculo cardíaco, estimulando las cuatro cámaras para que se contraigan al ritmo adecuado y bombeen sangre a todo el cuerpo. El electrocardiograma se usa para ayudar a diagnosticar y monitorear enfermedades del corazón tales como:

* Arritmia
* Cardiomiopatía
* Enfermedad de las arterias coronarias
* Enfermedades cardiovasculares

<p align="justify"> En base a lo mencionado anteriormente,el presente laboratorio presenta el uso de la placa de desarrollo Bitalino para obtener señales de electrocardiograma (ECG) de interés. La placa Bitalino es una herramienta innovadora que nos permitirá registrar y analizar la actividad eléctrica del corazón de forma no invasiva y en tiempo real.</p>
A través de esta experiencia práctica, se espera  aprender sobre la obtención y análisis de señales ECG, así como familiarizarse con los procedimientos y protocolos de utilización de electrodos ECG.</p>

### Señal de ECG </p>
Con respecto a la teoría de una señal de ECG, se puede diferenciar entre 3 fases:

<p align="center"><img src="/Imagenes/entregable4/du.png" width="600" height="400"></p>
<p align="center"><img src="/Imagenes/Bitalino/intervalos_ecg.png" width="600" height="400"></p>
<p align="center">Figura 1. Intervalos y segmentos de ECG.[5] </p>

### ELECTROCARDIOGRAMA</p>
Es la representación visual de la actividad eléctrica del corazón en función del tiempo, que se obtiene, desde la superficie corporal, en el pecho, con un electrocardiógrafo en forma de cinta continua.

Dicha actividad eléctrica está registrada hasta con 12 derivaciones, lo cual permite reconstruir mejor la actividad cardiaca en el plano frontal y horizontal [6].
Las desviaciones para el plano frontal son las derivadas de extremidades estándar (I, II, III) y las derivaciones de extremidades aumentadas (aVR, aVL, aV) 
Extremidades estándar (I, II, III): 
* I ⇒ Mano derecha (-) y  la mano izquierda(+)
* II ⇒ Mano derecha (-) y Pierna izquierda(+)
* III ⇒Mano izquierda(-) y pierna izquierda(+) </p>

Derivaciones de extremidades aumentadas (aVR, aVL, aVF):</p>
Consta de 3 conexiones, dos de ellas van al terminal negativo del EGK, mediante una resistencia eléctrica y la otra al terminal positivo:
Si el terminal positivo es:
* En el brazo derecho ⇒  aVR
* En el brazo izquierdo  ⇒ aVL 
* En la pierna izquierda  ⇒ aVF (La señal es invertida)
<p align="center"><img src="/Imagenes/entregable4/deri.png" width="300" height="300"></p>
<p align="center">Figura 2. Derivaciones.[6] </p>


## **Objetivos** <a name="id1"></a>
---
Los objetivos del laboratorio son:
* Adquirir señales biomédicas de ECG.
* Hacer una correcta configuración de BiTalino.
* Extraer la información de las señales ECG del software OpenSignals (r)evolution 


## **Materiales y equipos** <a name="id2"></a>
---

<div align="center">

|  **Modelo**  | **Descripción** | **Cantidad** |
|:------------:|:---------------:|:------------:|
| (R)EVOLUTION |   Kit BITalino  |       1      |
|       -      |      Laptop     |       1      |

</div>

## **Procedimiento** <a name="id3"></a>

1. Preparación de la piel: se lavo con agua y jabón la zona en la que se colocaron los electrodos. Posteriormente, se seco cuidadosamente para eliminar todo residuo de agua
2. Ubicación de los electrodos: para ello se uso la configuración bipolar [3]. Primero se colocaron los electrodos y luego se conectaron al bitalino
     <p align="center"><img src="/Imagenes/Bit-ECG/UbicacionBitalino.png" width="600" height="300"></p>
     <p align="center">Figura 2. Colocación de electrodos para el plomo I: IN+ (rojo) e IN-(negro) en las muñecas y REF (blanco) en la cresta ilíaca [3].

3. Registro de la señal ECG: Se grabó la señal en 3 momentos
     * Estado basal
     * Respiración prolongada: 10 segundos de inspiración y 10 segundos de espiración
     * Ejercicio intenso: lectura posterior 4 minutos de burpees

https://user-images.githubusercontent.com/43428232/231537596-8f684d32-26c2-4d7b-a5d4-7bdbe838e545.mp4

 
## **Resultados** <a name="id4"></a>
---

### **Conexión usada** <a name="id5"></a>
#
Para la conexion electrodos al cuerpo utilizamos la guía proporcionada por el propio Bitalino de nombre: "BITalino HOME-GUIDE #2 ELECTROCARDIOGRAPHY (ECG) Exploring Cardiac Signals at the Skin Surface" y a su vez la “GUÍA DE PROCEDIMIENTO ASISTENCIAL: TOMA DE ELECTROCARDIOGRAMA DEL HOSPITAL NACIONAL HIPOLITO UNANUE”.

Se posicionaron los electrodos en base las guías mencionadas:
<p align="center"><img src="/Imagenes/Bitalino/pos_electrodos.png" width="600" height="300"></p>
<p align="center">Figura 3. Posición de los electrodos.

<p align="center"><img src="/Imagenes/Bitalino/conexión_bitalino.jpg" width="400" height="300"></p>
<p align="center">Figura 4. Conexión con el Bitalino.
     
### **Video de la señal** <a name="id6"></a>
#
1. **Estado basal**: El sujeto de prueba se quedó quieto y manteniendo la calma
2. **Manteniendo la respiración por 10 segundos**: El sujeto de prueba mantuvo la respiración por 10 segundos y se midió la inspiración y expiración
3. **Reposo basal**: Reposo después de mantener la respiración
4. **Después de una actividad física**:El sujeto de prueba realizó movimientos aeróbicos por 2 minutos
    
     
|                 **Modelo**                 | **Video** |
|:------------------------------------------:|:---------:|
|                **Estado Basal**                |<video src="https://user-images.githubusercontent.com/128627001/231584957-8ee3fbcc-b6b3-440b-9237-7660d613ff81.mp4"></video>|
| **Manteniendo la respiración por 10 segundos** |<video src="https://user-images.githubusercontent.com/128627001/231585634-4ff1e093-c272-44b3-9570-a781d223fcda.mp4"></video>|
|                **Reposo basal**                |<video src="https://user-images.githubusercontent.com/128627001/231586327-8ea808a1-fc5f-4bc7-bb96-a590a6cf875a.mp4"></video>|
|       **Después de la actividad física**       |<video src="https://user-images.githubusercontent.com/128627001/231586016-d47e613a-6b33-4284-9bc8-8974b8fd2e24.mp4"></video>|
     
### **Ploteo de la señal en OpenSignal** <a name="id7"></a>
#
     a)   Estado basal
     b)   Manteniendo la respiración por 10 segundos
     c)   Reposo basal
     d)   Después de una actividad física
     
### **Archivos** <a name="id8"></a>
#
### **Ploteo de la señal en Python** <a name="id9"></a>
#
     a)   Estado basal
     b)   Manteniendo la respiración por 10 segundos
     c)   Reposo basal
     d)   Después de una actividad física
     
## **Conclusiones** <a name="id10"></a>
---
## **Referencias** <a name="id11"></a>
---
[1] Instituto Nacional de Estadística e Informática, “Condiciones de Riesgo Cardiovasculares”,2012 [En línea]. Disponible en: https://www.inei.gob.pe/media/MenuRecursivo/publicaciones_digitales/Est/Lib1146/cap02.pdf </p>
[2] "Electrocardiograma: Prueba de laboratorio de MedlinePlus". MedlinePlus - Health Information from the National Library of Medicine. https://medlineplus.gov/spanish/pruebas-de-laboratorio/electrocardiograma/ (accedido el 12 de abril de 2023). </p>
[3] BITalino, “BITalino HOME-GUIDE #2 ELECTROCARDIOGRAPHY (ECG) Exploring Cardiac Signals at the Skin Surface” 2020 Accessed: Apr. 12, 2023. [Online]. Available from: https://support.pluxbiosignals.com/wp-content/uploads/2022/04/HomeGuide2_ECG.pdf </p>
[4] Ministerio de Salud, “GUÍA DE PROCEDIMIENTO ASISTENCIAL: TOMA DE ELECTROCARDIOGRAMA DEL HOSPITAL NACIONAL HIPOLITO UNANUE” Abr. 2022. Disponible en: https://www.gob.pe/institucion/hnhu/normas-legales/3304579-192-2022-hnhu-dg </p>
[5] “VICERRECTORADO DE INVESTIGACIÓN, INNOVACIÓN Y TRANSFERENCIA DE TECNOLOGÍA.” Accessed: Apr. 12, 2023. [Online]. Available: http://repositorio.espe.edu.ec/xmlui/bitstream/handle/21000/21202/T-ESPE-042196.pdf?sequence=1&isAllowed=y </p>
[6] J. Hall. (). Guyton & Hall. Tratado de fisiología médica Ed.14 por Hall, John - 9788413820132 - Journal. Available: https://www.edicionesjournal.com/Papel/9788413820132/Guyton+++Hall++Tratado+de+fisiología+médica+Ed+14. </p>
‌
