[`Lenguajes de Programación`](../../README.md) > [`Unidad 1`](../README.md) > Componentes de los lenguajes de programación

# Componentes de los lenguajes de programación

Para diseñar, formalizar y analizar un lenguaje de programación es necesario considerar principalmente tres aspectos básicos: *sintaxis*, *semántica* y *pragmática*.

## Sintaxis

Se refiere a la forma de escribir las sentencias de un programa, dentro de un lenguaje de programación. Tiene como 
principal función analizar el orden correcto de las palabras a fin de que las frases, oraciones, textos e ideas sean 
expresados de manera correcta para que pueda llegar el mensaje que se desea transmitir. La sintaxis de un lenguaje de 
programación es dada por su gramática.

---

> 🌟 **Definición.**   
> *La __sintaxis__ es la forma en la que los elementos lingüísticos se combinan para formar expresiones correctas de un*
> *lenguaje.*

---

## Semántica

Se refiere al significado que se otorga a cada una de las sentencias escritas, de acuerdo a la sintaxis definida 
previamente en el lenguaje. La semántica de un lenguaje de programación es dada por medio de especificaciones formales 
o en lenguaje natural.

---

> 🌟 **Definición.**   
> *La __semántica__ es la rama de la lingüística y la lógica que relaciona expresiones sistemáticamente correctas con*
> *su significado. Es el estudio de la relación que existe entre expresiones y símbolos de un lenguaje con lo que*
> *representan.*

---

## Pragmática

---

> 🌟 **Definición.**   
> *La __pragmática__ es el estudio de los principios que regulan el uso de un lenguaje, es decir, las condiciones que*
> *determinan el empleo de una expresión así como la interpretación que se le da a ésta.*

---

En el caso de los lenguajes de programación, la pragmática se refiere a dos componentes principales, que son los que dan 
contexto en el uso del lenguaje:

### Bibliotecas
Se refiere al conjunto de funciones previamente definidas en un lenguaje las cuales, están disponibles para utilizarse 
por lxs programadorxs. En muchos lenguajes de programación ya se tienen varias bibliotecas que presentan funciones, 
métodos o procedimientos (dependiendo del estilo del lenguaje de programación) que permiten que lxs programadorxs hagan 
uso de éstas.

### Convenciones de programación (*idioms*)
Se refiere a las formas en las que se puede expresar algún tipo de elemento dentro de un lenguaje de programación,
dicho de otra forma son expresiones idiomáticas que son frecuentes en un lenguaje.

---

> 👨‍🔬 **Ejemplo.**  
> Analicemos cada uno de estos componentes en el lenguaje de programación **Java**. 
>
> **Sintaxis:** Por obvias razones no se dará la gramática del lenguaje. Sin embargo, muy probablemente estemos 
> familiarizadxs con reglas de escritura de algunas de las instrucciones de **Java**. Por mencionar algunas tenemos:
>
> - El condicional `if` está conformado por una condición delimitada entre paréntesis y un cuerpo que puede contener 
> instrucciones en secuencia que pueden o no estar delimitadas por llaves.
>
> 	```java
> 	if (<condición>) {
> 	   <instrucciones>	
> 	}
> 	```
>
> - La estructura de repetición `for` está conformada por la inicialización de una variable de control, una condición y 
> una operación de actualización delimitada por paréntesis y separando cada elemento por un punto y coma así como un 
> cuerpo con las mismas reglas que el de `if`.
> 	```java
> 	for (<inicialización>; <condición>; <actualización>) {
> 	   <instrucciones>	
> 	}
> 	```
>
> **Semántica:** Veremos una manera formal de especificar la semántica de un lenguaje más adelante. Sin embargo, de 
> momento conviene decir que la semántica describe el comportamiento de las instrucciones de nuestro lenguaje. Por 
> ejemplo, para las estructuras `if` y `for` antes definidas tenemos:
>
> - El condicional `if` ejecuta un bloque de instrucciones siempre y cuando la condición sea verdadera.
>
> - La estructura de repetición `for` inicializa la variable de control, ejecuta su cuerpo mientras la condición sea 
> verdadera y al final de cada iteración actualiza dicha variable de control.
>
> **Bibliotecas:** **Java** cuenta con una gran variedad de bibliotecas que permiten escribir programas más detallados. 
> Algunos ejemplos clásicos son:
>
> - La biblioteca `javax.swing` para diseño de interfaces gráficas.
> - La biblioteca `java.math` con algunas funciones matemáticas comunes.
>
> **Convenciones de programación:** Las convenciones son parte de la *jerga* que se maneja en un determinado lenguaje. 
> El no seguirlas no afecta al comportamiento del programa. Son consideradas buenas prácticas. Por ejemplo:
>
> - Nombrar las clases comenzando con mayúscula.
> - Nombrar las variables y funciones con minúsculas.
> - Declarar siempre las variables antes de usarlas.
> - Usar los identificadores `i`,`j`,`k`,... para nombrar variables de control.
> - Colocar las llaves junto al nombre de las estructuras de control.

---

> 📝 **Actividad.**   
> De la forma en que hicimos el análisis sobre el lenguaje **Java** realiza un análisis sobre otro lenguaje, por ejemplo
> **Haskell**.

---

> 📚 **Referencias.**   
> 1. Shriram Krishnamurthi, *Programming Languages: Application and Interpretation*, Primera Edición, 2007.
> 1. Karla Ramírez, Manuel Soto, *Notas para el curso de Lenguaje de Programación*, Facultad de Ciencias UNAM, revisión 2022-1.
> 1. Javier Enríquez, *Notas para el curso de Lenguajes de Programación*, Facultad de Ciencias UNAM, revisión 2022-1.

---

[`Anterior`](../tema01/README.md) | [`Siguiente`](../tema03/README.md)
