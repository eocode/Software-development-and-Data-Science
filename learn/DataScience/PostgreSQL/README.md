
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
* ML (Machine Learning)