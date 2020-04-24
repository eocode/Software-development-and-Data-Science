
# Algoritmos con Python <!-- omit in toc -->

> Mejora de habilidades como programador

## Tabla de Contenido<!-- omit in toc -->
- [Complejidad algorítmica](#complejidad-algor%c3%adtmica)
  - [Aproximaciones](#aproximaciones)
  - [Notación asintotica / Big O Notation](#notaci%c3%b3n-asintotica--big-o-notation)
    - [Crecimiento asintótico](#crecimiento-asint%c3%b3tico)
    - [Clases de complejidad algorítmica](#clases-de-complejidad-algor%c3%adtmica)
- [Programas númericos](#programas-n%c3%bamericos)
  - [Enumeración exhaustiva](#enumeraci%c3%b3n-exhaustiva)
  - [Aproximación de soluciones](#aproximaci%c3%b3n-de-soluciones)
  - [Búsqueda binaria](#b%c3%basqueda-binaria)
  - [Representaciones de flotantes](#representaciones-de-flotantes)
- [Búsqueda y ordenamiento](#b%c3%basqueda-y-ordenamiento)
  - [Búsqueda lineal](#b%c3%basqueda-lineal)
  - [Búsqueda binaria](#b%c3%basqueda-binaria-1)
  - [Ordenamiento burbuja](#ordenamiento-burbuja)
  - [Ordenamiento por inserción](#ordenamiento-por-inserci%c3%b3n)


# Complejidad algorítmica
* Comparar algorítmos
* Complejidad temporal (Cuánto se tarda) vs complejidad espacial (Cuánto espacio necesita)
* Podemos definirla como T(n)

## Aproximaciones
* Conometrar el tiempo que corre un algoritmo
* Contar con los pasos con una medida abstracta de operación
* Contar los pasos conforme nos aproximamos al infinito **Forma estándar**

Se pueden generar ecuaciones matemáticas para evaluar el rendimiento por medio de la estructura del algorítmo
```python
1002 + x + 2x**
```

## Notación asintotica / Big O Notation
### Crecimiento asintótico
* No importan variaciones pequeñas
* El enfoque se centra en lo que pasa conforme el tamaño del problema se acerca a infinito
* Mejor de los caso, promedio, peor de los casos
* Big O
* Nada más importa el término de mayor tamaño

### Clases de complejidad algorítmica
* O(1) Constante
* O(n) Lineal
* O(log n) Logaritmica
* O(n log n) log lineal
* O(n**2) Polinomial
* O(2**n) Exponencial

<div align="center">
  <img src="images/big-o-complexity-chart.png">
  <small><p>Big O</p></small>
</div>


# Programas númericos
## Enumeración exhaustiva
Prueba todas las posibilidades hasta que encuentres la respuesta para la mayoria de los casos el rendimiento no es importante, las computadoras son muy rápidas

```python
objetivo = int(input('Escoge un entero'))
respuesta = 0

while respuesta**2 < objetivo:
    respuesta += 1

if respuesta**2 == objetivo :
    print(f'La raíz cuadrada de {objetivo} es {respuesta}')
```

## Aproximación de soluciones
No se necesita una respuesta exacta
Podemos aproximar la solución con un margen de error que llamaremos epsilon

```python
objetivo = int(input('Escoge un número'))
epsilon = 0.01
paso = epsilon**2 # 0.0001
respuesta = 0.0

while abs(respuesta**2 - objetivo) >= epsilon and respuesta <= objetivo : 
    print(respuesta**2 - objetivo, respuesta)
    respuesta += paso

if abs(respuesta**2 - objetivo) >= epsilon:
    print(f'No se encontro la raíz cuadrada de {objetivo}')
else :
    print(f'La raíz cuadrada de {objetivo} es {respuesta}')
```

## Búsqueda binaria
Cuándo la respuesta se encuentra en un conjunto ordenado, se puede usar búsqueda binaria
Corta la operación en 2 en cada iteración, lo que lo hace bastante eficiente

## Representaciones de flotantes
[Problema Python para decimales](http://docs.python.org.ar/tutorial/3/floatingpoint.html)

# Búsqueda y ordenamiento
## Búsqueda lineal
* Busca en todos los elementos de manera secuencial
* ¿Cuál es el peor caso?

## Búsqueda binaria
Asume que la lista está ordenada
* Divide y conquista
* El problema se divide en 2 en cada iteración
* ¿Cuál es el peor caso?
* **Funciona en listas ordenadas**
* Intercambia tiempo por espacio, guarda la lista ordenada en disco

## Ordenamiento burbuja
Es un algoritmo que recorre repetidamente una lista que necesita ordenarse. Compara sus elementos adyacentes y los intercambia si están en el orden incorrecto. Este es un procedimiento que se repite hasta que no se requieren más intercambios, lo que indica que la lista se encuentra ordenada

## Ordenamiento por inserción
El ordenamiento por inserción es uno de los algoritmos más comunes que estudian
los Científicos del Cómputo. Es intuitivo y fácil de implementar, pero es muy
ineficiente para listas de gran tamaño.

Una de las características del ordenamiento por inserción es que ordena en “su
lugar.” Es decir, no requiere memoria adicional para realizar el ordenamiento
ya que simplemente modifican los valores en memoria.