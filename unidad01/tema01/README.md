[`Lenguajes de Programación`](../../README.md) > [`Unidad 1`](../README.md) > Historia de los Lenguajes de Programación

# Historia de los Lenguajes de Programación

## Fundamentos 

Antes de que existieran los lenguajes de programación tal y como los conocemos hoy en día, se definieron algunos fundamentos teóricos que dieron origen a los conceptos básicos de lo que conocemos hoy en día como computadora, y junto con ella se originaron las teorías que permiten decidir lo que es
computable o no. Estos fundamentos han sido de utilidad al crear los lenguajes
de programación como se les conoce actualmente. Veamos algunos de estos
fundamentos.

### Lenguajes formales

Un lenguaje formal es consta de un conjunto de símbolos y un conjunto de reglas bien definidas que permiten formar cadenas
con dichos símbolos. Llamamos alfabeto al conjunto de símbolos y gramática
al conjunto de reglas. Por ejemplo un alfabeto podría ser el conjunto *{a,b}* y
una gramática podría definir a las cadenas como aquellas que tienen el mismo
número de símbolos a que b , por ejemplo *ab, ba, abab, ababba, ...* y el
lenguaje formal sería el conjunto de todas esas cadenas.

A lo largo de los años, matemáticxs, lingüistas y cientificxs de la computación
han realizado diversos estudios sobre estos lenguajes. Tu curso de Autómatas
y Lenguajes Formales te puede dar un panorama sobre este trabajo y es justo
en el curso de Lenguajes de Programación donde podremos aplicar algunas
de estas ideas pues podemos modelarlos usando lenguajes formales. Esto
permite expresar ideas (programas) de forma concreta, breve y precisa. Al
ser lenguajes formales, es posible construir modelos de los mismos, lo cual
permite razonar sobre ellos, manipularlos, demostrar ciertas propiedades sobre
éstos, y obtener nuevos resultados a partir de otros ya conocidos, lo que a su
vez permite encontrar respuestas a problemas sobre dichos modelos y generar
extensiones del conocimiento.

![img](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdUaQzL7ciMqqCNKIQmdIiZptpmw9jFZXeVQ&usqp=CAU) 

### Ada Lovelace y la Máquina Analítica 

En 1834 Charles Babbage inició el diseño de un dispositivo de cómputo al que llamó Máquina Analítica, esta máquina
sería capaz de calcular el valor numérico de cualquier fórmula o función, dada
una entrada, en donde el usuario podía especificar el método de solución, la
forma en que trabajaría la máquina sería completamente automática.

Ada Lovelace, conocida como la primera programadora fue la principal colaboradora del trabajo de Babbage. Ada escribió un programa para calcular los
números de Bernoulli. Este programa fue descrito en un diagrama que exponía
paso a paso cómo debía realizar los cálculos la máquina, dicho programa se
encontraba representado en un lenguaje entendible por la máquina para ser
ejecutado, alguno muy similar a lo que hacemos hoy en día con los lenguajes
de programación.

![img](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWEp1lG7blbwhKFATmivRC3sF4dOt7ohhcgw&usqp=CAU) 

### El Cálculo λ 
El Cálculo λ, es una de las teorías más importantes de los len-guajes de programación, fue introducido por Alonzo Church en el año de 1930,
con el fin de formalizar el concepto de computabilidad. Se dice que es el lenguaje de programación universal más pequeño del mundo y consiste de un
lenguaje formal para describir términos y definir funciones, usando una única
regla de transformación llamada β-reducción que permite sustituir variables.
Dedicaremos una parte del semestre a estudiarlo. 

![img](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRncP2rp8DrjDnqXwCV-eVTru0g3mJX6pbHQQ&usqp=CAU) 

### Máquinas de Turing 

Las Máquinas de Turing son un modelo abstracto de
cómputo propuesto por Alan Turing en 1936, que al igual que el Cálculo λ, proveen una definición formal sobre lo que es o no computable. Es una máquina
de estados finita compuesta por una cinta infinita que incluye símbolos de un
alfabeto finito (denotado por Σ), cuenta con una cabeza lectora que puede leer
o escribir en dicha cinta. A partir del símbolo que se está leyendo y el estado
actual, una Máquina de Turing escribe un nuevo símbolo en la posición actual
y se mueve hacia la izquierda o derecha de acuerdo a lo especificado por una
función de transición. La función de transición es el programa que especifica
cómo se comporta la máquina, algo similar a los lenguajes de programación
actuales.

![img](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1lpwkEyC-onu6x_kbG3EYuStaGPiZ140R1g&usqp=CAU)

## Lenguajes ensambladores

Partiendo de los fundamentos anteriores y con la llegada de las computadoras
modernas, nace la necesidad de programarlas y con ello comienza la creación
de lenguajes de programación *ensambladores*. 

En su inicios, programar una computadora electrónica, consistía en conectar y
desconectar cables para configurar el hardware, lo cual era una tarea tediosa y
que pocos podían realizar. 

![img](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuf9I-4UaJTrnMzlmSgEEngWEnJKFOSQi28w&usqp=CAU) 

Con la llamada *Arquitectura de von Neumann* se resuelve este problema al tener
un conjunto de instrucciones almacenadas en la memoria de la computadora
y ejecutando las mismas en la Unidad Central de Proceso. Sin embargo, estas
instrucciones debían escribirse en un lenguaje que entendiera la computadora,
como lo es el sistema binario. De esta forma, una instrucción en lenguaje
máquina luce de la siguiente manera:

```
0110 1001 1010 1011
```

Cada parte de esta instrucción indica a la computadora qué acción realizar.
Por ejemplo, en una arquitectura particular, los primeros cuatro bits en la
instrucción anterior (`0110` de izquierda a derecha), podrían indicar que se trata
de una suma, los siguientes 8 bits podrían representar los valores a sumar y los
últimos cuatro bits (`1011`) indican el registro de memoria en que se almacenará
el resultado de la suma.

Este tipo de instrucciones conforman un lenguaje llamado *lenguaje de máquina*, sin embargo, este lenguaje no resulta ser un lenguaje tan claro y fácil de
leer por los humanos.

Debido a esto, se crearon los lenguajes ensambladores que realizan un mapeo
entre las etiquetas llamadas mnemotécnicos y el lenguaje de máquina. Por
ejemplo, una operación de suma, representada por el código `0110`, se convierte
en la instrucción `ADD` (suma). La siguiente línea de código en lenguaje ensamblador representa la instrucción en lenguaje máquina `0110 1001 1010 1011`
(Sumar la variable `M` con la `N` y almacenar el resultado en el registro `P`):

`ADD M, N, P`

Combinando este tipo de instrucciones se conformaron los primeros lenguajes
de programación con una *sintaxis y semántica* bien definida. Sin embargo,
estos lenguajes presentan una gran desventaja, (al igual que el lenguaje de
máquina) que es la dependencia al tipo de arquitectura de cada máquina.

Hoy en día, este tipo de lenguajes tienen sus aplicaciones muy reducidas y se
centran principalmente en control de procesos y de dispositivos electrónicos.

## Lenguajes de alto nivel

Dada la dependencia a la arquitectura de los lenguajes ensambladores, nace la
necesidad de diseñar lenguajes que sean más entendibles para los humanos,
lo que nos lleva a los lenguajes que conocemos hoy en día. Estos lenguajes
cuentan con comandos que se asemejan al inglés que hacen clara la tarea que se
solicita a la computadora. De acuerdo con [TIOBE](https://www.tiobe.com/tiobe-index/) 
, el lenguaje de programación
de alto nivel más utilizado hoy en día a nivel mundial es **Python**.

![img](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUSMLYtx8y7iAH3vS20W9n-CVmVd49aPDV0g&usqp=CAU) 

Los lenguajes de programación de alto nivel son los más usados hoy en día
pues:

- Fueron diseñados con los objetivos de ser más entendibles para las personas.
- Porque los programas escritos en este tipo de lenguajes no dependen de
ninguna arquitectura en particular.

Como consecuencia de esto pueden ser ejecutados en cualquier computadora a
diferencia de los lenguajes máquina o ensambladores. El principal inconveniente de estos lenguajes es su traducción, pues es necesario que la computadora
comprenda las órdenes solicitadas, con lo cual se requiere de un programa
especial que traduzca los lenguajes en alto nivel al lenguaje de la máquina.
Estos programas son llamados *compiladores e intérpretes*. 

Aunque hablaremos sobre las fases de traducción, el curso de lenguajes de
programación se centra en el diseño y formalización de lenguajes a través del estudio de la semántica de los mismos. Si queremos lograr esto , necesitamos
antes que nada comprender cuáles son los principales componentes de un
lenguaje de programación. 

---

> 📚 **Referencias.**   
> 1. Samuel A. Rebelsky, Programming Languages, Notas de clase, Grinell College revisión 99S. Consultado el 20 de noviembre de 2018 http://www.math.grin.edu/~rebelsky/Courses/CS302/99S/Outlines/outline.02.html
> 2. Favio E. Miranda, Elisa Viso, *Matemáticas Discretas*, Las Prensas de Ciencias, Segunda Edición, 2016.
> 3. Raúl Rojas, A *Tutorial Introduction to the Lambda Calculus*, ArXiv, 2015.
> 4. Bobby Kleinberg, *Notas de clase*, Cornell University, revisión 2012sp. Consultado el 7 de enero de 2019. http://www.cs.cornell.edu/courses/cs4820/2012sp/handouts/turingm.pdf
> 5. *History of Computers, The Analitical Engige of Charles Babbage*, Consultado el 7 de enero de 2019. https://history-computer.com/Babbage/AnalyticalEngine.html
> 6. José Galaviz, *Organización y Arquitectura de Computadoras*, Notas de clase, Facultad de Ciencias UNAM, revisión 2015-2.

---

[`Anterior`](../README.md) | [`Siguiente`](../tema02/README.md)
