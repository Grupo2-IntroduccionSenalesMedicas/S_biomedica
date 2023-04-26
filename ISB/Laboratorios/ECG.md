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
     4.3 [Archivos](#id8)\
     4.4 [Ploteo de la señal en Python](#id9)
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

<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable4/du.png" width="600" height="400"></p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/Bitalino/intervalos_ecg.png" width="600" height="400"></p>
<p align="center">Figura 1. Intervalos y segmentos de ECG.[5] </p>

### Electrocardiograma

<p align="justify">
Es la representación visual de la actividad eléctrica del corazón en función del tiempo, que se obtiene, desde la superficie corporal, en el pecho, con un electrocardiógrafo en forma de cinta continua.<br><br>
Dicha actividad eléctrica está registrada hasta con 12 derivaciones, lo cual permite reconstruir mejor la actividad cardiaca en el plano frontal y horizontal [6].
Las desviaciones para el plano frontal son las derivadas de extremidades estándar (I, II, III) y las derivaciones de extremidades aumentadas (aVR, aVL, aV) 
Extremidades estándar (I, II, III): 
* I ⇒ Mano derecha (-) y  la mano izquierda(+)
* II ⇒ Mano derecha (-) y Pierna izquierda(+)
* III ⇒Mano izquierda(-) y pierna izquierda(+) <br><br>
Derivaciones de extremidades aumentadas (aVR, aVL, aVF):
Consta de 3 conexiones, dos de ellas van al terminal negativo del ECG, mediante una resistencia eléctrica y la otra al terminal positivo:
Si el terminal positivo es:
* En el brazo derecho ⇒  aVR
* En el brazo izquierdo  ⇒ aVL 
* En la pierna izquierda  ⇒ aVF (La señal es invertida)</p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable4/deri.png" width="300" height="300"></p>
<p align="center">Figura 2. Derivaciones.[6] </p>

### Ejercicios

<p align="justify">Los ejercicios aeróbicos y anaeróbicos son dos tipos de ejercicios que se diferencian en la forma en que el cuerpo produce energía. Los ejercicios aeróbicos son aquellos que se realizan a una intensidad moderada y durante un período prolongado de tiempo, como correr o nadar. Estos ejercicios utilizan oxígeno para producir energía y son beneficiosos para el sistema cardiovascular y respiratorio. Por otro lado, los ejercicios anaeróbicos son aquellos que se realizan a una alta intensidad y durante un corto período de tiempo, como levantar pesas o hacer sprints. Estos ejercicios no utilizan oxígeno para producir energía y son beneficiosos para el desarrollo muscular [7].</p>

## **Objetivos** <a name="id1"></a>
---
Los objetivos del laboratorio son:
* Adquirir señales biomédicas de ECG.
* Hacer una correcta configuración de BiTalino.
* Extraer la información de las señales ECG del software OpenSignals (r)evolution 

<div align="center">

## **Materiales y equipos** <a name="id2"></a>
---

|  **Modelo**  | **Descripción** | **Cantidad** |
|:------------:|:---------------:|:------------:|
| (R)EVOLUTION |   Kit BITalino  |       1      |
|       -      |      Laptop     |       1      |

</div>

## **Procedimiento** <a name="id3"></a>

1. Preparación de la piel: se lavo con agua y jabón la zona en la que se colocaron los electrodos. Posteriormente, se seco cuidadosamente para eliminar todo residuo de agua
2. Ubicación de los electrodos: para ello se uso la configuración bipolar [3]. Primero se colocaron los electrodos y luego se conectaron al BITalino
     <p align="center"><img src="/ISB/Laboratorios/Imagenes/Bit-ECG/UbicacionBitalino.png" width="600" height="300"></p>
     <p align="center">Figura 3. Colocación de electrodos para el plomo I: IN+ (rojo) e IN-(negro) en las muñecas y REF (blanco) en la cresta ilíaca [3].

3. Registro de la señal ECG: Se grabó la señal en 3 momentos
     * Estado basal: Evaluar el estado de reposo
     * Respiración prolongada: Evaluar al mantener la respiración por 10 segundos y el estado basal
     * Ejercicio intenso: Evaluar luego de 5 minutos de burpees

https://user-images.githubusercontent.com/43428232/231537596-8f684d32-26c2-4d7b-a5d4-7bdbe838e545.mp4

 
## **Resultados** <a name="id4"></a>
<p align="justify">Antes de proceder con la lectura de los resultados cabe mencionar que el sujeto de estudio, el cual se sometió a diferentes estados de actividad y reposo, tiene una condición la piel que genera ciertas perturbaciones en la señal que se deben tomar en cuenta.</p>

### **Conexión usada** <a name="id5"></a>
#
<p align="justify">Para la conexión de electrodos al cuerpo utilizamos la guía proporcionada por el propio Bitalino de nombre: "BITalino HOME-GUIDE #2 ELECTROCARDIOGRAPHY (ECG) Exploring Cardiac Signals at the Skin Surface" y a su vez la “GUÍA DE PROCEDIMIENTO ASISTENCIAL: TOMA DE ELECTROCARDIOGRAMA DEL HOSPITAL NACIONAL HIPOLITO UNANUE”.</p>

Se posicionaron los electrodos en base las guías mencionadas:
<p align="center"><img src="/ISB/Laboratorios/Imagenes/Bitalino/pos_electrodos.png" width="600" height="300"></p>
<p align="center">Figura 4. Posición de los electrodos.

<p align="center"><img src="/ISB/Laboratorios/Imagenes/Bitalino/conexión_bitalino.jpg" width="400" height="300"></p>
<p align="center">Figura 5. Conexión con el Bitalino.
     
### **Video de la señal** <a name="id6"></a>
#
1. **Estado basal**: El sujeto de prueba se quedó quieto y manteniendo la calma
2. **Manteniendo la respiración por 10 segundos**: El sujeto de prueba mantuvo la respiración por 10 segundos y se midió la inspiración y expiración
3. **Reposo basal**: Reposo después de mantener la respiración
4. **Después de una actividad física**:El sujeto de prueba realizó movimientos aeróbicos por 5 minutos
   
     
|                 **Modelo**                 | **Video** |
|:------------------------------------------:|:---------:|
|                **Estado Basal**                |<video src="https://user-images.githubusercontent.com/128627001/231584957-8ee3fbcc-b6b3-440b-9237-7660d613ff81.mp4"></video>|
| **Manteniendo la respiración por 10 segundos** |<video src="https://user-images.githubusercontent.com/128627001/231585634-4ff1e093-c272-44b3-9570-a781d223fcda.mp4"></video>|
|                **Reposo basal**                |<video src="https://user-images.githubusercontent.com/128627001/231586327-8ea808a1-fc5f-4bc7-bb96-a590a6cf875a.mp4"></video>|
|       **Después de la actividad física**       |<video src="https://user-images.githubusercontent.com/128627001/231586016-d47e613a-6b33-4284-9bc8-8974b8fd2e24.mp4"></video>|

     
### **Archivos** <a name="id8"></a>
#
- [Documentos (.txt)](https://github.com/Grupo2-IntroduccionSenalesMedicas/S_biomedica/tree/main/Programación/Laboratorio%204)
- [Programa de ploteo](https://github.com/Grupo2-IntroduccionSenalesMedicas/S_biomedica/blob/main/Programación/Laboratorio%204/SignalPlot.ipynb)
- [Programa de ploteo en Google Colab](https://colab.research.google.com/drive/1u2PKFSx2E9Nheg8XYQldKUHyYO6rB3Q5?usp=sharing) 
     
### **Ploteo de la señal en Python** <a name="id9"></a>
<p align="justify">Se ha realizado un ploteo de las señales en python para poder analizar segmentos específicos. Para poder calcular los latidos por minuto (lpm) y compararlos con el dispositivo patron, se calculó el intervalo R-R en las señales. En un electrocardiograma con ritmo regular el cálculo es simple, solo hay que dividir 6000 entre la frecuencia cardiaca. Además, se permite observar las frecuencias de la señal.</p>
La señales se sometieron a un filtrado pasa baja y el efecto que se obtuvo fue mínimo, esto debido al existente acondicionamiento que integra el BITalino. Es por este motivo que el análisis realizado fue directamente de las señales sin procesado.

     a)   Estado basal</p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable4/Basal1_señal.png" width="600" height="300"></p>
<p align="center"><img src="/ISB/Laboratorios/Programación/ECG/Imagenes/Basal 1 Freq_response.png" width="600" height="300"></p>
En estado basal, el usuario se encontraba en reposo por lo cuál el valor de R-R es 0.98s que equivale a 61 latidos por minuto que esta dentro del rango normal de palpitaciones cardiacas.</p>
     b)   Manteniendo la respiración por 10 segundos</p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable4/Respiración_señal.png" width="600" height="300"></p>
<p align="center"><img src="/ISB/Laboratorios/Programación/ECG/Imagenes/Respiracion Freq_response.png" width="600" height="300"></p>
<p align="center"><img src="/ISB/Laboratorios/Programación/ECG/Imagenes/Respiracion Amplitudes_Analysis Raw_Signal.png" width="600" height="300"></p>
En este parámetro, el usuario contuvo la respiración durante 10 segundos por lo cuál el valor del intervalo R-R es de 0.9s que equivale a 67 latidos por minuto.</p> 
     c)   Reposo basal</p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable4/Basal2_señal.png" width="600" height="300"></p>
<p align="center"><img src="/ISB/Laboratorios/Programación/ECG/Imagenes/Post-ejercicio Freq_response.png" width="600" height="300"></p>
En este parámetro, se volvió a establecer al usuario en un estado basal después de haber inspirado y expirado por lo cuál, el valor del intervalo R-R es de 0.9s que equivale a 67 latidos por minuto.</p>
     d)   Después de una actividad física</p>
<p align="center"><img src="/ISB/Laboratorios/Imagenes/entregable4/Post_ejercicio_señal.png" width="600" height="300"></p>
<p align="center"><img src="/ISB/Laboratorios/Programación/ECG/Imagenes/Basal 2 Freq_response.png" width="600" height="300"></p>
Inmediatamente, después de la actividad física de 5 minutos, el intervalo R-R es de 0.45 que equivale a 133 latidos por minuto.</p> 

### **Señal del Promsim4 (dispositivo de metrología que genera una señal patrón)** <a name="id9"></a>

<div align="center">

|                 **Simulación**                 | **Toma** |
|:------------------------------------------:|:---------:|
|**Simulación de 60lpm - estado basal** </p><img src="/ISB/Laboratorios/Imagenes/entregable4/60lpm_toma1.jpg" width="300" height="300">|<img src="/ISB/Laboratorios/Imagenes/entregable4/60lpm_toma11.jpg" width="300" height="300">|
| **Simulación de 120lpm - empieza a agitarse**</p><img src="/ISB/Laboratorios/Imagenes/entregable4/120lpm_toma2.jpg" width="300" height="300">|<img src="/ISB/Laboratorios/Imagenes/entregable4/120lpm_toma22.jpg" width="300" height="300">|
|                **Simulación de 150lpm - haciendo ejercicio**</p><img src="/ISB/Laboratorios/Imagenes/entregable4/150lpm_toma3.jpg" width="300" height="300">|<img src="/ISB/Laboratorios/Imagenes/entregable4/150lpm_toma33.jpg" width="300" height="300"></p>|
|       **Simulación de 90lpm - reponiendose**</p><img src="/ISB/Laboratorios/Imagenes/entregable4/90lpm_toma4.jpg" width="300" height="300">      |<img src="/ISB/Laboratorios/Imagenes/entregable4/90lpm_toma44.jpg" width="300" height="300"></p>|

</div>
     
## **Conclusiones** <a name="id10"></a>
* La formación de las ondas de la señal ECG se dan gracias a las diferentes conducciones eléctricas del corazón, las cuales dependerán del estado en el que se encuentre la persona. Estas señales ECG se lograron estudiar gracias al empleo del BITalino, electrodos ECG, el software OpenSignals y el lenguaje de programación en Python que nos permitió extraer datos para un análisis cuantitativo.

* El intervalo RR que al principio tuvo un valor de 0.9 segundos en el reposo basal, presentó un valor de 0.45 segundos después de la realización de actividades físicas por 5 minutos. En comparación con la señal simulada, en estado físico esta fue de 150 lpm , por otro lado, la del usuario llego hasta 133 lpm. Además, el número de complejos QRS en el intervalo de 14.0 a 16.0 segundos se incrementó; por lo que esto indicaría un aumento en la frecuencia cardiaca. Los latidos por minuto de la persona de estudio durante la recuperación tras los 5 minutos de ejercicio está dentro de los valores normales, ya que la simulación indica que un adulto con estado físico normal tendría una frecuencia cardiaca entre 150 - 90 lpm en la fase de recuperación.

* Para el uso de electrodos de superficie se deben considerar las características eléctricas de la piel. Tras el ploteo de las señales se pudo observar que el mal acoplamiento electrodo-piel o la impedancia de este órgano nos brinda resultados de baja calidad. Durante este laboratorio se trabajó en el análisis de señales de ECG de un estudiante que padecía una condición de la piel, por lo que este factor ha sido influyente en la obtención de señales.

* Así mismo, factores como interferencias provenientes de la red eléctrica terminan contaminando la señal ECG y para ello existen distintas herramientas de filtrado. Gracias al acondicionamiento propio del BITalino, el análisis de las señales ECG pudieron ser analizadas el uso de un filtro alguno.

---
## **Referencias** <a name="id11"></a>
---
[1] Instituto Nacional de Estadística e Informática, “Condiciones de Riesgo Cardiovasculares”,2012 [En línea]. Disponible en: https://www.inei.gob.pe/media/MenuRecursivo/publicaciones_digitales/Est/Lib1146/cap02.pdf </p>
[2] "Electrocardiograma: Prueba de laboratorio de MedlinePlus". MedlinePlus - Health Information from the National Library of Medicine. https://medlineplus.gov/spanish/pruebas-de-laboratorio/electrocardiograma/ (accedido el 12 de abril de 2023). </p>
[3] BITalino, “BITalino HOME-GUIDE #2 ELECTROCARDIOGRAPHY (ECG) Exploring Cardiac Signals at the Skin Surface” 2020 Accessed: Apr. 12, 2023. [Online]. Available from: https://support.pluxbiosignals.com/wp-content/uploads/2022/04/HomeGuide2_ECG.pdf </p>
[4] Ministerio de Salud, “GUÍA DE PROCEDIMIENTO ASISTENCIAL: TOMA DE ELECTROCARDIOGRAMA DEL HOSPITAL NACIONAL HIPOLITO UNANUE” Abr. 2022. Disponible en: https://www.gob.pe/institucion/hnhu/normas-legales/3304579-192-2022-hnhu-dg </p>
[5] “VICERRECTORADO DE INVESTIGACIÓN, INNOVACIÓN Y TRANSFERENCIA DE TECNOLOGÍA.” Accessed: Apr. 12, 2023. [Online]. Available: http://repositorio.espe.edu.ec/xmlui/bitstream/handle/21000/21202/T-ESPE-042196.pdf?sequence=1&isAllowed=y </p>
[6] J. Hall. (). Guyton & Hall. Tratado de fisiología médica Ed.14 por Hall, John - 9788413820132 - Journal. Available: https://www.edicionesjournal.com/Papel/9788413820132/Guyton+++Hall++Tratado+de+fisiología+médica+Ed+14. </p>
[7]	“La diferencia entre ejercicio aeróbico y anaeróbico”, Eufic.org. [En línea]. [Online]. Available from: https://www.eufic.org/es/vida-sana/articulo/la-diferencia-entre-ejercicio-aerobico-y-anaerobico/. [Consultado: 13-abr-2023]. </p>
‌
