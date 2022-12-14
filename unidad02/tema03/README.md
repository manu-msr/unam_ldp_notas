[`Lenguajes de Programaci贸n`](../../README.md) > [`Unidad 2`](../README.md) > Sem谩ntica Estructural

> 馃 *Material tomado de las [Notas de Clase de Lenguajes de Programaci贸n](https://drive.google.com/file/d/1qptqIVrJumc8N3KLisslJjVWE1gbm90K/view) del L. en C.C. Javier Enr铆quez Mendoza con ligeras modificaciones.*

# Sem谩ntica Estructural

La sem谩ntica estructural es otra forma de especificar la sem谩ntica din谩mica de un lenguaje. Se le conoce tambi茅n con los nombres de *sem谩ntica de paso peque帽o* o *de transici贸n*. Describe paso a paso la ejecuci贸n mostrando los c贸mputos que genera cada paso individualmente.

## Sistema de transici贸n para MiniLisp

Lo primero para definir la sem谩ntica estructural consiste en definir un sistema de transici贸n que nos indique c贸mo pasar de un c贸mputo a otro paso a paso. Recordemos la definici贸n de sistema de transici贸n.

---

> 馃専 **Definici贸n.**
> *Un sistema de transici贸n es un modelo abstracto con los siguientes elementos:*
> - *Un conjunto 螕 de estados.*
> - *Una funci贸n de transici贸n.*
> - *Un conjunto finito I de estado iniciales subconjunto de 螕*

---

Es b谩sicamente un mecanismo que nos permitir谩 modelar la ejecuci贸n de nuestros programas mediante un dispositivo de c贸mputo abstracto.

Con esto en mente, definimos el sistema de transici贸n para MiniLisp como sigue:

---

> 馃専 **Definici贸n.**   
> *Sistema de transici贸n para MiniLisp:*
> - **Conjunto de estados:** *S = {a | a ASA}, es decir los estados del sistema son las expresiones bien formadas del lenguaje en sintaxis abstracta. Esta definici贸n corresponde con la siguiente regla de inferencia:*
>   <center><img src="imgs/img01.png" width="20%"></center>
> - **Estados iniciales:** *I = {a | a ASA}. En este caso S = I, pues podemos partir de cualquier expresi贸n bien formada. Esta definici贸n corresponde con la siguiente regla de inferencia:*
>    <center><img src="imgs/img02.png" width="20%"></center>
> - **Estados finales:** *Se define como las expresiones que representan a los posibles resultados finales de un proceso de evaluaci贸n. Para poder modelarlos definimos una categor铆a de valores, los cuales pueden ser un subconjunto de expresiones que ya se han terminado de evaluar y no pueden reducirse m谩s, con el juicio v valor. Para el caso de MiniLisp el 煤nico valor son los n煤meros. En general, en todos nuestros lenguajes definiremos constructores especiales para nuestros valores, a帽adiendo simplemente una `V` al constructor correspondiente. Deefinimos entonces nuestro 煤nico valor por medio de la regla:*
>   <center><img src="imgs/img03.png" width="20%"></center>
>
>    _Entonces se define el conjunto de estados finales F = {a | a valor} correspondiente a la regla:_
>   <center><img src="imgs/img04.png" width="20%"></center>
> - **Transiciones:** *La definici贸n de las transiciones se define de acuerdo al enfoque de la sem谩ntica operacional (natural o estructural), que se da en la siguiente secci贸n.*

---

> 馃挕 **Observaci贸n.**   
> Observa que el enfoque de sem谩ntica natural que definimos hace uso impl铆cito de sistemas de transici贸n, definiendo c贸mo asociar estados iniciales con estados finales.

---

## Sem谩ntica estructural para MiniLisp
Recordemos que los estados del sistema son expresiones del lenguaje, definimos entonces la siguiente relaci贸n:

<center><img src="imgs/img05.png" width="10%"></center>

como la transici贸n del estado *e<sub>1</sub>* al estado *e<sub>2</sub>* si y s贸lo si en un paso de evaluaci贸n se puede reducir *e<sub>1</sub>* a *e<sub>2</sub>*. En esta relaci贸n *e<sub>1</sub>* es llamado *redex* mientras que *e<sub>2</sub>* es llamado *reducto*.

---

> 馃挕 **Observaci贸n.**   
> No es posible definir transici贸nes en donde alg煤n estado final sea *redex*. Es decir, no hay transiciones desde estados finales.

---

> 馃専 **Definici贸n.**   
> *Un estado e est谩 bloqueado si no existe otro estado e' tal que:*
> <center><img src="imgs/img06.png" width="10%"></center>  
> 
> *y lo denotamos como:*
> <center><img src="imgs/img07.png" width="7%"></center>  

---

Con la definici贸n de la relaci贸n anterior se define la sem谩ntica operacional de paso peque帽o como sigue.

### Reglas

- **N煤meros.** Los n煤meros se reducen al valor correspondiente. 

	<center><img src="imgs/img08.png" width="25%"></center>

- **Sumas.** Las sumas se dividen en tres reglas para los siguientes casos, respectivamente:

	- *Caso 1*: Ninguno de los argumentos de la suma no han sido reducidos a un valor. El paso siguiente es proceder con el lado izquiero. Por ejemplo, si tenemos `(+ (+ 3 4) (+ 5 2))` un paso de evaluaci贸n corresponde a `(+ 7 (+ 5 2))`.

		<center><img src="imgs/img09.png" width="30%"></center>

	- *Caso 2:* El argumento izquierdo de la suma ya ha sido reducido pero el derecho no. El paso siguiente es proceder con el lado derecho. Por ejemplo, si tenemos `(+ 7 (+ 5 2))`, el lado izquiero ya es un valor, por lo que procedemos con el lado derecho con lo cual el paso corresponde a `(+ 7 7)`.

		<center><img src="imgs/img10.png" width="30%"></center>

	- *Caso 3:* Los dos argumentos de la suma han sido reducidos a un valor. El paso siguiente es realizar la suma, tal cual. Por ejemplo, si tenemos `(+ 7 7)`, ambos argumentos ya son un valor, por lo que procedemos a sumar los mismos, obteniendo `14`.

		<center><img src="imgs/img11.png" width="35%"></center>

- **Restas, multiplicaciones y divisiones** Las sumas, multiplicaciones y divisiones siguen el mismo razonamiento que las sumas, a continuaci贸n las reglas.

	<center><img src="imgs/img12.png" width="80%"></center>



### La relaci贸n de transici贸n
Dada la relaci贸n de transici贸n 鈫? con la que se defini贸 la sem谩ntica estructural del lenguaje, se definen inductivamente las siguientes relaciones derivadas que ser谩n de suma para el estudio de la sem谩ntica del lenguaje.

---

> 馃専 **Definici贸n.**   
> _Se denota a la cerradura transitiva y reflexiva por 鈫?<sup>*</sup> y se define con las siguientes reglas:_
>
> <center><img src="imgs/img14.png" width="80%"></center>
>
>_Intuitivamente la relaci贸n e<sub>1</sub> 鈫?<sup>*</sup> e<sub>2</sub> modela que es posible llegar desde e<sub>1</sub> hasta e<sub>2</sub> en un n煤mero finito de pasos de la relaci贸n de transici贸n 鈫?, posiblemente cero._

---

> 馃専 **Definici贸n.**   
> _Se denota a la cerradura transitiva por 鈫?<sup>+</sup> y se define con las siguientes reglas:_
>
> <center><img src="imgs/img15.png" width="80%"></center>
>
>_Intuitivamente la relaci贸n e<sub>1</sub> 鈫?<sup>+</sup> e<sub>2</sub> modela que es posible llegar desde e<sub>1</sub> hasta e<sub>2</sub> en un n煤mero finito de pasos de la relaci贸n de transici贸n 鈫?, estrictamente mayor a cero, es decir, en al menos un paso._

---

> 馃専 **Definici贸n.**   
> _Se denota a la iteraci贸n en n pasos como 鈫?<sup>n</sup> , con n un natural, y se define con las siguientes reglas:_
>
> <center><img src="imgs/img16.png" width="80%"></center>
>
>_Intuitivamente la relaci贸n e<sub>1</sub> 鈫?<sup>n</sup> e<sub>2</sub> modela que es posible llegar desde e<sub>1</sub> hasta e<sub>2</sub> en exactamente n pasos de la relaci贸n de transici贸n 鈫?._

---

### Sem谩ntica natural vs. sem谩ntica estructural

---

> 馃懆鈥嶐煍? **Ejemplo.**   
> Para contrastar el funcionamiento de la sem谩ntica estructural con la estructural se eval煤a la expresi贸n:
>
> <center><img src="imgs/img13.png" width="80%"></center>
>
> <center><img src="imgs/img17.png" width='100%'></center>

---

En el ejemplo anterior se aprecia que el resultado de la evaluaci贸n usando ambos estilos de sem谩ntica operaciona es el mismo, esto se puede generalizar con el sigiuente teorema:

---

> 馃専 **Teorema.**   
> *Equivalencia entre sem谩ntica natural y estructural: Para cualquier expresi贸n e de MiniLisp se cumple:*
>
> <center><img src="imgs/img18.png" width="25%"></center>
>
> *Es decir, la sem谩ntica natural es equivalente a la estructural.*

---

> 馃幆 **Demostraci贸n.**    
> *La demostraci贸n de este teorema se realiza mediante inducci贸n estructural sobre los constructores del lenguaje y queda fuera del alcance de este curso, pero es importante que lxs alumnxs se convenzan de la equivalencia de la sem谩ntica.*

---

## Propiedades de MiniLisp

La relaci贸n de transici贸n 鈫? con la que se defini贸 la sem谩ntica natural cumple las siguientes propiedades.

---

> 馃専 **Proposici贸n.**   
> *(Bloqueo de valores). Si v valor entonces v est谩 bloqueado.*

---

> 馃幆 **Demostraci贸n.**    
> *La demostraci贸n se realiza por an谩lisis de casos sobre el juicio v valor.*
>
> *En este caso el 煤nico valor del lenguaje es `numV(n)` por lo que basta verificar que `numV(n)` se bloquea. Esto se cumple pues en la definici贸n de nuestra sem谩ntica operacional no se define ninguna regla sobre el constructor `numV` por lo que no tiene transiciones definidas, de ah铆 que se bloquee.*

---

> 馃専 **Proposici贸n.**   
> *(Determinismo de 鈫?). Si e 鈫? e<sub>1</sub> y e 鈫? e<sub>2</sub> entonces e<sub>1</sub> = e<sub>2</sub>*. 

---

> 馃幆 **Demostraci贸n.**    
> *La demostra膰i贸n se realiza por inducci贸n sobre la relaci贸n e 鈫? e<sub>1</sub>.*
>
> *__Caso base 1:__ Num<sub>1</sub>. Esta regla indica que cualquier `num(n)` se convierte en el valor `numV(n)` lo cual es determinista al tener una 煤nica transici贸n.*
>
> *__Caso base 2:__ Sum<sub>3</sub>. Esta regla define tambi茅n una 煤nica transici贸n, por lo tanto es determinista.*
> 
> *__Casos base 3, 4 y 5:__ Resta<sub>3</sub>, Mult<sub>3</sub>, Div<sub>3</sub>. Son an谩logos a los anteriores.*
>
> *__Paso inductivo:__ Suma<sub>1</sub>.*    
> *__H.I.:__ i 鈫? i', d 鈫? d' son deterministas.*   
> *Veamos que en la transici贸n suma(i,d) 鈫? suma(i<sub>v</sub>, d), la 煤nica reducci贸n aplicada a la expresi贸n se da por el cambio de i hacia i<sub>v</sub>. Por lo que basta demostrar que las transiciones desde el estado i son 煤nicas, lo cual est谩 establecido en la H.I.*

---

> 馃摑 **Actividad.**   
> Completa la demostraci贸n anterior. 

---

Otra propiedad interesante es la propiedad de **terminaci贸n**. Probablemente hayas escuchado del [*probema del paro*](https://es.wikipedia.org/wiki/Problema_de_la_parada). En general, para los lenguajes de programaci贸n reales (mucho m谩s sofisticados que MiniLisp), no se puede garantizar la terminaci贸n. Sin embargo, para el caso de nuestro lenguaje s铆.

---

> 馃専 **Proposici贸n**   
> *(Terminaci贸n). Para cada expresi贸n e del lenguaje existe una expresi贸n e<sub>f</sub> tal que e 鈫?<sup>*</sup> e<sub>f</sub> y e<sub>f</sub> es un estado bloqueado.  

---

> 馃摑 **Actividad.**   
> Demuestra la proposici贸n anterior. 

--- 

> 馃摎 **Referencias.**
> 1. Javier Enr铆quez, *Notas de clase de Lenguajes de Programaci贸n*, Facultad de Ciencias UNAM, Revisi贸n 2023-1.
> 1. Shriram Krishnamirthi, *Programming Languages Application and Interpretation*, Primera Edici贸n, Brown
University, 2007.
> 1. Hanne Riis Nielson, Flemming Nielson, *Semantics with Applications: An Appetizer*, Primera Edici贸n, Springer, 2007.

---

[`Anterior`](../tema02/README.md) | [`Siguiente`](../../README.md)
