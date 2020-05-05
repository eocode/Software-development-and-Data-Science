# Cálculo diferencial e integral<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Material](#material)
- [Concepto de derivada](#concepto-de-derivada)
- [Formulas básicas](#formulas-b%c3%a1sicas)
  - [Derivadas de funciones algebraicas: suma y resta](#derivadas-de-funciones-algebraicas-suma-y-resta)
  - [Derivación de funciones algebraicas: Multiplicación](#derivaci%c3%b3n-de-funciones-algebraicas-multiplicaci%c3%b3n)
  - [Derivada de Funciones Algebráicas: División](#derivada-de-funciones-algebr%c3%a1icas-divisi%c3%b3n)
  - [Derivada de Funciones: Potencia/Exponenciales](#derivada-de-funciones-potenciaexponenciales)
  - [Derivada de Funciones Trigonométricas (trascendentales)](#derivada-de-funciones-trigonom%c3%a9tricas-trascendentales)
  - [Derivada de Funciones Exponenciales](#derivada-de-funciones-exponenciales)
- [Aplicaciones de la derivada](#aplicaciones-de-la-derivada)
  - [Optimización](#optimizaci%c3%b3n)
- [Cálculo integral](#c%c3%a1lculo-integral)
  - [Integrales: Fórmulas básicas I](#integrales-f%c3%b3rmulas-b%c3%a1sicas-i)
  - [Integrales: Fórmulas Básicas II](#integrales-f%c3%b3rmulas-b%c3%a1sicas-ii)
  - [Integrales: Fórmulas Básicas III](#integrales-f%c3%b3rmulas-b%c3%a1sicas-iii)
  - [Integrales: Fórmulas básicas IV](#integrales-f%c3%b3rmulas-b%c3%a1sicas-iv)
  - [Integrales: Fórmulas básicas V](#integrales-f%c3%b3rmulas-b%c3%a1sicas-v)
- [Cálculo multivariable](#c%c3%a1lculo-multivariable)
  - [Introducción al Cálculo Multivariable: Derivadas Parciales](#introducci%c3%b3n-al-c%c3%a1lculo-multivariable-derivadas-parciales)
  - [Gradiente](#gradiente)

# Material

[Apuntes](/learn/Matematicas/calculo/calculo.pdf)
[Formulario](/learn/Matematicas/calculo/formulario.pdf)
https://relopezbriega.github.io/blog/2015/12/02/introduccion-al-calculo-con-python/
https://docs.sympy.org/latest/index.htmlx|

# Concepto de derivada

https://www.youtube.com/watch?v=uK4-s0ojHFg&list=PLeySRPnY35dG2UQ35tPsaVMYkQhc8Vp__

<div align="center">
  <img src="img/1.png">
</div>

<div align="center">
  <img src="img/Pendiente.png">
</div>

<div align="center">
  <img src="img/Derivada.png">
</div>

# Formulas básicas
<div align="center">
  <img src="img/Formulaci-n-Derivadas.png">
</div>

## Derivadas de funciones algebraicas: suma y resta
La derivada de una expresión algebraica es la derivada de cada uno de sus términos.

<div align="center">
  <img src="img/2.png">
</div>

## Derivación de funciones algebraicas: Multiplicación

<div align="center">
  <img src="img/3.png">
</div>

<div align="center">
  <img src="img/4.png">
</div>

## Derivada de Funciones Algebráicas: División
<div align="center">
  <img src="img/Formulaci-n-division.png">
</div>

<div align="center">
  <img src="img/5.png">
</div>
<div align="center">
  <img src="img/6.png">
</div>
<div align="center">
  <img src="img/7.png">
</div>

## Derivada de Funciones: Potencia/Exponenciales

Regla de la cadena

<div align="center">
  <img src="img/Formulaci-n-funcion-elevada.png">
</div>

<div align="center">
  <img src="img/8.png">
</div>

## Derivada de Funciones Trigonométricas (trascendentales)

<div align="center">
  <img src="img/formulas-trigonometricas.webp">
</div>

<div align="center">
  <img src="img/9.png">
</div>

<div align="center">
  <img src="img/10.png">
</div>

## Derivada de Funciones Exponenciales
<div align="center">
  <img src="img/DerviadaFuncionesExponenciales.png">
</div>

<div align="center">
  <img src="img/11.png">
</div>

<div align="center">
  <img src="img/12.png">
</div>

# Aplicaciones de la derivada
## Optimización

Se compra un rectuangulo de terreno con 4 **estanques** de separación de 2 metros, se requiere optimizar el valor de base y altura para ese terreno

<div align="center">
  <img src="img/op1.png">
</div>

<div align="center">
  <img src="img/13.png">
</div>

Cuando tu igualas a 0, estas tomando el punto de tu función donde la pendiente es igual a 0 es decir, donde tu función no sube, ni baja. Este tiende a se el punto máximo o mínimo de tu función es decir el valor máximo o mínimo que puede obtener dicha función.

<div align="center">
  <img src="img/14.png">
</div>

**Segunda derivada:**
Se utiliza para saber si lo que hallaste es un valor máximo o mínimo.

Si la segunda derivada te dio negativa quiere decir que estás hallando un máximo.

Pero si la segunda derivada te dio positiva, quiere decir que estás hallando un mínimo.

Es un método para verificar.

En resumen:
``- = máximo``
``+= mínimo``

# Cálculo integral

https://www.youtube.com/watch?v=d7Y9Om4KCUM&list=PLeySRPnY35dEHnMLZGaNEXgHzJ2-TPLWw

* Sumatoria de infinitos rectangulos de longitud n, debajo o encima de una curva.
  * El límite de cuando n tiende al infinito de la suma cuando k = 1 a n de una xk multiplicada por la longitud de un determinado intervalo.
  * O más fácil, sumar muchos rectangulitos, infinitos rectangulitos debajo de la curva o encima de la curva, depende
* Area bajo la curva respecto a un plano


<div align="center">
  <img src="img/15.png">
</div>

## Integrales: Fórmulas básicas I
<div align="center">
  <img src="img/16.png">
</div>

<div align="center">
  <img src="img/17.png">
</div>

<div align="center">
  <img src="img/integral.webp">
</div>

<div align="center">
  <img src="img/18.png">
</div>

## Integrales: Fórmulas Básicas II

<div align="center">
  <img src="img/integration_of_xn.gif">
</div>

<div align="center">
  <img src="img/19.png">
</div>

## Integrales: Fórmulas Básicas III
<div align="center">
  <img src="img/20.png">
</div>

## Integrales: Fórmulas básicas IV

<div align="center">
  <img src="img/integralestrigonometricas.webp">
</div>

<div align="center">
  <img src="img/21.png">
</div>

## Integrales: Fórmulas básicas V
<div align="center">
  <img src="img/22.png">
</div>

# Cálculo multivariable

## Introducción al Cálculo Multivariable: Derivadas Parciales

Las derivadas parciales se aplican cuando tenemos una función en términos de dos o más variables,. Se deriva la función respecto a cada variable por separado. De ésta forma podemos analizar el comportamiento de cada variable.

* Multivariable, las funciones tienen más de una variable, no son lineales sino de varias dimensiones.

<div align="center">
  <img src="img/23.png">
</div>

## Gradiente

Almacena toda la información de la derivada parcial de una función multivariable
* Su simbolo es Nabla
* Se utiliza en ML

<div align="center">
  <img src="img/24.png">
</div>

<div align="center">
  <img src="img/25.png">
</div>