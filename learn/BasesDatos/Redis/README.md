# Redis<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->

- [Redis](#redis)
  - [Utilidades](#utilidades)
  - [Instalación](#instalación)
  - [Ejecución de código](#ejecución-de-código)
- [Enlaces de Interés](#enlaces-de-interés)

## Redis

Redis es una base de datos no relacional de clave valor. Es importante porque una característica de las bases de datos no relacionales es la forma en la que trabajan con la información, Redis almacena la información en memoria y cuando tu lo desees envías al disco, de esta forma se puede acceder con mucha rapidez a la información.

En Redis, las base de datos no tienen nombre sino que usan números

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Utilidades

* `Full page cache` hacer que toda la aplicación se renderee una sola vez y el html se guarde en una key de Redis. Cuando el visitante vuelva a entrar a la pagina se carga solo lo previamente rendereado y ya no hay que volver a hacer request.
* `PubSub` Crear emisión de datos desde un publisher, y tener subscribes, de modo que toda la información que el publisher emita a un canal, todos los subscribes se enteran en tiempo real.
* Guardar información como cola

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Instalación

Si no tienes Windows 10 deberás utilizar una versión en Github modificada para funcionar en Windows, el enlace es https://github.com/ServiceStack/redis-windows.

Si tienes Windows 10, utilizar Linux for Windows:
1. Instala Ubuntu for Windows
2. Abrir la consola de Ubuntu
3. $ sudo apt-get update
4. $ sudo apt-get install redis-server

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Ejecución de código

**Principales**
* `redis-server` inicia el servidor de BD.
* `redis-cli` iniciar el cliente de BD.
* `select [número de la BD]` cambiar de base de datos.
* `info` ver la información del cluster de redis.

**Obtención y asignación de datos**
* `keys *` muestra todas las claves almacenadas
* `SET [clave] [valor]` setea el valor en la clave. La información se guarda como string
* `GET [clave]` lee el valor de la clave
* `DEL [clave]` elimina el valor asignado a la clave. Se puede eliminar varios valores con una coma (,).
* `mset a "hola" b "Mundo" c "!"` realiza la asignación de multiples valores en una línea
* `mget a b c` lee multiples claves
* `exists [clave]` prueba si existe una clave
* `expire [clave] [seconds]` asigna tiempo de expiración a una clave

* `EVAL "return redis.call('del', unpack(redis.call('keys', ARGV[1])))" 0 pattern*` elimina todas las clave que empiezan con pattern
* `SETEX [clave] [tiempo en segundos] [valor]` setea el valor en la clave por un tiempo determinado.
* `FLUSHDB` elimina toda la base de datos donde se encuentra seleccionada.
* `FLUSHALL` elimina toda la información de todas las bases de datos.

**Operadores**
* `incr [clave]` incrementa una clave númerica si el valor actual es 0, pasa a 1
* `decr [clave]` decrementa una clave númerica si el valor actual es 1, pasa a 0

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Enlaces de Interés
* [Curso de MongoDB y Redis](https://platzi.com/clases/mongodb-redis/)
* [Cryptongo](https://github.com/MineiToshio/cryptongo)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>