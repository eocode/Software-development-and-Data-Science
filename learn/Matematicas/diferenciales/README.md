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