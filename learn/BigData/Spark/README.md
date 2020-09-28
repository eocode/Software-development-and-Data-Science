# Spark <!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)
  - [Lenguajes](#lenguajes)
  - [¿Qué no es apache spark?](#qué-no-es-apache-spark)
  - [Historia](#historia)
  - [Spark vs Hadoop](#spark-vs-hadoop)
- [Introducción a los RDDs y DataFrames](#introducción-a-los-rdds-y-dataframes)
  - [Caracter[isticas de los RDD](#caracteristicas-de-los-rdd)
    - [Transformaciones y acciones](#transformaciones-y-acciones)
  - [DataFrame](#dataframe)
  - [¿Cuándo usar un RDD?](#cuándo-usar-un-rdd)
  - [¿Cuándo usar DataFrames?](#cuándo-usar-dataframes)
  - [Instalación](#instalación)

# Introducción

Es un framework de desarrollo de procesos de Big Data

* Preocupado por la velocidad del proceso (continuos y en tiempo real)
* Hadoop se preocupa por almacenar grandes cantidades de datos

## Lenguajes

* Java
* Scala
* Python
* R

## ¿Qué no es apache spark?

* No es una base de datos
  * OLAP - Base de datos transaccional
  * OLTP - Bases de datos para Datawarehouse

## Historia

* Nace en 2009
* Heredera de Hadoop es el paso siguiente a la tecnología Hadoop
* La versión 3 fue liberada el 10 de Junio de 2020

## Spark vs Hadoop

* Spark se enfoca en procesamiento de datos desde RAM
* Posee naturalmente un módulo para ML, Streaming y grafos
* No depende de un sistema de archivos

# Introducción a los RDDs y DataFrames

Son las dos principales estructuras que soporta spark
Los RDD son el componente m[inimo con el cual podemos comunicarnos en spark

## Caracter[isticas de los RDD

* Principal abstracción de datos (Abstracción básica)
* Distribuidos en todo el clúster
* Creación simple. No poseen estructura formalmente adoptan la más intuitiva
* Inmutabilidad. Posterior a su creción no se pueden modificar
* Ejecución perezosa. A menos que se realice una acción

### Transformaciones y acciones

<div align="center">
  <img src="img/1.png">
</div>

<div align="center">
  <img src="img/2.png">
</div>

## DataFrame

* Tienen un formato, poseen columnas con tipos de datos
* Optimización. Tienen una mejor implementación, lo cual los hace preferibles
* Facilidad de creación. Se pueden crear desde una base de datos externa o RDD externa

## ¿Cuándo usar un RDD?

* Cuando te interese controlar el flujo de Spark
* Si eres usuario de Python, convertir a RDD un conjunto permite mejor control de los datos
* Estás conectándote a versiones antiguas de Spark

## ¿Cuándo usar DataFrames?

* Si poseemos semánticas de datos complicados
* Vamos a realizar tareas de alto nivel como filtros, mapeos, agregaciones, promedios o sumas
* Si vamos a usar sentencias SQL-like

## Instalación

**Manual:**

```sh
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get -y update
sudo apt-get -y install openjdk-8-jre
sudo apt-get -y install python3
sudo apt-get -y install scala
sudo apt-get -y install python3-pip
sudo pip3 install py4j
```

py4j

Ver documentación del paquete: Traduce Python a Java

https://pypi.org/project/py4j/
https://www.py4j.org

Descarga desde aquí: https://spark.apache.org/downloads.html

```sh
tar -xvf spark-2.4.6-bin-hadoop2.7.tgz
mv spark-2.4.6-bin-hadoop2.7 spark
mv spark ~/
rm spark-2.4.6-bin-hadoop2.7
ls ~/
```

Para anaconda

```sh
wget https://repo.anaconda.com/archive/Anaconda3-2020-02-Linux-x86_64.sh
ls
sh Anaconda3-2020-02-Linux-x86_64.sh -b
rm -rf /home/spark/anaconda3

export PATH=/home/spark/anaconda3/bin:$PATH
condata install py4j
```

Variables de entorno para que puedan ser utilizables

```sh
pwd
# home/spark
nano .bashrc
```

Agrega lo siguiente al archivo

```txt
## Path Java
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export PATH=$JAVA_HOME/bin:$PATH
## SPARK
export SPARK_HOME="/home/spark/spark"
export PATH=$SPARK_HOME:$PATH
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_PYTHON=python3
```

Refrescar configuraciones

```sh
source .bashrc
```

```sh
cd spark/bin/
# pyspark (CLI) y spark-submit (EXEC)
```

Ejecutar un ejemplo que lee un csv

```sh
../spark/bin/spark-submit yourcode.py yourdata.csv
```

**Con Docker:**

https://github.com/big-data-europe/docker-spark

<div align="center">
  <img src="img/3.png">
</div>