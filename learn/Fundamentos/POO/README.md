# Programación Orientada a Objetos <!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)
  - [Qué resuelve la programación orientada a objetos](#qué-resuelve-la-programación-orientada-a-objetos)
  - [Paradigama Orientado a Objetos](#paradigama-orientado-a-objetos)
  - [Lenguajes orientados a objetos](#lenguajes-orientados-a-objetos)
    - [Java](#java)
    - [PHP](#php)
    - [Python](#python)
    - [Javascript](#javascript)
  - [Entorno de desarrollo](#entorno-de-desarrollo)
  - [Diagramas de modelado](#diagramas-de-modelado)
  - [UML](#uml)
    - [Las clases](#las-clases)
    - [Asociación](#asociación)
    - [Herencia](#herencia)
    - [Agregación](#agregación)
    - [Composición](#composición)

# Introducción

* Analizar
  * Observación
  * Entendimiento
  * Lectura
* Plasmar
  * Diagramas
* Programar
  * Lenguajes de programación

## Qué resuelve la programación orientada a objetos

La programación Orientada a Objetos **nace de los problemas creados por la programación estructurada** y nos ayuda a resolver cierto problemas como:

* **Código muy largo**: A medida que un sistema va creciendo y se hace más robusta el código generado se vuelve muy extenso haciéndose difícil de leer, depurar, mantener.
* **Si algo falla, todo se rompe:** Ya que con la programación estructurada el código se ejecuta secuencialmente al momento de que una de esas líneas fallara todo lo demás deja de funcionar.

> Difícil de mantener.

<div align="center">
  <img src="img/1.png">
</div>

Ejemplos de código espaguetti

<div align="center">
  <img src="img/2.png">
</div>

## Paradigama Orientado a Objetos

La Programación Orientada a Objetos viene de una filosofía o forma de pensar que es la Orientación a Objetos y esto **surge a partir de los problemas que necesitamos plasmar en código**.

> Es analizar un problema en forma de objetos para después llevarlo a código, eso es la Orientación a Objetos.

**Un paradigma es una teoría que suministra la base y modelo para resolver problemas.** La paradigma de Programación Orientada a Objetos se compone de 4 elementos:

* Clases
* Propiedades
* Métodos
* Objetos

Y 4 Pilares:

* Encapsulamiento
* Abstracción
* Herencia
* Polimorfismo

> **Paradigma** Teoría que suministra la base y modelo para resolver problemas

## Lenguajes orientados a objetos

<div align="center">
  <img src="img/3.png">
</div>

### Java
* Orientado a objetos naturalmente
* Android
* Server side

### PHP
* Lenguaje interpretado
* Pensado para la web

### Python
* Diseñado para ser fácil de usar
* Múltiples usos: Web, Server Side, Anállisis de Datos, Machine Leaning

### Javascript
* Lenguaje interpretado
* Orientado a objetos pero basado en prototipos
* Pensado para la web

## Entorno de desarrollo

* Visual Studio Code

https://code.visualstudio.com/

## Diagramas de modelado

* **OMT**: Object Modeling Techniques. Es una metodología para el análisis orientado a objetos.
* **UML**: Unified Modeling Language o Lenguaje de Modelado Unificado. Tomó las bases y técnicas de OMT unificándolas. Tenemos más opciones de diagramas como lo son **Clases, Casos de Uso, Objetos, Actividades, Iteración, Estados, Implementación.**

## UML

Como ya viste UML significa Unified Modeling Language el cual es un lenguaje estándar de modelado de sistemas orientados a objetos.

### Las clases

<div align="center">
  <img src="img/4.png">
</div>

En la parte superior se colocan los atributos o propiedades, y debajo las operaciones de la clase. Notarás que el primer caracter con el que empiezan es un símbolo. Este denotará la visibilidad del atributo o método, esto es un término que tiene que ver con Encapsulamiento y veremos más adelante a detalle.

Estos son los niveles de visibilidad que puedes tener:

```
- private
+ public
# protected
~ default
```

Una forma de representar las relaciones que tendrá un elemento con otro es a través de las flechas en UML, y aquí tenemos varios tipos, estos son los más comunes:

### Asociación

<div align="center">
  <img src="img/5.png">
</div>

Como su nombre lo dice, notarás que cada vez que esté referenciada este tipo de flecha significará que ese elemento contiene al otro en su definición. La flecha apuntará hacia la dependencia.

<div align="center">
  <img src="img/6.png">
</div>

Con esto vemos que la ClaseA está asociada y depende de la ClaseB.

### Herencia

<div align="center">
  <img src="img/7.png">
</div>

Siempre que veamos este tipo de flecha se estará expresando la herencia.
La dirección de la flecha irá desde el hijo hasta el padre.

<div align="center">
  <img src="img/8.png">
</div>

Con esto vemos que la ClaseB hereda de la ClaseA

### Agregación

<div align="center">
  <img src="img/9.png">
</div>

Este se parece a la asociación en que un elemento dependerá del otro, pero en este caso será: Un elemento dependerá de muchos otros. Aquí tomamos como referencia la multiplicidad del elemento. Lo que comúnmente conocerías en Bases de Datos como Relaciones uno a muchos.

<div align="center">
  <img src="img/10.png">
</div>

Con esto decimos que la ClaseA contiene varios elementos de la ClaseB. Estos últimos son comúnmente representados con listas o colecciones de datos.

### Composición

<div align="center">
  <img src="img/11.png">
</div>

Este es similar al anterior solo que su relación es totalmente compenetrada de tal modo que conceptualmente una de estas clases no podría vivir si no existiera la otra.

<div align="center">
  <img src="img/12.png">
</div>
