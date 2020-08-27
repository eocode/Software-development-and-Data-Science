# Docker<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)
  - [¿Problematicas del desarrollo de software profesional?](#problematicas-del-desarrollo-de-software-profesional)
  - [Comandos](#comandos)
  - [Construir aplicaciones](#construir-aplicaciones)

# Introducción

## ¿Problematicas del desarrollo de software profesional?

A la hora de hacer aplicaciones y proyectos de software nos podemos encontrar con varios problemas, estos problemas los podemos agrupar en tres categorías:

* **Construir**. Escribir código
  * Dependencias de desarrollo
  * Versiones de entornos de ejecución
  * Equivalencia de entornos de desarrollo
  * Equivalencia con entornos productivos
  * Versiones/compatibilidad 3rd party
* **Distribuir**. Aplicación funcionando en otras maquinas
  * Output de build heterogéneo
  * Acceso a servidores productivos
  * Ejecución nativa vs virtualización
  * Serverless
* **Ejecutar**.
  * Dependencias de aplicación
  * Compatibilidad de sistema operativo
  * Disponibilidad de servicios externos
  * Recursos de hardware

> Docker promete ser la solución a todo nuestros problemas de una manera simple y sencilla.

Build, ship and run your code Anywhere

## Comandos

```bash
docker

docker run --name system ubuntu

docker run -d --name server nginx
docker run -d --name server -p 8080:80 nginx

docker run -d --name db mongo
docker exec -it db bash
mongo
use master
db.users.insert({"name":"Elias"})
db.users.find()

docker run --name db -d -v /C/Users/elias/Desktop/mongodata:/data/db mongo
docker exec -it db bash

mongo
use master
db.users.insert({"name":"elias"})
db.users.find()
```


Volumenes
https://docs.docker.com/storage/volumes/

```shell
docker volume ls
docker volume prune
docker volume create dbdata
docker volume ls
docker run -d --name db -v dbdata:/data/db mongo
```

Imagenes
```shell
docker pull redis
```

Dockerfile
```dockerfile
FROM ubuntu

RUN touch /usr/src/hola
```

```shell
# Construir la imagen
docker build -t ubuntu:eocode .

# Cambiar tag
docker run -it ubuntu:eocode
ls -lac /usr/src
docker tag ubuntu:eocode eocode/ubuntu:master

# Enviar al repositorio
docker push eocode/ubuntu:master

# Historial de repositorio
docker history eocode/ubuntu:master
```

Herramienta para ver que paso con la imagen
https://github.com/wagoodman/dive

## Construir aplicaciones

```shell
# Construir app
docker build -t dockerapp .
docker run -it -p 3001:3000 -v /C/Users/elias/Desktop/docker:/usr/src dockerapp

# Red
docker network ls
docker network create --attachable eocodenetwork
docker run -d --name db mongo
docker run -d --name app -p 3000:3000 --env MONGO_URL=mongodb://db:27017/test dockerapp

docker network connect eocodenetwork app
docker network connect eocodenetwork db
```