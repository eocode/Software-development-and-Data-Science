
# Machine Learning <!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Arboles de decisión](#arboles-de-decisión)
  - [¿Qué necesidad hay de usar el Algoritmo de Arbol?](#qué-necesidad-hay-de-usar-el-algoritmo-de-arbol)
  - [¿Cómo funciona un árbol de decisión?](#cómo-funciona-un-árbol-de-decisión)
    - [Indice Gini:](#indice-gini)
    - [Ganancia de información:](#ganancia-de-información)

# Arboles de decisión
Los arboles de decisión **son representaciones gráficas** de posibles soluciones a una decisión basadas en ciertas condiciones, es uno de los algoritmos de aprendizaje supervisado más utilizados en machine learning y pueden realizar tareas de clasificación o regresión (Classification and Regression Tree) CART.

¿Llueve? => lleva paraguas. ¿Soleado? => lleva gafas de sol. ¿estoy cansado? => toma café. (decisiones del tipo IF THIS THEN THAT)

Los árboles de decisión tienen un primer **nodo llamado raíz (root)** y luego **se descomponen el resto de atributos de entrada en dos ramas** (podrían ser más) planteando una **condición que puede ser cierta o falsa.** Se bifurca cada nodo en 2 y vuelven a subdividirse hasta llegar a las hojas que son los nodos finales y que equivalen a respuestas a la solución: 

> Si/No, Comprar/Vender, o lo que sea que estemos clasificando.

Otro ejemplo son los populares juegos de adivinanza:

* ¿Animal ó vegetal? -Animal
* ¿Tiene cuatro patas? -Si
* ¿Hace guau? -Si

>-> Es un perro!

<div align="center">
  <img src="img/muestra-estadistica.jpg">
</div>

## ¿Qué necesidad hay de usar el Algoritmo de Arbol?
Supongamos que tenemos atributos como Género con valores «hombre ó mujer» y edad en rangos: «menor de 18 ó mayor de 18» para tomar una decisión. Podríamos crear un árbol en el que dividamos primero por género y luego subdividir por edad. Ó podría ser al revés: primero por edad y luego por género. 

El algoritmo es quien analizando los datos y las salidas -por eso es supervisado!– decidirá la mejor forma de hacer las divisiones (split) entre nodos. Tendrá en cuenta de qué manera lograr una predicción (clasificación ó regresión) con mayor probabilidad de acierto. Parece sencillo, no? Pensemos que si tenemos 10 atributos de entrada cada uno con 2 o más valores posibles, las combinaciones para decidir el mejor árbol serían cientos ó miles… Esto ya no es un trabajo para hacer artesanalmente. Y ahí es donde este algoritmo cobra importancia, pues él nos devolverá el árbol óptimo para la toma de decisión más acertada desde un punto de vista probabilístico.

## ¿Cómo funciona un árbol de decisión?
Para obtener el árbol óptimo y valorar cada subdivisión entre todos los árboles posibles y conseguir el nodo raiz y los subsiguientes, el algoritmo deberá **medir de alguna manera las predicciones logradas** y valorarlas para comparar de entre todas y obtener la mejor. Para medir y valorar, utiliza diversas funciones, siendo las más conocidas y usadas los **«Indice gini»** y **«Ganancia de información»** que utiliza la denominada **«entropía«**. 

La división de nodos continuará hasta que lleguemos a la profundidad máxima posible del árbol ó se limiten los nodos a una cantidad mínima de muestras en cada hoja. A continuación describiremos muy brevemente cada una de las estrategias nombradas:

### Indice Gini:
**Se utiliza para atributos con valores continuos (precio de una casa)**. Esta función de coste mide el **«grado de impureza» de los nodos**, es decir, **cuán desordenados o mezclados quedan los nodos una vez divididos.** 

> Deberemos minimizar ese GINI index.

### Ganancia de información:
**Se utiliza para atributos categóricos (cómo en hombre/mujer).** Este criterio intenta estimar la información que aporta cada atributo basado en la **«teoría de la información«**. 

> Para medir la aleatoriedad de incertidumbre de un valor aleatorio de una variable «X» se define la **Entropia**.

**Al obtener la medida de entropía de cada atributo, podemos calcular la ganancia de información del árbol. Deberemos maximizar esa ganancia.**

