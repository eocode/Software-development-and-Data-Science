
# PostgreSQL para ciencia de datos <!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducci%c3%b3n)
  - [Puntos fuertes de las bases de datos relacionales](#puntos-fuertes-de-las-bases-de-datos-relacionales)
  - [Conceptos importantes de una base de datos relacional](#conceptos-importantes-de-una-base-de-datos-relacional)
  - [Principales sentencias SQL](#principales-sentencias-sql)
- [Ciencia de datos](#ciencia-de-datos)
  - [¿Qué es?](#%c2%bfqu%c3%a9-es)
  - [Aplicación de la ciencia de datos](#aplicaci%c3%b3n-de-la-ciencia-de-datos)
  - [Equipos orientados a datos](#equipos-orientados-a-datos)
  - [Data Science vs ML](#data-science-vs-ml)
- [Conociendo PostgreSQL](#conociendo-postgresql)
  - [PL/PG SQL](#plpg-sql)
    - [Store procedure](#store-procedure)
    - [Funciones](#funciones)
    - [Triggers](#triggers)
  - [PL/PG SQL aplicado a Data Science](#plpg-sql-aplicado-a-data-science)
  - [Integración con otros lenguajes](#integraci%c3%b3n-con-otros-lenguajes)
    - [PL/pgSQL](#plpgsql)
    - [Otros lenguajes](#otros-lenguajes)
      - [C](#c)
      - [PL/Tcl](#pltcl)
      - [PL/Perl](#plperl)
      - [PL/Python](#plpython)
  - [Tipos de dato personalizados](#tipos-de-dato-personalizados)
- [Casos prácticos](#casos-pr%c3%a1cticos)
  - [Agregaciones](#agregaciones)
  - [Presentación de los datos](#presentaci%c3%b3n-de-los-datos)
  - [Trabajo con objetos JSON](#trabajo-con-objetos-json)
  - [Commont Table Expressions](#commont-table-expressions)
  - [Window functions](#window-functions)
  - [Particiones](#particiones)


# Introducción

* Bases de datos relacionales
    * Se desarrollaron de manera temprana
    * Han evolucionado desde entonces
  * Manejadores
    * Postgresql
    * MySQL
    * MariaDB
    * Oracle
    * SQL Server
* Bases de datos no relacionales
  * Nuevos jugadores en escena
  * Han ganado terreno rápidamente
  * Documentos, memoria, grafos
  * Mantener el estado
  * Relaciones complejas
  * Manejadores
    * MongoDB
    * Redis

PostgreSQL ha evolucionado e implementado algunas herramientas para ciencia de datos

## Puntos fuertes de las bases de datos relacionales

Es una navaja suiza

* Multipropósito (Navaja suiza)
* Ampliamente utilizadas 
* Información consistente
* Flexible
* Retrocompatible ()
* Completamente programable

Casos para uso de basos de datos no relacionales

* Datos en tiempo real
  * Llave valor

https://aws.amazon.com/es/nosql/

<div align="center">
  <img src="img/1.jpg">
</div>

## Conceptos importantes de una base de datos relacional

* **Entidad** (objeto)
  * Cualquier objeto de la vida real
* **Atributos**
  * Caracteristicas de la entidad u objeto
* **Relaciones**
  * Unión entre entidad y entidad
  * Relaciones transitivas, muchos a muchos
* **Triggers** (disparadores)
  * Funciones que ocurren después de un evento insert, update, delete
* **Store Procedures**
  * Funciones que podemos almacenar y se pueden ejecutar desde el manejador

## Principales sentencias SQL

```sql
SELECT	    MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity
FROM	    posts
WHERE       post_quantity > 1
GROUP BY    estatus, post_month
ORDER BY    post_month;

SELECT      MAX(ultima_actualizacion) AS fecha_ultima_actualizacion, clasificacion, COUNT(*) AS post_quantity
FROM        peliculas
WHERE       duracion_renta > 3
GROUP BY    clasificacion, ultima_actualizacion
ORDER BY    fecha_ultima_actualizacion;
```

# Ciencia de datos

## ¿Qué es?

Un científico de datos entiende el negocio y sus necesidades para traducirlo a los demás equipos de datos. El cientifico de datos es el líder. Su trabajo da impacto a la organización

* DBAs
* Analistas
* Ingenieros

En muchas organizaciones va a haber una única persona que se encargue de todo el proceso de datos

* Contar historias con los datos
* Las habilidades siempre van a ser necesarias en cualquier organización

## Aplicación de la ciencia de datos

* **Data Driven.** Toma de decisiones basadas en datos e informada
* **Información significativa.** Entender de que manera podemos aprovechar siertos datos para decir que cosa y cómo la vamos a presentar
* **Mostrar y presentar los datos** en el formato y estructura adecuada. Tabla, tendencias, Dashboards
* **Discriminación de datos** para realizar modelos de ML
* **Contar una historia** con los datos

## Equipos orientados a datos

* **DBA** (Dabta Base Administrator) Mantener y administrar el motor de base de datos
* **Data Warehouse** (Almacén de datos). Guardar datos pensando a futuro para poder trabajarse
* **ETL/ Data Pipelines** Llevar datos de un lado a otro
* **BI (Business Intelligence)** Precursores del DataScience, empezar a extraer datos y entender los datos y sus repercusiones, encontrar patrones
* **Data Science** Entender a la organización e impactarla de forma positiva
* **ML (Machine Learning)** Técnica para clasificar información o realizar predicciones con datos historicos

## Data Science vs ML

**ML** es un conjunto de ciencias, estrategias, disciplinas y algoritmos que nos van ayudar a tomar la capacidad de computo de las maquinas para resolver problemas de clasificación, de forma que se haga de forma automática, otro punto es realizar predicciones con base a patrones para generar tendencias acorde al comportamiento historico para predecir el futuro

**Data Science** Conoce a la organización y empresa a detalle para poder hacer algo al respecto. Toma todas las variables de la organización y herramientas disponibles para causar el mejor impacto

**ML** Es una herramienta más que complementa al Data Science

# Conociendo PostgreSQL
* Código **libre** y orientado a la **comunidad**
* Base de datos **adaptada y madura,** soporta **JSON** y funciones **estadísticas**
* **PL/pgSQL** (Procedural Language/PostgreSQL)
* Manejo de **objetos**
* **Particiones** en las tablas mediante estrategias
* **Common table expressions** tratamiento de tablas virtuales, más eficiente en tiempo de ejecusión
* **Window functions** trata de encontrar relaciones entre un registro y el resto de registros

<div align="center">
  <img src="img/2.jpg">
</div>

## PL/PG SQL
Lenguaje complementario a SQL

### Store procedure
Es una serie de pasos similar a una función, es una forma de programar
* No regresan valores
* Permite automatizar operaciones
* Forma parte del standar SQL
* Se llaman con **call**

```sql
CREATE OR REPLACE PROCEDURE test_dropcreate_procedure()
LANGUAGE SQL
AS $$
    DROP TABLE IF EXISTS aaa;
	CREATE TABLE aaa (bbb char(5) CONSTRAINT firstkey PRIMARY KEY);
$$;

CALL test_dropcreate_procedure();
```

### Funciones

Las funciones permiten encapsular operaciones pero estás si permiten retornar valores
* Usa PL/PG SQL
* Se seleccionan con **select**

```sql
CREATE OR REPLACE FUNCTION test_dropcreate_function()
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
	DROP TABLE IF EXISTS aaa;
	CREATE TABLE aaa (bbb char(5) CONSTRAINT firstkey PRIMARY KEY, ccc char(5));
	DROP TABLE IF EXISTS aaab;
	CREATE TABLE aaab (bbba char(5) CONSTRAINT secondkey PRIMARY KEY, ccca char(5));
END
$$;

SELECT test_dropcreate_function();
```

Ejemplo 2

```sql
---------
CREATE OR REPLACE FUNCTION count_total_movies()
RETURNS int
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN COUNT(*) FROM peliculas;
END
$$;

SELECT count_total_movies();

```

### Triggers
Se ejecutan después de que ocurre un evento, insert, update o delete

```sql
CREATE OR REPLACE FUNCTION duplicate_records()
  RETURNS trigger AS
$$
BEGIN
	INSERT INTO aaab(bbba, ccca)
	VALUES(NEW.bbb, NEW.ccc);
   	RETURN NEW;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER aaa_changes
	BEFORE INSERT
	ON aaa
	FOR EACH ROW
	EXECUTE PROCEDURE duplicate_records();
```

Para probar el trigger

```sql
INSERT INTO aaa (bbb, ccc)
VALUES ('asdfl', 'nuevo');

DROP TRIGGER IF EXISTS aaa_changes
ON aaa;
```

## PL/PG SQL aplicado a Data Science

Obtención de estadísticas y reportes

```sql
CREATE OR REPLACE FUNCTION movies_stats()
RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
	total_rated_r REAL := 0.0;
	total_larger_than_100 REAL := 0.0;
	total_published_2006 REAL := 0.0;
	average_duracion REAL := 0.0;
	average_rental_price REAL := 0.0;
BEGIN
	total_rated_r := COUNT(*) FROM peliculas WHERE clasificacion = 'R';
	total_larger_than_100 := COUNT (*) FROM peliculas WHERE duracion > 100;
	total_published_2006 := COUNT(*) FROM peliculas WHERE anio_publicacion = 2006;
	average_duracion := AVG(duracion) FROM peliculas;
	average_rental_price := AVG(precio_renta) FROM peliculas;

	TRUNCATE TABLE peliculas_estadisticas;

	INSERT INTO peliculas_estadisticas (tipo_estadistica, total)
	VALUES
		('Películas con clasificacion R', total_rated_r),
		('Películas de más de 100 minutos', total_larger_than_100),
		('Películas publicadas en 2006', total_published_2006),
		('Promedio de duración en minutos', average_duracion),
		('Precio promedio de renta', average_rental_price);
END
$$;

SELECT movies_stats();
```

## Integración con otros lenguajes

Como la mayoría de las bases de datos, PostgreSQL cuenta con conectores para diferentes lenguajes de programación, de tal forma que si trabajas con Python, PHP, Java, JavaScript y todos sus frameworks, exista una forma de extraer datos de PostgreSQL y posteriormente utilizar las propiedades de los lenguajes procedurales para transformar y utilizar los datos.

**El lenguaje estándar utilizado en bases de datos relacionales es SQL (Structured Query Language)**, un lenguaje que tiene una estructura sumamente útil para hacer solicitudes de datos, en especial tomando como abstracción un diseño tabular de datos. Sin embargo, carece de estructuras de control y otras abstracciones que hacen poderosos a los lenguajes procedurales de programación.

### PL/pgSQL

Como respuesta a los puntos débiles de SQL como estándar, PostgreSQL respondió originalmente creando un lenguaje propio llamado PL/pgSQL (Procedural Language/PostgreSQL Structured Query Language) que es literalmente un superset de SQL que incluye propiedades de un lenguaje estructurado que, por un lado, nos permite crear funciones complejas y triggers; y, por el otro lado, agrega estructuras de control, cursores, manejo de errores, etc.

### Otros lenguajes

Sin embargo, en muchos sentidos, aunque PL/pgSQL ayuda en los casos más genéricos para generar estructuras y funcionalidades más complejas, no se compara con lenguajes completamente independientes y no ligados directamente a una base de datos.

La respuesta sin embargo tampoco es los conectores normales que, si bien resuelven la parte de un lenguaje más complejo, añaden por otro lado una separación de la base de datos, ya que debe correr en un servidor separado y hacer llamadas entre ellos con la latencia como un colateral.

Para mitigar estos problemas tomando lo mejor de ambos mundos, los desarrolladores de PostgreSQL se dedicaron a hacer implementaciones de diversos lenguajes a manera de plugin.

#### C

La biblioteca que permite al lenguaje C ejecutarse en PostgreSQL es llamada **libpq** y es una interfaz de programación que permite extender y hacer de interfaz para permitir a otros lenguajes ejecutarse en esta base de datos.

https://www.postgresql.org/docs/11/libpq.html.

#### PL/Tcl

**Tcl (Tool Command Language)** es un lenguaje diseñado con la simpleza en mente y su paradigma consiste en que todo en él es un comando, incluyendo la estructura del lenguaje que, sin embargo, son suficientemente flexibles para poderse sobreescribir, haciéndolo un lenguaje sumamente extensible.

Todo lo anterior es ideal para la integración con el manejador de PostgreSQL ya que permite elaborar comandos para ejecutar las sentencias SQL y extenderlas facilmente.

https://www.postgresql.org/docs/11/pltcl.html

#### PL/Perl

Perl es un lenguaje de programación que implementa una estructura de bloques de código y que **toma inspiración de programas como C, sh, AWK, entre otros.** Y es especialmente bueno para el tratamiento de cadenas de texto. Sin embargo, no se encuentra limitado como un lenguaje de script.

Dada la propiedad de englobar funcionalidad en forma de bloque y de la rapidez y facilidad con la que trabaja con datos tipo cadena, este lenguaje es ideal para el tratamiento de información de una base de datos relacional.

https://www.postgresql.org/docs/11/plperl.html.

#### PL/Python

Python, al ser de los lenguajes de programación más extendidos entre programadores de servicios Backend, es una implementación particularmente interesante para PostgreSQL.

Python es un lenguaje de programación fuerte en tratamiento de estructura de datos y tiene un paradigma múltiple con fuertes **componentes orientados a objetos**, estructurados y una fuerte **influencia del paradigma funcional.**

Parte de sus fortalezas son sus **implementaciones de funciones map, reduce y filter en conjunto con list comprehensions, sets, diccionarios y generadores.**

Dadas las propiedades nativas para **manejar estructuras de datos complejas**, es un lenguaje ideal para manejar la salida de un query SQL.

La implementación de Python para PostgreSQL te permite crear funciones complejas en un lenguaje completo y popular sin tener que utilizar PL/pgSQL. Puedes ver un ejemplo a continuación de la misma función en PL/pgSQL y PL/Python.

**PL/pgSQL**

```sql
CREATE FUNCTION pgmax (a integer, b integer)
RETURNS integer
AS $$
BEGIN
   IF a > b THEN
       RETURN a;
   ELSE
       RETURN b;
   END IF;
END
$$ LANGUAGE plpgsql;
```

**PL/Python**

```sql
CREATE FUNCTION pymax (a integer, b integer)
RETURNS integer
AS $$
   if a > b:
       return a
   return b
$$ LANGUAGE plpythonu;
 
CREATE EXTENSION plpythonu;
SELECT pgmax(200,9);
```

Para instalar el lenguaje Python en PostgreSQL, una vez instaladas las bibliotecas apropiadas para cada Sistema Operativo, es necesario ejecutar el siguiente query:

``CREATE EXTENSION plpythonu``

https://www.postgresql.org/docs/11/plpython.html.

## Tipos de dato personalizados

Permite crear tipos de datos personalizados

```sql
CREATE TYPE humor AS ENUM ('triste', 'normal', 'feliz');

CREATE TABLE persona_prueba (
    nombre text,
    humor_actual humor
);

INSERT INTO persona_prueba VALUES ('Pablo', 'molesto');

SELECT * FROM persona_prueba;
```

# Casos prácticos

## Agregaciones

* MAX
* MIN
* SUM
* AVG

## Presentación de los datos

Se piensa desde la planeación como es que los datos serán presentados, para que van a servir, que queremos probar

* Armar Dashboards. Significan diferentes cosas para diferentes personas. Saber el estado de la operación por ejemplo
* Pensar en que es lo que quiero apoyar para que sea visible
* La presentación siempre es muy importante
* Usando esto de forma adecuada puedes cambiar el curso de una organización completa

## Trabajo con objetos JSON

Son cadenas con cierta estructura

* Texto que puede manejarse como un objeto para poder hacer consultas

```sql
CREATE TABLE ordenes(
	ID serial NOT NULL PRIMARY KEY,
	info json NOT NULL
)
```

## Commont Table Expressions

Alto consumo de recursos al realizar:

* Subquerys
* Anidaciones

Nos permite hacer procesos iterativos

## Window functions

Sirve para relacionar un registro con el resto de registros de la tabla

* Encontrar el lugar que ocupa tomando en cuanta algunos recursos
* Sirve para hacer un Ranking

```sql
ROW_NUMBER() OVER (
		ORDER BY COUNT(*) DESC
	) AS lugar
```

https://www.postgresql.org/docs/9.1/tutorial-window.html

## Particiones

Permite personalizar particiones acorde a ciertos criterios
* Particiones por mes
* No todas las tablas deben ser particionadas
* Una desventaja es que no se puede hacer una llave primaria
* Útiles al realizar dashboards para tener información segmentada, acelerando el rendimiento