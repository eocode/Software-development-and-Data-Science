
# Pensamiento computacional <!-- omit in toc -->

Apuntes sobre pensamiento computacional con Python

## Tabla de Contenido<!-- omit in toc -->
- [Computo](#computo)
- [Python](#python)
  - [Elementos básicos](#elementos-b%c3%a1sicos)
  - [Asiganción de variables](#asiganci%c3%b3n-de-variables)
  - [Operaciones en cadenas](#operaciones-en-cadenas)
  - [Entrada de datos](#entrada-de-datos)
  - [Ramificación de programas](#ramificaci%c3%b3n-de-programas)
  - [Iteraciones](#iteraciones)
    - [Iterators](#iterators)
- [Programas númericos](#programas-n%c3%bamericos)
  - [Enumeración exhaustiva](#enumeraci%c3%b3n-exhaustiva)
  - [Aproximación de soluciones](#aproximaci%c3%b3n-de-soluciones)
  - [Búsqueda binaria](#b%c3%basqueda-binaria)

# Computo
* Conocimiento declarativo
  * Formula matemática
* Conocimiento imperativo
  * Cómo llegar a un resultado
  * Algoritmos (Lista finita de instrucciones de describen un computo que se ejecuta con ciertas entradas y ejecuta pasos intermedios para llegar a un resultado)
  * Lenguajes de programación
    * Sintaxis (Secuencia de símbolos bien formada)
    * Semántica estática (Define que enunciados con sintaxis correcta tiene significado)
    * Semantica (Define el significado. Sólo hay un significado)
    * Alto nivel o bajo nivel
    * General o de dominio específico
    * Interpretado o compilado

# Python
## Elementos básicos
* Literales
* Operadores
* Objetos
* Tipos de dato
* Escalares vs no escalares

  ```python
  a = 2
  ```

## Asiganción de variables
Operador de asignación (=)

```python
base = 2
altura = 4
area = (base * altura) / 2
```

Las variables deben tener nombres que signifiquen algo para los humanos

## Operaciones en cadenas
```python
* y +
# Formato de cadenas
f'{"Hip "*3} hurra'
# Acceso
my_str = 'Hola'
len(my_str)
my_str[0]
# Las últimas 2
my_str[2:]
# Primeras 3
my_str[3:]
# Sin las últimas 2
my_str[:-2]
# Saltando de dos en dos
my_str[::2]
# Cadenas
'Hola' + ' mundo'
f'{my_str} mundo' * 100
```

Crear una operación de forma eficiente con una computadora

## Entrada de datos
```python
numero = input('Escribe un número: ')
type(numero)
numero = int(input('Escribe un número: '))
```

## Ramificación de programas
```python
if <condicion>:
  <expresion> :
elif <condicion>:
  <expresion>
else:
  <expresion>
```

## Iteraciones
```python
contador = 0

while contador < 10:
    print(contador)
    contador += 1
    if(contador == 3):
        break

frutas = ['manzana', 'pera', 'mango']
for fruta in frutas:
        print(fruta)

# iterables
iter('cadena') # cadena
iter(['a', 'b', 'c']) # lista
iter(('a', 'b', 'c')) # tupla
iter({'a', 'b', 'c'}) # conjunto
iter({'a': 1, 'b': 2, 'c': 3}) # diccionario
```

Todas las llamadas anteriores regresan un objeto de tipo iterator.

### Iterators
Un iterator es un objeto que regresa sucesivamente los valores asociados con
el iterable.

```python
frutas = ['manzana', 'pera', 'mango']
iterador = iter(frutas)
next(iterador)
next(iterador)
next(iterador)
```

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