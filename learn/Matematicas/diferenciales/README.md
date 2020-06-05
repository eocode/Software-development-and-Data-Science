# Ecuaciones diferenciales<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)
  - [Ejemplos de aplicación](#ejemplos-de-aplicación)
  - [¿Qupe es una ecuación diferencial?](#qupe-es-una-ecuación-diferencial)
  - [¿Cuál es la variable dependiente y la variable independiente en una ecuación?](#cuál-es-la-variable-dependiente-y-la-variable-independiente-en-una-ecuación)
  - [¿Qué tipos de ecuaciones diferenciales podemos encontrar?](#qué-tipos-de-ecuaciones-diferenciales-podemos-encontrar)
  - [Orden y linealidad de una ecuación](#orden-y-linealidad-de-una-ecuación)
  - [¿Qué significa solucionar una ecuación diferencial?](#qué-significa-solucionar-una-ecuación-diferencial)
  - [Conceptos básicos de cálculo](#conceptos-básicos-de-cálculo)
    - [Relación Derivada-Integral](#relación-derivada-integral)
    - [Potencias con misma base](#potencias-con-misma-base)
    - [Propiedades trigonometricas](#propiedades-trigonometricas)
    - [Tablas de integrales](#tablas-de-integrales)
    - [Propiedad ln](#propiedad-ln)
- [Ecuaciones diferenciales de primer orden](#ecuaciones-diferenciales-de-primer-orden)
  - [Ecuación separable](#ecuación-separable)
    - [Ejemplo](#ejemplo)
    - [Ejemplo de ecuación separable](#ejemplo-de-ecuación-separable)
    - [Saber si una ecuación es separable](#saber-si-una-ecuación-es-separable)
  - [Método de sustitución lineal](#método-de-sustitución-lineal)
    - [Ejemplo](#ejemplo-1)
    - [Ejemplo de sustitución lineal](#ejemplo-de-sustitución-lineal)
  - [Ecuaciones diferenciales exactas](#ecuaciones-diferenciales-exactas)
    - [Ejemplo](#ejemplo-2)
    - [Ejemplo 2](#ejemplo-2)
  - [Funciones Homogéneas ¿Cómo identificarlas?](#funciones-homogéneas-cómo-identificarlas)
    - [Ejemplo para comprobar si es homogenea](#ejemplo-para-comprobar-si-es-homogenea)
      - [Método por formula](#método-por-formula)
      - [Método por inspección](#método-por-inspección)
    - [Ejemplo de función homogenea](#ejemplo-de-función-homogenea)
  - [Ecuaciones con coeficientes lineales](#ecuaciones-con-coeficientes-lineales)
    - [Ejemplo de ecuación con coeficientes lineales](#ejemplo-de-ecuación-con-coeficientes-lineales)
  - [Qué es un factor integrante](#qué-es-un-factor-integrante)
      - [Caso 1](#caso-1)
      - [Caso 2](#caso-2)
      - [Caso 3](#caso-3)
    - [Ejemplo Factor integrante caso 1:](#ejemplo-factor-integrante-caso-1)
    - [Ejemplo Factor integrante caso 2:](#ejemplo-factor-integrante-caso-2)
    - [Ejemplo Factor integrante caso 3:](#ejemplo-factor-integrante-caso-3)
  - [Ecuaciones diferenciales lineales](#ecuaciones-diferenciales-lineales)
    - [Ejemplo de ecuaciones diferenciales lineales](#ejemplo-de-ecuaciones-diferenciales-lineales)
  - [Ejercicios](#ejercicios)
    - [Soluciones](#soluciones)
- [Ecuaciones diferenciales de segundo orden](#ecuaciones-diferenciales-de-segundo-orden)
  - [¿Qué es una solución linealmente independiente?](#qué-es-una-solución-linealmente-independiente)
  - [Ecuaciones lineales homogeneas de coeficientes constantes](#ecuaciones-lineales-homogeneas-de-coeficientes-constantes)
    - [Ejemplo](#ejemplo-3)
  - [Ecuaciones lineales homogéneas con raíces complejas](#ecuaciones-lineales-homogéneas-con-raíces-complejas)
    - [Ejemplo](#ejemplo-4)
  - [Ecuación diferencial no homogenea](#ecuación-diferencial-no-homogenea)
    - [Coeficientes indeterminados](#coeficientes-indeterminados)

# Introducción

La ecuaciones diferenciales nos sirven para **crear modelos matemáticos de cosas que existen en la realidad que dependen de alguna variable como el tiempo**, un ejemplo de esto sería saber la variación en la temperatura de un objeto a lo largo de diferentes rangos de tiempo.

## Ejemplos de aplicación

<div align="center">
  <img src="img/1.png">
</div>

<div align="center">
  <img src="img/2.png">
</div>

## ¿Qupe es una ecuación diferencial?

**Es la relación entre una función, una variable y su derivada.** Recordemos que una derivada representa una **razón de cambio**, y cuando hablamos de una función f(t) está refiriéndonos a que **cambia con el tiempo o alguna otra variable.**

Hay dos conceptos que debemos tener completamente claros antes de continuar a fondo con las ecuaciones diferenciales.

<div align="center">
  <img src="img/3.png">
</div>

## ¿Cuál es la variable dependiente y la variable independiente en una ecuación?

Siempre que estemos derivando con respecto a una función, esa será nuestra variable dependiente.

<div align="center">
  <img src="img/4.png">
</div>

## ¿Qué tipos de ecuaciones diferenciales podemos encontrar?

* **Ecuaciones diferenciales ordinarias** **(EDO).** Estas ecuaciones son aquellas que **solo tienen una variable dependiente.**
* **Ecuaciones diferenciales parciales** **(EDP)**, estas son aquellas que cuentan con más de una variable independiente.

<div align="center">
  <img src="img/5.png">
</div>

## Orden y linealidad de una ecuación

 También podemos clasificar las ecuaciones diferenciales de acuerdo con su orden y linealidad que tengan.

**El orden de una ecuación diferencial se refiere a la máxima derivada** que aparezca en una la ecuación.

<div align="center">
  <img src="img/6.png">
</div>

La **linealidad** se basa en la variable dependiente de una ecuación diferencial, si dicha variable no tiene ningún exponente significa que la ecuación es lineal, mientras que si tiene algún cambio exponencial entonces es una ecuación no lineal.

<div align="center">
  <img src="img/7.png">
</div>

## ¿Qué significa solucionar una ecuación diferencial?

Mientras que en las ecuaciones normales su solución era encontrar un número que cumpliera la igualdad de la ecuación; **en las ecuaciones diferenciales se va a buscar una función o conjunto de función que cumpla la igualdad.**

> En ciertos problemas nos vamos a encontrar que una ecuación diferencial tiene alguna condición donde la función se le denota un valor, este valor es el valor inicial de una ecuación y nos servirá para encontrar soluciones específicas.

<div align="center">
  <img src="img/8.png">
</div>

## Conceptos básicos de cálculo

Debemos de tener claros tres conceptos básicos que nos servirán de herramientas a la hora de adentrarnos en las ecuaciones diferenciales de primer orden.

<div align="center">
  <img src="img/9.png">
</div>

### Relación Derivada-Integral
Si tenemos la derivada de una función podemos integrar para obtener la función original, y si se tiene la integral de una función se deriva para obtener la función. La derivada y la integral son operaciones que se complementan entre sí.

### Potencias con misma base
Si tenemos potencias con misma base a la hora de multiplicar las potencias se suman, si se trata de dividir entonces las potencias se restarán y por último si el exponente es negativo se puede representar como una fracción de la base elevado al exponente en su valor positivo.

### Propiedades trigonometricas
 
<div align="center">
  <img src="img/01.png">
</div>

### Tablas de integrales

<div align="center">
  <img src="img/02.png">
</div>

<div align="center">
  <img src="img/03.png">
</div>

### Propiedad ln
Para poder eliminar el logaritmo natural de nuestra ecuación deberemos convertir este en la potencia de e. También, si tenemos alguna constante multiplicando a logaritmo natural entonces podemos representarlo como la potencia de dicho logaritmo.

<div align="center">
  <img src="img/10.png">
</div>

<div align="center">
  <img src="img/11.png">
</div>

# Ecuaciones diferenciales de primer orden

## Ecuación separable

Como su nombre lo indica, **es aquella donde puedes separar a cada lado de tu ecuación todo lo que dependa de tu componente x y del otro lado todo lo que dependa de y**. Al final solo debes integrar cada lado para poder sacar su función. Cada lado estará constituido por una función y una derivada donde ambas dependen de la misma variable.

<div align="center">
  <img src="img/12.png">
</div>

### Ejemplo

<div align="center">
  <img src="img/13.png">
</div>

### Ejemplo de ecuación separable

Recordemos que la ecuación diferencial tiene una solución general, pero si cuentas con un valor inicial entonces ya contaras con una solución especifica.

**Lo primero a la hora de iniciar será expresar las derivadas como una división** en caso de no tenerlas así.

**Una vez separadas las variables nos quedaría integrar**, hacemos esto pues tenemos las derivadas y queremos buscar la función de esta.

> Recordemos que si tenemos la integral de una división donde una función se encuentra en el denominador y su derivada en la parte superior eso es igual a logaritmo natural de la función.

Propiedad

<div align="center">
  <img src="img/14.png">
</div>

<div align="center">
  <img src="img/15.png">
</div>

<div align="center">
  <img src="img/16.png">
</div>

### Saber si una ecuación es separable

Existe un procedimiento que nos hará saber si una ecuación es separable, dicho procedimiento será bastante útil para aquellas ecuaciones donde no tenemos claro si es separable o no.

<div align="center">
  <img src="img/17.png">
</div>

Los pasos son los siguientes:

* Asignamos valores a _**x**_ y _**y**_ de tal forma que nos de un valor diferente a 0.
* Vamos a calcular una nueva función donde multiplicaremos el resultado de nuestra función con el valor que asignamos a _**x**_ y la variable _**y**_ por el resultado de la función con la variable _**x**_ y el valor asignado a _**y**_.
* Por último, será comprobar si la función evaluada en el anterior paso es igual a multiplicar la función del primer paso por nuestra ecuación.

Si aplicamos estos pasos, además de saber si la ecuación es separable, obtendremos la separación de la ecuación.

<div align="center">
  <img src="img/18.png">
</div>

## Método de sustitución lineal

Este método es **aplicable a los casos donde la ecuación tiene a la derivada de un lado** y la función del otro.

> Este método consiste en **sustituir el polinomio de la derecha de la ecuación por una nueva variable.** Después, hallar la diferencial de esta nueva variable.

Una vez conseguida la derivada, dividiremos toda la ecuación por la derivada de x (dx) haciendo que se cancele dx. Con está nueva ecuación podemos despejar dy/dx y con ello reemplazarla en la ecuación principal.

Al final obtendremos una nueva ecuación separable, la cual ya sabemos resolver. Una vez resuelta tendremos que volver a sustituir valores con la ecuación original.

<div align="center">
  <img src="img/19.png">
</div>

### Ejemplo

<div align="center">
  <img src="img/20.png">
</div>

<div align="center">
  <img src="img/21.png">
</div>

### Ejemplo de sustitución lineal

<div align="center">
  <img src="img/22.png">
</div>

<div align="center">
  <img src="img/23.png">
</div>

## Ecuaciones diferenciales exactas

Estas ecuaciones cumplen dos condiciones:

* Puedan ser representadas de la forma **M(x, y)dx + N(x, y)dy = 0**
* La derivada de M con respecto a la derivada de y sea igual a la derivada de N con la derivada de x
dM/dy = dN/dx

<div align="center">
  <img src="img/24.png">
</div>

> Para resolver una ecuación exacta primero debemos verificar que, si sea una ecuación exacta, una vez verificada debemos integrar a M o a N.

* Una vez integrada M o N, debemos derivar a F con respecto a la otra variable que no integramos.
* Por último, integramos la ecuación para obtener nuestra solución.

### Ejemplo

1. **Verificar que la función es exacta**

<div align="center">
  <img src="img/25.png">
</div>

Derivando M respecto a y

<div align="center">
  <img src="img/26.png">
</div>

Derivando N respecto a x

<div align="center">
  <img src="img/27.png">
</div>

Comprobamos que ambos resultados son iguales

<div align="center">
  <img src="img/28.png">
</div>

2. **Integrar a M o a N**

<div align="center">
  <img src="img/29.png">
</div>

Elegimos la que sea más sencilla, en este caso **M**

<div align="center">
  <img src="img/30.png">
</div>

> g(y) es una constante que depende de y, por lo tanto cuando se derive será 0

3. **Derivar a F con respecto a la otra variable**

<div align="center">
  <img src="img/31.png">
</div>

<div align="center">
  <img src="img/32.png">
</div>

4. **Integrar para obtener la constante**

<div align="center">
  <img src="img/33.png">
</div>

Finalmente obtenemos el resultado sustituyendo F por g(y)

### Ejemplo 2

<div align="center">
  <img src="img/34.png">
</div>

Identificar y escribir quien es M y quien N

<div align="center">
  <img src="img/35.png">
</div>

Si las derivadas son iguales, es exacta

<div align="center">
  <img src="img/36.png">
</div>

La expresión es igual, por lo tanto elegimos la que sea más fácil de integrar

<div align="center">
  <img src="img/37.png">
</div>

<div align="center">
  <img src="img/38.png">
</div>

La constante es una función que depende de x

<div align="center">
  <img src="img/39.png">
</div>

Derivamos con respecto a X

<div align="center">
  <img src="img/40.png">
</div>

Esto, debe ser igual que M

<div align="center">
  <img src="img/41.png">
</div>

Simplificamos la expresión

<div align="center">
  <img src="img/42.png">
</div>

Volvemos a integrar

<div align="center">
  <img src="img/43.png">
</div>

Finalmente completamos la función y obtenemos el resultado

<div align="center">
  <img src="img/44.png">
</div>

## Funciones Homogéneas ¿Cómo identificarlas?

**En caso de que tengamos una ecuación que no sea separable**, **ni se pueda realizar una sustitución lineal**, **ni sea una ecuación exacta entonces** chequemos si es una función homogénea.

Para identificar si una ecuación es homogénea contamos con dos métodos:

* **Aplicación de fórmula:** si tenemos la siguiente ecuación f(tx, ty) = tnf(x, y), entonces f(x, y) es homogénea de grado n.

<div align="center">
  <img src="img/45.png">
</div>

* **Inspeccionar grados de términos:** si el grado de cada termino del polinomio es el mismo entonces la función es homogénea.

> Para solucionar una ecuación homogénea debemos seguir los siguientes pasos:

* Verificar que la función sea homogénea.
* Cambiamos una de las variables, _x_ la cambiamos por _yv_ si _M_ es más sencilla o _y_ la cambiamos por _xv_ si _N_ es más sencilla.
* Realizamos una sustitución, con ello obtendremos una derivada.
   Integramos para obtener la función.

<div align="center">
  <img src="img/51.png">
</div>

### Ejemplo para comprobar si es homogenea

<div align="center">
  <img src="img/46.png">
</div>

#### Método por formula

Reemplazamos con la formula

<div align="center">
  <img src="img/47.png">
</div>

Solucionamos

<div align="center">
  <img src="img/48.png">
</div>

Factorizamos

<div align="center">
  <img src="img/49.png">
</div>

Como t**4 multiplica  a la función, por lo tanto es homogenea de grado 4

#### Método por inspección

Basta con mirar los exponentes

<div align="center">
  <img src="img/50.png">
</div>

### Ejemplo de función homogenea

Recuerda que el método de solución de ecuaciones homogéneas lo que busca es realizar dos sustituciones para obtener al final una ecuación separable.

<div align="center">
  <img src="img/52.png">
</div>

Realizamos una sustitución

<div align="center">
  <img src="img/53.png">
</div>

<div align="center">
  <img src="img/54.png">
</div>

Resolvemos

<div align="center">
  <img src="img/55.png">
</div>

Multipliquemos los terminos por su factor

<div align="center">
  <img src="img/56.png">
</div>

Simplificamos

<div align="center">
  <img src="img/57.png">
</div>

Tenemos una ecuación separable

<div align="center">
  <img src="img/58.png">
</div>

Resolvemos la acuación separable integrando

<div align="center">
  <img src="img/59.png">
</div>

Eliminamos el logaritmo con un exponencial

<div align="center">
  <img src="img/60.png">
</div>

Simplificamos y resolvemos

Sustituimos u de la sustitución que hicimos al inicio
<div align="center">
  <img src="img/62.png">
</div>

Encontramos la función
<div align="center">
  <img src="img/61.png">
</div>

## Ecuaciones con coeficientes lineales

Puede que te encuentres con una ecuación de coeficientes lineales.

Para reconocer esta ecuación veremos que al igual que las ecuaciones de sustitución lineal, la ecuación con coeficientes lineales **cuenta un x, y y una constante**, además los coeficientes que acompañan esas variables son constantes.

**La sustitución lineal nos funciona cuando tenemos un solo polinomio que reemplazar**, en este caso al encontrarnos con dos polinomios queda totalmente descartado el método de sustitución lineal.

<div align="center">
  <img src="img/63.png">
</div>

Para resolver esta ecuación debemos reemplazar la variable x por una nueva variable más una constante, hacemos lo mismo con la variable y para poder obtener una ecuación homogénea y con ello poder buscar una ecuación separable que nos dará la solución.

<div align="center">
  <img src="img/64.png">
</div>

### Ejemplo de ecuación con coeficientes lineales

Hacemos la traslación de ejes, ¿pero con qué valor?

<div align="center">
  <img src="img/65.png">
</div>

Tenemos un sistema de ecuaciones

<div align="center">
  <img src="img/66.png">
</div>

Por el método de eliminación, multiplicamos por -1

<div align="center">
  <img src="img/67.png">
</div>

Nos queda una ecuación con una incognita

<div align="center">
  <img src="img/68.png">
</div>

<div align="center">
  <img src="img/69.png">
</div>

y obtenemos dx y dy

<div align="center">
  <img src="img/70.png">
</div>

Ahora sustituimos en nuestra ecuación inicial

<div align="center">
  <img src="img/71.png">
</div>

Simplificamos y nos queda una ecuación homogenea

<div align="center">
  <img src="img/72.png">
</div>

Realizamos la sustitución

<div align="center">
  <img src="img/73.png">
</div>

<div align="center">
  <img src="img/74.png">
</div>

<div align="center">
  <img src="img/75.png">
</div>

Separamos du de dw

<div align="center">
  <img src="img/76.png">
</div>

simplificamos

<div align="center">
  <img src="img/77.png">
</div>

De forma que tenemos una ecuación separable

<div align="center">
  <img src="img/78.png">
</div>

Solucionando la ecuación separable

<div align="center">
  <img src="img/79.png">
</div>

Integramos, para la segunda integral, multiplicamos arriba y abajo por 2

<div align="center">
  <img src="img/80.png">
</div>

<div align="center">
  <img src="img/81.png">
</div>

Simplificamos con los exponenciales

<div align="center">
  <img src="img/82.png">
</div>

Reemplazamos w

<div align="center">
  <img src="img/83.png">
</div>

Sustituimos en términos de x e y

<div align="center">
  <img src="img/84.png">
</div>

## Qué es un factor integrante

Es un termino por el cual puedes multiplicar una ecuación para convertirla en una ecuación exacta.

Existen tres casos de factores integrantes:

* El factor integrante solo dependerá de _x_.
* El factor integrante solo dependerá de _y_.
* El factor integrante dependerá tanto de _x_ como de _y_.

<div align="center">
  <img src="img/85.png">
</div>

**¿Qué pasa si múltiplicamos los términos por x?**

<div align="center">
  <img src="img/86.png">
</div>

* **Caso 1:** El factor integrante solo depende de x
* **Caso 2:** El factor integrante solo depende de y
* **Caso 3:** El factor integrate depende de xy

#### Caso 1

<div align="center">
  <img src="img/87.png">
</div>

#### Caso 2

<div align="center">
  <img src="img/88.png">
</div>

#### Caso 3

<div align="center">
  <img src="img/89.png">
</div>

### Ejemplo Factor integrante caso 1:

Nuestro primero paso será comprobar que la derivada parcial de M con respecto a y sea diferente a la derivada parcial de N con respecto a x.

Una vez demostrado el primer paso, para hallar el factor integrante aplicaremos la siguiente formula:
(dM/dy – dN/dx)/N = g(x)

Si el resultado de la función depende de X, entonces estamos hablando del primer caso en factores integrantes.

**Validamos que no es exacta**

<div align="center">
  <img src="img/90.png">
</div>

**Aplicamos la formula y la ecuación**

<div align="center">
  <img src="img/91.png">
</div>

<div align="center">
  <img src="img/92.png">
</div>

Encontramos una ecuación exacta resultante de una no exacta

<div align="center">
  <img src="img/93.png">
</div>

Nos queda resolver está ecuación

<div align="center">
  <img src="img/94.png">
</div>

Integramos la que sea más fácil, en este caso N y obtenemos la función

<div align="center">
  <img src="img/95.png">
</div>

Tenemos la función con una constante que depende de x

<div align="center">
  <img src="img/95.png">
</div>

Tenemos nuestra función

<div align="center">
  <img src="img/96.png">
</div>

Resolvemos  derivando f respecto a x

<div align="center">
  <img src="img/97.png">
</div>

Igualamos con la otra ecuación

<div align="center">
  <img src="img/98.png">
</div>

Reducimos

<div align="center">
  <img src="img/99.png">
</div>

Volvemos a integrar para tener la función para obtener g(x)

<div align="center">
  <img src="img/100.png">
</div>

Para la ecuación final sustituimos en nuestra función

### Ejemplo Factor integrante caso 2:

**Verificamos que se de tipo 2**

<div align="center">
  <img src="img/101.png">
</div>

Aplicamos la formula y vemos que depende sólo de y

<div align="center">
  <img src="img/102.png">
</div>

Sustituimos para obtener el factor integrante

<div align="center">
  <img src="img/103.png">
</div>

<div align="center">
  <img src="img/104.png">
</div>

Obtenemos un nuevo M y N

<div align="center">
  <img src="img/105.png">
</div>

Verificamos si las derivadas son iguales

<div align="center">
  <img src="img/106.png">
</div>

Vemos que es exacta y ahora tenemos una nueva ecuación diferencial, integramos N por ser más sencilla

<div align="center">
  <img src="img/107.png">
</div>

Resolvemos la ecuación

<div align="center">
  <img src="img/108.png">
</div>

### Ejemplo Factor integrante caso 3:

Validamos si es exacta caso por caso

Evaluando caso 1

<div align="center">
  <img src="img/109.png">
</div>

Evaluando caso 2

<div align="center">
  <img src="img/110.png">
</div>

Evaluamos caso 3, cumple y aplicamos la formula

<div align="center">
  <img src="img/111.png">
</div>

Integramos para encontrar el factor integrante

<div align="center">
  <img src="img/112.png">
</div>

Multipliquemos toda la ecuación

<div align="center">
  <img src="img/113.png">
</div>

Vemos que podemos simplificar y obtenemos un nuevo m y n

<div align="center">
  <img src="img/114.png">
</div>

Derivamos respecto a m y n y vemos que son iguales

<div align="center">
  <img src="img/115.png">
</div>

Solución de la ecuación exacta

[Factor integrante](/learn/Matematicas/diferenciales/factorintegrantecaso3.pdf)

## Ecuaciones diferenciales lineales

El **factor integrante** además de ayudarnos a solucionar ecuaciones que en un principio no eran exactas, también nos ayudara a solucionar ecuaciones diferenciales lineales.

<div align="center">
  <img src="img/116.png">
</div>

La ecuación diferencial lineal va a tener una función que multiplica por la derivada de y con respecto a la derivada de x, más una segunda función que multiplica a y todo esto que es igual a una tercera función, cada función va a depender de x.

Qué pasaría si

<div align="center">
  <img src="img/117.png">
</div>

El primer paso es dividir todo sobre f1 y aplicamos el factor integrante

<div align="center">
  <img src="img/118.png">
</div>

### Ejemplo de ecuaciones diferenciales lineales

Aplicamos lo siguiente

<div align="center">
  <img src="img/119.png">
</div>

Para la siguiente ecuación, dividimos por x3

<div align="center">
  <img src="img/120.png">
</div>

Obtenemos P y Q

<div align="center">
  <img src="img/121.png">
</div>

Aplicamos la formula

<div align="center">
  <img src="img/122.png">
</div>

Quitamos e y obtenemos el factor integrante

<div align="center">
  <img src="img/123.png">
</div>

Resolvemos sustituyendo

<div align="center">
  <img src="img/124.png">
</div>

## Ejercicios

<div align="center">
  <img src="img/125.png">
</div>

<div align="center">
  <img src="img/126.png">
</div>

<div align="center">
  <img src="img/127.png">
</div>
<div align="center">
  <img src="img/128.png">
</div>
<div align="center">
  <img src="img/129.png">
</div>
<div align="center">
  <img src="img/130.png">
</div>

### Soluciones

<div align="center">
  <img src="img/ej1.jpg">
</div>

<div align="center">
  <img src="img/ej2.jpg">
</div>

<div align="center">
  <img src="img/ej3.jpg">
</div>

# Ecuaciones diferenciales de segundo orden

**Estas ecuaciones son aquellas donde está la segunda derivada de una función.** Existe un concepto muy importante: Soluciones linealmente independientes

## ¿Qué es una solución linealmente independiente?

Son aquellas donde **no existe ninguna constante por la que puedas multiplicar para obtener o llegar a otra solución.**

Una ecuación diferencial de segundo orden solo **tiene dos soluciones linealmente independientes**, o mejor dicho, **una solución diferencial de n orden solo tiene n soluciones linealmente independientes.**

**Las soluciones linealmente independientes de una ecuación diferencial de segundo orden juntas forman lo que se conoce como Combinación lineal**, la cual vendría siendo la solución general de la ecuación.

<hr/>

Evaluemos si y=ex es una solución de la ecuación encontrando primera, segunda derivada y reemplazando en la ecuación

<div align="center">
  <img src="img/131.png">
</div>

Con una constante también es solución

<div align="center">
  <img src="img/133.png">
</div>

Por lo tanto las ecuaciones de n orden tienen n soluciones independientes

<div align="center">
  <img src="img/132.png">
</div>

## Ecuaciones lineales homogeneas de coeficientes constantes

Las ecuaciones lineales homogéneas **son aquellas que son igualadas a 0**. Para que sean de coeficientes constantes como su nombre lo indica, todos **los coeficientes de la ecuación deben de ser una constante y no una función.**

Para resolver este tipo de ecuaciones debemos **buscar su ecuación característica**, la solución a esta ecuación nos dará las constantes para nuestras soluciones linealmente independientes y con ello nuestra solución general.

<div align="center">
  <img src="img/134.png">
</div>

Encontramos la ecuación catacterística

<div align="center">
  <img src="img/135.png">
</div>

### Ejemplo

> Vemos una ecuación con **coeficientes constantes** ya que los terminos que acompañan a y no dependen de x, es **homogenea** por que es  igual a 0

<div align="center">
  <img src="img/136.png">
</div>

Asumimos una solución

<div align="center">
  <img src="img/137.png">
</div>

Intentamos encontrar una ecuación carácteristica

<div align="center">
  <img src="img/138.png">
</div>

Verificamos con el procedimiento

<div align="center">
  <img src="img/139.png">
</div>

Reemplazamos en la ecuación y factorizamos

<div align="center">
  <img src="img/140.png">
</div>

Solucionamos la ecuación cuadrática con la chicharronera

<div align="center">
  <img src="img/141.png">
</div>

Tenemos nuestras dos soluciones

<div align="center">
  <img src="img/142.png">
</div>

La solución general seria

<div align="center">
  <img src="img/143.png">
</div>

## Ecuaciones lineales homogéneas con raíces complejas

Al resolver ecuaciones lineales homogéneas podrá darse el caso donde sus soluciones **incluyan un término imaginario o letra i**, **el cual es dado por la raíz cuadrada de un número negativo.**

<div align="center">
  <img src="img/144.png">
</div>

No se puede dejar una solución expresada con números imaginarios

<div align="center">
  <img src="img/145.png">
</div>

### Ejemplo

<div align="center">
  <img src="img/146.png">
</div>

<div align="center">
  <img src="img/147.png">
</div>

La solución quedaría

<div align="center">
  <img src="img/148.png">
</div>

Pero no podemos expresarla como número negativo por lo que aplicamos la formula

<div align="center">
  <img src="img/149.png">
</div>

## Ecuación diferencial no homogenea

A este punto ya hemos aprendido como **resolver ecuaciones de n orden que sean homogéneas ósea que estén igualadas a 0**, **pero que pasa con aquellas donde están igualadas a alguna función o simplemente diferente de 0.**

Estas ecuaciones diferenciales no homogéneas **tienen una ecuación diferencial homogénea relacionada**, simplemente es una ecuación donde **vamos a anular la función** a la cual esta igualada nuestra ecuación o mejor dicho **igualarla a 0.**

<div align="center">
  <img src="img/150.png">
</div>

El proceso para resolver una ecuación no homogénea es:

* Encontrar la solución general de la ecuación diferencial homogénea relacionada. Recuerda que encontrar la solución general primero debes hallar las soluciones linealmente independientes.
* Encontrar la solución particular para la ecuación diferencial no homogénea. Existen dos métodos para encontrar estas soluciones **Coeficientes Indeterminados** y **Variación de parámetros**.
* Por último, la solución de nuestra ecuación diferencial no homogénea será la suma de la solución del primer paso más la del segundo paso.

<div align="center">
  <img src="img/151.png">
</div>

### Coeficientes indeterminados

