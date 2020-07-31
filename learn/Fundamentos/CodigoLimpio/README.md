# Código limpio <!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)

# Tips

https://learning.postman.com/docs/postman/scripts/intro-to-scripts/

<div align="center">
  <img src="img/1.png">
</div>

## ¿A quién beneficia contar con código bien escrito?

> El código bien escrito beneficia a todos los involucrados en el proyecto.

**A tí**: Cuando retomemos un proyecto después de un largo tiempo nos beneficiará ya que sabremos cómo está ordenado y cómo está escrito todo.
**A cualquiera:** Cualquier persona que deba modificar el código después de tí.
**A tu cliente:** Aunque nunca lo sabrá, su negocio estará mejor atendido.

**Los siguientes elementos dotan de calidad al código:**
* **Legibilidad:** qué tan fácil es interpretar lo que el código dice.
* **Mantenibilidad:** cuánto esfuerzo supondrá adaptar el código a nuevos requerimientos.
* **Testeabilidad:** cuánto esfuerzo supondrá realizar pruebas sobre este código.

## Código prolijo

El código fuente lo escribimos para personas como tú y yo, para las computadoras tenemos las versiones compiladas.

Debemos seguir un estándar de codificación, el cual nos ayuda a:

* Generar código claro y consistente.
* Evitar perder tiempo en decisiones triviales.

**Tips para mejorar la legibilidad de nuestro código:**

* **Define un estándar:** Piénsalo una vez y déjalo por escrito.
* **Respétalo:** Haz un esfuerzo por adherir al estándar durante tu día a día.
* **Apóyate en algún linter:** Esta sencilla herramienta te ayudará a incorporar buenas prácticas.

## Zen de python

* Lindo es mejor que feo.
* Explícito es mejor que implícito.
* Simple es mejor que complejo.
* Complejo es mejor que complicado.
* Plano es mejor que anidado.
* Espaciado es mejor que denso.
* La legibilidad es importante.
* Los casos especiales no son lo suficientemente especiales como para romper las reglas.
* Sin embargo la practicidad le gana a la pureza.
* Los errores nunca deberían pasar silenciosamente.
* A menos que se silencien explícitamente.
* Frente a la ambigüedad, evitá la tentación de adivinar.
* Debería haber una, y solamente una, manera obvia de hacerlo.
* A pesar de que no sea obvio a menos que seas Holandés (como GvR)
* Ahora es mejor que nunca.
* A pesar de que nunca es muchas veces mejor que justo ahora.
* Si la implementación es dificil de explicar, es una mala idea.
* Si la implementación es fácil de explicar, quizás sea una buena idea.
* Los espacios de nombres son una gran idea, ¡tengamos más de esas!

## Identificadores mnemotécnicos, específicos y precisos

Los identificadores son variables, funciones, clases, módulos, componentes, etc. Elementos a los que nosotros debamos crearles un nombre propio.

Ejemplo sin un identificador mnemotécnico una función se vería así:

```php
function f( int $b, int $a ) : float {
        return ( $b * $a ) / 2;
}
```

Al leer este código no sabemos para qué funciona y hasta podríamos borrarlo por equivocación.

Ahora utilizando un identificador mnemotécnico se vería así:

```php
function areaRectangulo( int $base, int $altura ) : float {
        return ( $base * $altura ) / 2;
}
```

Ahora gracias a que el código es más legible sabemos para qué funciona esta función.

Atención a los identificadores que estableces.

## Código reutilizable / Código modular

El código modular son pedazos de códigos divididos que pueden ser utilizados en cualquier lugar para evitar tener un solo archivo con un bloque de código gigante.

> DIVIDE AND CONQUER

## Código reutilizable

Escribir código reutilizable nos va a ayudar a que en lugar de copiar y pegar una misma línea de código pero con diferentes parámetros lo hagamos a través de una función que retorne los valores que necesitamos y luego la podremos llamar en cualquier lugar del código que necesitemos pasándole los parámetros que deseamos.

* Mantén tu código DRY (O SECO, en español). Es decir “Don’t Repeat Yourself” (O “No te repitas”)
* Haz métodos o funciones que hagan solamente una cosa.
* Haz pruebas unitarias para tus métodos y que sean fáciles de testear
* Trata de pensar de forma abstracta, usa interfaces o clases abstractas
* Escribe código que se pueda extender fácilmente en un futuro (Básicamente que modificarlo no signifique prenderle fuego a medio código)
* No escribas código innecesario o que no hace falta en el momento.
* Reduce el acoplamiento (Acoplamiento hace referencia a que, el comportamiento de una función depende enteramente de lo que retorne otra función, y esta de otra, y otra, y otra…)
* Usa más código modular.
* Escribe tu código como si fuera una API externa (Que se pueda importar de otro código y sirva completamente)

## Código organizado
El código organizado se refiere a cómo tenemos distribuido nuestros archivos en la raíz (root) del proyecto. A mayor organización, mayor entendimiento del código.