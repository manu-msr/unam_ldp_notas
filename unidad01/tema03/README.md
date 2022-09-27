[`Lenguajes de Programación`](../../README.md) > [`Unidad 1`](../README.md) > Clasificación de los lenguajes de programación

# Clasificación de los lenguajes de programación

En la actualidad existen miles de lenguajes de programación que pueden clasificarse de acuerdo a sus características o funcionalidades. Los principales criterios de clasificación son: 

- De acuerdo al nivel de abstracción.

- De acuerdo al propósito con el cuál fueron creados.

- De acuerdo al estilo de programación.

## Clasificación de acuerdo al nivel

Con nivel nos referimos al nivel de abstracción, es decir, qué tan cercano es un lenguaje a la arquitectura de la computadora. Existen dos grandes categorías en las que se pueden clasificar los lenguajes de programación, [*de alto nivel*](https://es.wikipedia.org/wiki/Lenguaje_de_alto_nivel) o [*de bajo nivel*](https://es.wikipedia.org/wiki/Lenguaje_de_bajo_nivel). Sin embargo hay quienes consideran una tercera categoría: *de medio nivel*. Todos los lenguajes pertenecen a alguna de éstas tres.

- Los lenguajes de *alto nivel* son independientes a la arquitectura de la computadora, son más comprensibles para el programador y más sencillos de usar. Ejemplos: **Java**, **Haskell**, **Python**.

- Los lenguajes de bajo nivel son lenguajes que presentan muy poca o nula abstracción respecto a las instrucciones de ensamblador. Los comandos del lenguaje se traducen casi directamente a instrucciones del procesador. Los programas escritos en estos lenguajes tienden a ser poco portables. Ejemplos: Ensamblador.

- Los lenguajes de medio nivel se encuentran entre las otras dos categorías, son aquellos que no son muy cercanos a las instrucciones del procesador pero sí puede controlarse el hardware con ellos. Ejemplo: **C**. 

## Clasificación de acuerdo al propósito

Algunos lenguajes son diseñados especialmente para ajustarse o resolver una necesidad particular, estos se conocen como [*lenguajes de propósito específico*](https://es.wikipedia.org/wiki/Lenguaje_espec%C3%ADfico_de_dominio). Por ejemplo:

- [**R**](https://en.wikipedia.org/wiki/R_(programming_language). Diseñado para solucionar problemas de estadística y ciencia de datos.

- [**Prolog**](https://en.wikipedia.org/wiki/Prolog). Diseñado para solucionar problemas lógicos.

- [**PL-SQL**](https://en.wikipedia.org/wiki/PL/SQL). Diseñado para implementar algoritmos que alteran directamente los elementos de una base de datos. 

Por otro lado tenemos lenguajes diseñados para desarrollar software de más de un propósito, llamados [*lenguajes de propósito general*](https://en.wikipedia.org/wiki/General-purpose_language). Por ejemplo: 

- **Java** puede usarse para desarrollar páginas web así como para hacer juegos o aplicaciones para dispositivos móviles. 

- [**Racket**](https://en.wikipedia.org/wiki/Racket_%28programming_language%29) puede usarse para diseñar lenguajes de programación así como para expresar cálculos matemáticos. 

- **Python** puede usarse para desarrollo web y en labores de ciencia de datos.

- [**Perl**](https://es.wikipedia.org/wiki/Perl) y [**Ruby**](https://en.wikipedia.org/wiki/Ruby_(programming_language) pueden usarse tanto para desarrollo web como para desarrollar aplicaciones de escritorio. 

## Clasificación de acuerdo al estilo

Los lenguajes de programación se dividen principalmente en dos estilos, también llamados paradigmas de programación, el *declarativo* y el *imperativo*.

En el paradigma imperativo los programas son una secuencia de instrucciones, con ciclos `while`, `repeat`, `for`, entre otras como principales estructuras de control. Las asignaciones juegan un papel de suma importancia. En este paradigma el programa describe *cómo* se resuelve un problema.

Dentro de este paradigma existen otras subcategorías como lo son:

- **Estructurado:** Los programas son secuencias lineales de código que se van ejecutando en orden una después de la otra. Ejemplos: **C**, [**Pascal**](https://en.wikipedia.org/wiki/Pascal_(programming_language).

- **Orientado a Objetos:** Todos los elementos de estos lenguajes son modelados como objetos, con métodos y atributos.  Ejemplos: **Java**, **Python**, **C++**.

Por otro lado en el paradigma declarativo los programas son vistos como una sucesión de definiciones, siendo la recursión la principal estructura de control. No se tienen ciclos ni operaciones de asignación. Es decir el programa específica *qué* se debe calcular, siendo el cómo completamente irrelevante. 

Las principales subcategorías de este paradigma son:

- **Funcional**: Basados en el Cálculo λ y la Teoría de Categorías. Es un modelo de programación en el que se enfatiza en el uso de funciones y sus aplicaciones más que en comandos y sus ejecuciones. Ejemplos: **Haskell**, **Racket**, **Ocaml**.

- **Lógico:** Basado en la Lógica de Primer Orden las expresiones del lenguaje son Cláusulas de Horn. Ejemplo: **Prolog**.

---

> 👨‍🔬 **Ejemplo.**   
> Analicemos las diferencias entre estos estilos con un ejemplo de la vida cotidiana. 
>
> Imaginemos que estamos a mitad de la calle y se nos antoja un café pero hay dos cafeterías, una a tu izquierda y otra a tu derecha. A la izquierda se encuentra *StarBucles*. Esta cafetería sigue una filosofía en la cual preparan los cafés unicamente de manera imperativa y del otro lado tenemos a *Lambdita Querida* en donde preparan los cafés de forma declarativa. Como no sabes cuál es mejor y no hay nadie cerca para preguntar, te aventuras y decides comprar un café en cada una. 
>
> Primero, visitas StarBucles y pides un Café Capuchino. Dora Compiladora, la barista nueva toma tu pedido, pero no recuerda cómo preparar el café así que consulta el recetario que le dice que siga los siguientes pasos:
>
>1. Preparar el espresso.
>2. Preparar la crema de la leche
>3. Colocar el espresso al fondo de la taza.
>4. Verter la leche cremada sobre el café expresso.
>
> Y listo, Dora te entrega tu café y cruzas la calle para visitar Lambdita Querida. Aquí te atiende Pete Interprete que casualmente también es nuevo, al hacer tu pedido te comenta que se le olvidó qué es un capuchino, pero va a buscar en el listado de bebidas, lo encuentra y observa la siguiente definición:
>
> *__Capuchino:__ Café al que se le añade leche hervida caliente y muy espumosa y que se suele servir espolvoreado con canela o chocolate en polvo.*
>
> Pete prepara una bebida de acuerdo a la definición y te la entrega. Al salir de Lambdita Querida, tienes dos cafés capuchinos, mismo resultado, diferente forma de prepararlos... 
>
> ¡Así funcionan los estilos de programación! Sin importar la forma de solucionar el problema, obtenemos el mismo resultado, el cual puede tener variaciones dependiendo de la forma de programar de lxs programadorxs (el sazón en nuestro ejemplo).

---

> 📝 **Actividad:**
> Describe de forma imperativa y declarativa el proceso para preparar una torta de jamón.

---

Estos son los principales estilos de los lenguajes de programación, sin embargo es difícil encontrar lenguajes modernos que correspondan puramente a un estilo, pues implementan características de diferentes paradigmas. A estos lenguajes se le conocen como lenguajes *multiparadigma*. Como ejemplos de este tipo de lenguajes tenemos a **Java** o **Python** que tienen características estructuradas, orientadas a objetos y funcionales o a **Curry** que tiene características funcionales y lógicas.

A lo largo de estas notas nos enfocaremos en el estudio formal de pequeños lenguajes que hagan uso de los distintos estilos paradigmas de programación y pondremos en práctica todos estos conceptos mediante la implementación de sus distintos intérpretes. Al entender estas nociones podremos elegir el lenguaje de programación más adecuado para resolver un determinado problema.

---

> 📚 **Referencias**
>
> 1. Referencias Karla Ramírez, Manuel Soto, Notas para el curso de Lenguaje de Programación, Facultad de Ciencias UNAM, revisión 2022-1.

---

[`Anterior`](../tema02/README.md) | [`Siguiente`](../../README.md)
