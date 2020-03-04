
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
  - [Representaciones de flotantes](#representaciones-de-flotantes)
- [Funciones, alcance y abstracción](#funciones-alcance-y-abstracci%c3%b3n)
- [Funciones](#funciones)
  - [Específicaciones de código](#espec%c3%adficaciones-de-c%c3%b3digo)
  - [Recursividad](#recursividad)
    - [Factorial](#factorial)
    - [Serie de fibbonachi](#serie-de-fibbonachi)
- [Tipos estructurados, mutabilidad y funciones de alto nivel](#tipos-estructurados-mutabilidad-y-funciones-de-alto-nivel)
  - [Tuplas](#tuplas)
  - [Rangos](#rangos)
  - [Listas y mutabilidad](#listas-y-mutabilidad)
    - [Clonación](#clonaci%c3%b3n)
  - [List comprehension](#list-comprehension)
  - [Funciones en Python](#funciones-en-python)
    - [Funciones de expresiones](#funciones-de-expresiones)
  - [Diccionarios](#diccionarios)
- [Pruebas y debugging](#pruebas-y-debugging)
  - [Pruebas de caja negra](#pruebas-de-caja-negra)
  - [Pruebas de caja de cristal](#pruebas-de-caja-de-cristal)
  - [Debugging](#debugging)
    - [Diseño de experimentos](#dise%c3%b1o-de-experimentos)
    - [Errores comúnes](#errores-com%c3%banes)
  - [Exepciones y afirmaciones](#exepciones-y-afirmaciones)
    - [Manejo de excepciones](#manejo-de-excepciones)
      - [Excepciones como control de flujo](#excepciones-como-control-de-flujo)
  - [Afirmaciones](#afirmaciones)
- [POO](#poo)

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

## Representaciones de flotantes
[Problema Python para decimales](http://docs.python.org.ar/tutorial/3/floatingpoint.html)

# Funciones, alcance y abstracción
**Abstracción:** No se necesita saber como funciona algo para poder operarlo.
**Decomposición:** Dividir algo en componentes que colaboren con un fin común 

# Funciones 

```python
def suma(a,b):
    total = a + b
    print(total)
    return total

suma(2,2)
```

## Específicaciones de código

Documentar docstrings en el código

```python
def suma(a,b):
    """ Suma dos valores a y b.
    param int a cualquier entero
    param int b cualquier entero
    returns la sumatoria de a y b
    """
    total = a + b
    print(total)
    return total
```

Ver documentación:
```python
help(suma)
```

## Recursividad
Es una forma de crear soluciones con el principio de divide y venceras. Es una técnica mediante la cual una función es llamada a si misma

### Factorial

Todas las combinaciones posibles

<div align="center">
  <img src="images/productorio.jpg">
  <small><p>Factorial metemático</p></small>
</div>

```bash
n! = n * (n - 1)!

def factorial(n):
    """Calcula el factorial de n
    n int > 0
    return n!
    """

    if n == 1:
        return 1

    return n * factorial(n - 1)
```

Python restringe el número de veces que puede hacer recursividad, al momento de hacer este ejemplo permitió hasta el número 998

### Serie de fibbonachi

```python
def fibonacci(n):
    if n == 0 or n == 1:
      return 1
    a = fibonacci(n - 1) + fibonacci(n - 2)
    print(a)
    return a
```

# Tipos estructurados, mutabilidad y funciones de alto nivel

## Tuplas
* Son secuencias inmutables de objetos
* Pueden contener cualquier tipo de objeto
* Pueden devolver varios valores en una función

```python
my_tuple = (1, 'dos', True)
my_tuple[0]
my_tuple(1,)
my_other_tuple = (2, 3, 4)
my_tuple += my_other_tuple

x, y, z = my_other_tuple

def coordenadas():
  return(5, 4)

coordenada = coordenadas()
x, y = coordenadas()
```

## Rangos

* Representan una secuencia de enteros
* `range(comienzo,fin,pasos)`
* Son inmutables
* Eficientes en uso de memoria y utilizados en for loops

```python
my_range = range(1, 5)
for i in my_range:
  print(i)
my_range = range(0,7,2)
my_other_range = range(0,8,2)
my_range == my_other_range
id(my_range)
my_range is my_other_range
for i in range(0, 101, 2):
    print(i)
```

## Listas y mutabilidad
* Son secuencias de objetos, pero mutables
* Cuándo modificas unas lista, pueden existir efectos secundarios
* Es posible iterar con ellas
* Se pueden asignar via indice
* Utilizar métodos: append, pop, remove, insert

```python
my_list = [1,2,3]
my_list[0]
my_list.append(4)
my_list[0] = 'a'
my_list.pop()

for element in my_list:
 print(element)

a = [1,2,3]
b = a
id(a)
id(b)
c = [a , b]
a.append(5)
c
```

### Clonación
* Casi siempre es mejor clonar una lista en vez de mutarla
* Para ello podemos usar slices o la funcion list

```python
a = [1,2,3]
b = a
id(a)
id(b)
c = list(a)
d = a[::]
```

## List comprehension
* Forma concisa de aplicar operaciones a los valores de una secuencia
* También se pueden mostrar condiciones para filtrar

```python
my_list = list(range(100))
double = [i * 2 for i in my_list]
double
pares = [i for i in my_list if i % 2 == 0]
pares
```

## Funciones en Python
* Tienen un tipo
* Se pueden pasar como argumentos de otras funciones
* Se pueden utilizar en expresiones
* Se pueden incluir en estructuras de datos

### Funciones de expresiones
`lambda <vars> : <expresion>`

## Diccionarios
* Son como listas, pero en lugar de indices se utilizan mapas
* No tienen orden interno
* Son mutables 
* Pueden iterarse

```python
for element in dict.values():
  print(element)
for element in dict.items():
  print(element)

'David' in dict
'Tom' in dict
```

# Pruebas y debugging
## Pruebas de caja negra
* Se basan en la especificación de la función o el programa
* Prueba inputs y valida outputs
* Unit testing o integration testing

## Pruebas de caja de cristal
* Se basan en el flujo del programa
* Prueba todos los caminos posibles de una función: Ramificaciones, bucles for y while, recursión
* Regression testing o mocks

## Debugging
* No te molestes con el debugger. Aprende a utilizar el print statement.
* Estudia los datos disponibles
* Utiliza los datos para crear hipótesis y experimentos. Método científico
* Ten una mente abierta. Si entendieras el programa, probablemente no habrían buggs
* LLeva un registro de lo que has tratado, preferentemente en la forma de test

### Diseño de experimentos
* Debuggear es un proceso de búsqueda. Cada prueba debe acotar el espacio de busqueda
* Búsqueda binaria con print statements

### Errores comúnes
* Encuentra los sospechosos comunes
* En lugar de preguntarte por qué un programa no funciona preguntate por que está funcionando de está manera
* Es posible que el bug no se encuentre donde crees que está
* Explicale el problema a otra persona. De preferencia que no tenga contexto
* Lleva un registro de lo que has tratado, preferentemente en la forma de test
* Vete a dormir

## Exepciones y afirmaciones
Programación defensiva
* Son muy comunes en la programación. No tienen nada excepcional
* Se relacionan con errores de semántica
* Se pueden crear excepciones propias
* Cuándo una excepción no se maneja, el programa termina en error

### Manejo de excepciones
* Se manejan con ``try, except, finally``
* Se pueden utilizar también para ramificar programas
* No deben manejarse de manera silenciosa (con print statement)
* Para aventar tu propia excepción utiliza el keyword ``raise``

#### Excepciones como control de flujo
La razón de usarlo en lugar del if es por EAFP(easier to ask for forgiveness than permission)
Mientras que otros lenguajes utilizan LBYL(look before you leap)

```javascript
// Javascript
/*
* Paises es un objeto. Pais es la llave
* Código con el principio LBYL
*/

function buscaPais(paises, pais){
  if(!Object.keys(paises).includes(paises)){
    return null
  }
  return paises[pais];
}
```

## Afirmaciones
* Programación defensiva
* Pueden utilizarse pra verificar que los tipos sean correctos en una función
* Sirven para debuguear

# POO