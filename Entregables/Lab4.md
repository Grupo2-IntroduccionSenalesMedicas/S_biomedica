# **LABORATORIO 4: – USO DE BiTalino PARA EMG y ECG**
Fecha: 12-04-2023


# **Tabla de contenidos**
1. [Introducción](#id0)
2. [Objetivos](#id1)
3. [Materiales y equipos](#id2)
4. [Resultados](#id3)\
     4.1 [Conexión usada](#id4)\
     4.2 [Video de la señal](#id5)\
     4.3 [Ploteo de la señal en OpenSignal](#id6)\
     4.4 [Archivos](#id7)\
     4.5 [Ploteo de la señal en Python](#id8)
5. [Conclusiones](#id10)
6. [Referencias](#id9)

## **Introducción al laboratorio** <a name="id0"></a>
---
<p align="justify">Un electrocardiograma (ECG) es un procedimiento sencillo, sin dolor y de rápida ejecución que registra la actividad eléctrica del corazón. Cada vez que el corazón late, una señal eléctrica recorre su músculo cardíaco, estimulando las cuatro cámaras para que se contraigan al ritmo adecuado y bombeen sangre a todo el cuerpo. El electrocardiograma se usa para ayudar a diagnosticar y monitorear enfermedades del corazón tales como:

* Arritmia
* Cardiomiopatía
* Enfermedad de las arterias coronarias
* Enfermedades cardiovasculares

<p align="justify"> En base a lo mencionado anteriormente,el presente laboratorio presenta el uso de la placa de desarrollo Bitalino para obtener señales de electrocardiograma (ECG) de interés. La placa Bitalino es una herramienta innovadora que nos permitirá registrar y analizar la actividad eléctrica del corazón de forma no invasiva y en tiempo real. A través de esta experiencia práctica, los se espera  aprender sobre la obtención y análisis de señales ECG, así como familiarizarse con los procedimientos y protocolos de utilización de electrodos ECG.


## **Objetivos** <a name="id1"></a>
---
Los objetivos del laboratorio son:
* Adquirir señales biomédicas de ECG.
* Hacer una correcta configuración de BiTalino.
* Extraer la información de las señales ECG del software OpenSignals (r)evolution 


## **Materiales y equipos** <a name="id2"></a>
---

|  **Modelo**  | **Descripción** | **Cantidad** |
|:------------:|:---------------:|:------------:|
| (R)EVOLUTION |   Kit BITalino  |       1      |
|       -      |      Laptop     |       1      |

## **Procedimiento** <a name="id2"></a>
     Para el paso 1 y 2 se usa
     
     1. Preparación de la piel: se lavo con agua y jabón la zona en la que se colocaron los electrodos. Posteriormente, se seco cuidadosamente para eliminar todo residuo de agua
     2. Ubicación de los electrodos: para ello se uso la configuración bipolar [3]. Primero se colocaron los electrodos y luego se conectaron al bitalino
     3. Registro de la señal ECG: Se grabó la señal en 3 momentos
          * Estado basal
          * Respiración prolongada: 10 segundos de inspiración y 10 segundos de espiración
          * Ejercicio intenso: lectura posterior 4 minutos de burpees

 
## **Resultados** <a name="id3"></a>
---

### **Conexión usada** <a name="id4"></a>
#
Para la conexion electrodos al cuerpo utilizamos la guía proporcionada por el propio Bitalino de nombre: "BITalino HOME-GUIDE #2 ELECTROCARDIOGRAPHY (ECG) Exploring Cardiac Signals at the Skin Surface" y a su vez la “GUÍA DE PROCEDIMIENTO ASISTENCIAL: TOMA DE ELECTROCARDIOGRAMA DEL HOSPITAL NACIONAL HIPOLITO UNANUE”.

Se posicionaron los electrodos en base las guías mencionadas:

<p align="center">Figura 1. Posición de los electrodos.[4]

### **Video de la señal** <a name="id5"></a>
#
     a)   Estado basal
     b)   Manteniendo la respiración por 10 segundos
     c)   Reposo basal
     d)   Después de una actividad física
### **Ploteo de la señal en OpenSignal** <a name="id6"></a>
#
     a)   Estado basal
     b)   Manteniendo la respiración por 10 segundos
     c)   Reposo basal
     d)   Después de una actividad física
     
### **Archivos** <a name="id7"></a>
#
### **Ploteo de la señal en Python** <a name="id8"></a>
#
     a)   Estado basal
     b)   Manteniendo la respiración por 10 segundos
     c)   Reposo basal
     d)   Después de una actividad física
     
## **Conclusiones** <a name="id10"></a>
---
1. Durante el desarrollo del laboratorio se evidenció problemas en la adquisición de señal pues el ruido fue evidente y anormal. Para solucionar dicho problema, el grupo planteó diversas soluciones como el cambio de sujeto de prueba, cambio de electrodos, cambio del BiTalino. Sin embargo, dicho problema se pudo suplir satisfactoriamente al cambiar el puerto 2 en el software OpenSignal.
2. Al iniciar la primera adquisicón de señal ECG, la batería del BiTalino se encontraba descargada completamente lo cual retrasó considerablemente la adqusición de la señal.
## **Referencias** <a name="id9"></a>
---
[1] Instituto Nacional de Estadística e Informática, “Condiciones de Riesgo Cardiovasculares”,2012 [En línea]. Disponible en: https://www.inei.gob.pe/media/MenuRecursivo/publicaciones_digitales/Est/Lib1146/cap02.pdf </p>
[2] "Electrocardiograma: Prueba de laboratorio de MedlinePlus". MedlinePlus - Health Information from the National Library of Medicine. https://medlineplus.gov/spanish/pruebas-de-laboratorio/electrocardiograma/ (accedido el 12 de abril de 2023). </p>
[3] BITalino, “BITalino HOME-GUIDE #2 ELECTROCARDIOGRAPHY (ECG) Exploring Cardiac Signals at the Skin Surface” 2020 Accessed: Apr. 12, 2023. [Online]. Available from: https://support.pluxbiosignals.com/wp-content/uploads/2022/04/HomeGuide2_ECG.pdf </p>
[4] Ministerio de Salud, “GUÍA DE PROCEDIMIENTO ASISTENCIAL: TOMA DE ELECTROCARDIOGRAMA DEL HOSPITAL NACIONAL HIPOLITO UNANUE” Abr. 2022. Disponible en: https://www.gob.pe/institucion/hnhu/normas-legales/3304579-192-2022-hnhu-dg </p>
