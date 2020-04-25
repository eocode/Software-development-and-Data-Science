# SQL y MySQL<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducci%c3%b3n)
  - [Instalación](#instalaci%c3%b3n)
  - [Comandos básicos](#comandos-b%c3%a1sicos)
    - [Comando CREATE](#comando-create)
      - [Motores de almacenamiento](#motores-de-almacenamiento)
- [Proyecto  MySQL](#proyecto-mysql)
      - [Comandos](#comandos)
        - [JOINS](#joins)
- [Casos de negocio](#casos-de-negocio)
- [UPDATE - DELETE](#update---delete)
- [Backup](#backup)
- [Bases de datos para BigData](#bases-de-datos-para-bigdata)

# Introducción

Una base de datos es un conjunto de datos pertenecientes a un mismo contexto y almacenados sistemáticamente para su posterior uso.

**SQL (por sus siglas en inglés Structured Query Language; en español lenguaje de consulta estructurada)** es un lenguaje de dominio específico utilizado en programación, diseñado para administrar, y recuperar información de sistemas de gestión de bases de datos relacionales.​ Una de sus principales características es el manejo del álgebra y el cálculo relacional para efectuar consultas con el fin de recuperar, de forma sencilla, información de bases de datos, así como realizar cambios en ellas.

**MySQL es un sistema de gestión de bases de datos relacional** desarrollado bajo licencia dual: Licencia pública general/Licencia comercial por Oracle Corporation y está considerada como la base de datos de código abierto más popular del mundo, y una de las más populares en general junto a Oracle y Microsoft SQL Server, sobre todo para entornos de desarrollo web.

## Instalación

Download and Install the components
https://dev.mysql.com/downloads/installer/

## Comandos básicos

Comando principales para el interprete de MySQL

```bash
show databases;
create database tmp;
use tmp;
show tables;
```
Para ver la base de datos seleccionada
`select database();`

### Comando CREATE

#### Motores de almacenamiento

**El motor de almacenamiento (storage-engine)** se encarga de almacenar, manejar y recuperar información de una tabla. Los motores más conocidos son MyISAM e InnoDB. 

Si necesitamos transacciones, claves foráneas y bloqueos, tendremos que escoger InnoDB. Por el contrario, escogeremos MyISAM en aquellos casos en los que predominen las consultas SELECT a la base de datos.

**InnoDB dota a MySQL** de un motor de almacenamiento transaccional (conforme a ACID) con capacidades de commit (confirmación), rollback (cancelación) y recuperación de fallos. InnoDB realiza bloqueos a nivel de fila y también proporciona funciones de lectura consistente sin bloqueo al estilo Oracle en sentencias SELECT. Estas características incrementan el rendimiento y la capacidad de gestionar múltiples usuarios simultáneos. No se necesita un bloqueo escalado en InnoDB porque los bloqueos a nivel de fila ocupan muy poco espacio. InnoDB también soporta restricciones FOREIGN KEY. En consultas SQL, aún dentro de la misma consulta, pueden incluirse libremente tablas del tipo InnoDB con tablas de otros tipos.

**MyISAM** es el motor por defecto. Para crear una tabla InnoDB se debe especificar la opción ENGINE = InnoDB o TYPE = InnoDB en la sentencia SQL de creación de tabla:

```sql
CREATE TABLE customers (a INT, b CHAR (20), INDEX (a)) ENGINE=InnoDB;
CREATE TABLE customers (a INT, b CHAR (20), INDEX (a)) TYPE=InnoDB;
```

Las principales ventajas de InnoDB son:

* Soporte de transacciones
* Bloqueo de registros
* Nos permite tener las características ACID (Atomicity, Consistency, Isolation and Durability: Atomicidad, Consistencia, Aislamiento y Durabilidad en español), garantizando la integridad de nuestras tablas.
* Es probable que si nuestra aplicación hace un uso elevado de INSERT y UPDATE notemos un aumento de rendimiento con respecto a MyISAM.

Y las de MyISAM:

* Mayor velocidad en general a la hora de recuperar datos.
* Recomendable para aplicaciones en las que dominan las sentencias SELECT ante los INSERT /UPDATE.
* Ausencia de características de atomicidad ya que no tiene que hacer comprobaciones de la integridad referencial, ni bloquear las tablas para realizar las operaciones, esto nos lleva como los anteriores puntos a una mayor velocidad.

**¿Tu tabla va a recibir INSERT, UPDATE y DELETE mucho más tiempo de lo que será consultada?**  Usa InnoDB
**¿Necesitarás hacer búsquedas full-text?** Tu motor ha de ser MyISAM
**¿Prefieres o requieres diseño relacional de bases de datos?**  Entonces necesitas InnoDB
**¿Es un problema el espacio en disco o memoria RAM?**  Decántate por MyISAM

* Catálogo MyISAM
* Operación InnoDB 

# Proyecto  MySQL 

Creación de una libreria

#### Comandos

```sql
CREATE DATABASE IF NOT EXISTS bookstore;
SHOW warnings;
USE bookstore;
SHOW tables;
```

Crear la estrucutura de la tabla
`Code create.sql`

```sql
USE bookstore;
DESCRIBE books;
DESC books;
SHOW FULL COLUMNS FROM books;
```

`Code insert.sql`

No utilizar ON DUPLICATE KEY IGNORE ALL

```sql
select * from clients where client_id = 4\G
INSERT INTO `clients`(client_id, name, email, birthdate, gender, active) values(4,'Pedro Sanchez', 'Pedro.78522059J@random.names', '1992-01-31','m', 0)
ON DUPLICATE KEY UPDATE active = VALUES(active);
select * from clients where client_id = 4;
```

Importar datos desde un archivo con bash

Dentro del directorio
`mysql -u root -p -h localhost < script.sql`

Diciendole la base de datos
`mysql -u root -p -h localhost -D database_name < script.sql`

Selección de datos
`select.sql`

##### JOINS

1. **Inner Join**
Esta es la forma mas fácil de seleccionar información de diferentes tablas, es tal vez la que mas usas a diario en tu trabajo con bases de datos. Esta union retorna todas las filas de la tabla A que coinciden en la tabla B. Es decir aquellas que están en la tabla A Y en la tabla B, si lo vemos en conjuntos la intersección entre la tabla A y la B.

Esto lo podemos implementar de esta forma cuando estemos escribiendo las consultas:

```sql 
SELECT <columna_1> , <columna_2>,  <columna_3> ... <columna_n> 
FROM Tabla_A A
INNER JOIN Tabla_B B
ON A.pk = B.pk
```

2. **Left Join**
Esta consulta retorna todas las filas que están en la tabla A y ademas si hay coincidencias de filas en la tabla B también va a traer esas filas.

Esto lo podemos implementar de esta forma cuando estemos escribiendo las consultas:

```sql
SELECT <columna_1> , <columna_2>,  <columna_3> ... <columna_n> 
FROM Tabla_A A
LEFT JOIN Tabla_B B
ON A.pk = B.pk
```

3. **Right Join**
Esta consulta retorna todas las filas de la tabla B y ademas si hay filas en la tabla A que coinciden también va a traer estas filas de la tabla A.

Esto lo podemos implementar de esta forma cuando estemos escribiendo las consultas:

```sql
SELECT <columna_1> , <columna_2>,  <columna_3> ... <columna_n>
FROM Tabla_A A
RIGHT JOIN Tabla_B B
ON A.pk = B.pk
```

4. **Outer Join**
Este join retorna TODAS las filas de las dos tablas. Hace la union entre las filas que coinciden entre la tabla A y la tabla B.

Esto lo podemos implementar de esta forma cuando estemos escribiendo las consultas:

```sql
SELECT <columna_1> , <columna_2>,  <columna_3> ... <columna_n>
FROM Tabla_A A
FULL OUTER JOIN Tabla_B B
ON A.pk = B.pk
```

5. **Left excluding join**
Esta consulta retorna todas las filas de la tabla de la izquierda, es decir la tabla A que no tienen ninguna coincidencia con la tabla de la derecha, es decir la tabla B.

Esto lo podemos implementar de esta forma cuando estemos escribiendo las consultas:

```sql
SELECT <columna_1> , <columna_2>,  <columna_3> ... <columna_n>
FROM Tabla_A A
LEFT JOIN Tabla_B B
ON A.pk = B.pk
WHERE B.pk IS NULL
```

6. **Right Excluding join**
Esta consulta retorna todas las filas de la tabla de la derecha, es decir la tabla B que no tienen coincidencias en la tabla de la izquierda, es decir la tabla A.

Esto lo podemos implementar de esta forma cuando estemos escribiendo las consultas:

```sql
SELECT <columna_1> , <columna_2>,  <columna_3> ... <columna_n>
FROM Tabla_A A
RIGHT JOIN Tabla_B B
ON A.pk = B.pk
WHERE A.pk IS NULL
```

7. **Outer excluding join**
Esta consulta retorna todas las filas de la tabla de la izquierda, tabla A, y todas las filas de la tabla de la derecha, tabla B que no coinciden.

Esto lo podemos implementar de esta forma cuando estemos escribiendo las consultas:

```sql
SELECT <select_list>
FROM Table_A A
FULL OUTER JOIN Table_B B
ON A.Key = B.Key
WHERE A.Key IS NULL OR B.Key IS NULL
```

# Casos de negocio

`negocio.sql`

# UPDATE - DELETE

`update_delete.sql`

`powerqueries.sql`

# Backup

Saca un Backup de tus respaldos

Ver el esquema

```sql
mysqldump -u root -p mypass
```

Paginar resultado

```sql.
mysqldump -u root -p mypass | more
```

Guardar en un archivo el esquema

```sql.
mysqldump -u root -p mypass > esquema.sql
```

# Bases de datos para BigData
La información venga de dónde venga debe de estar ordenada y debe ser util para generar operaciones con los datos.