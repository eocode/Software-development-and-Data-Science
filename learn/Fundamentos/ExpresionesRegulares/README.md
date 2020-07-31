# Expresiones regulares <!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)
  - [Aplicaciones](#aplicaciones)
  - [Lenguaje de expresiones regulares](#lenguaje-de-expresiones-regulares)
- [El lenguaje](#el-lenguaje)

# Introducción

Las expresiones regulares **son patrones de caracteres que te permiten ir seleccionando o descartando datos en un archivo de texto como por ejemplo csv, o en una línea o un input, según coincidan o nó con este patrón.**

Prácticamente todos los lenguajes de programación tienen librerías o módulos para manejar expresiones regulares.

Las expresiones regulares pueden ser muy complejas pero no son nada difíciles de entender.

A través de este curso, sin tecnicismos y con ejemplos puntuales, vamos a aprender a utilizarlas para que sean esa herramienta que siempre nos ayude, y sea la primera para solucionar problemas de grandes cantidades de datos en string.

## Aplicaciones

Buscar e investigar sobre Expresiones Regulares puede ser muy intimidante.

``/^(.){5}\w?[a-Z|A-Z|0-9]$/ig``

En serio pueden parecer muy, muy raras; pero la verdad es que no lo son.

* Buscar patrones entre palabras
* Encontrar solo numeros
* Encontrar solo ciertos caracteres
* Busquedas en grandes cantidades de texto
* Validaciones

## Lenguaje de expresiones regulares

Con las expresiones regulares vamos a solucionar problemas reales, problemas del día a día.

**¿Qué pasa si queremos buscar en un texto (txt, csv, log, cualquiera), todos los números de teléfonos que hay?**

Tendríamos que considerar por ejemplo, que un teléfono de México serían 10 dígitos; hay quienes los separan con guión, hay quienes los separan con puntos, hay quienes no los separan sino que tienen los 10 dígitos exactos, y este patrón puede cambiar para otros países.

Esto mismo sucede con números de tarjetas de crédito, códigos postales, dirección de correos, formatos de fechas o montos, etc.

# El lenguaje



<div align="center">
  <img src="img/1.png">
</div>
