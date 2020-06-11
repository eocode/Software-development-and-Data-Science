# DevOps<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)
  - [¿Qué es DevOps?](#qué-es-devops)
  - [Ciclo de vida del DevOps](#ciclo-de-vida-del-devops)
  - [GitLab](#gitlab)
  - [Gitlab vs Github](#gitlab-vs-github)
- [Administración](#administración)
  - [Autenticación](#autenticación)
    - [Recomendaciones](#recomendaciones)
    - [Generar llave SSH](#generar-llave-ssh)
- [Planificación](#planificación)
- [Verificación](#verificación)
- [Seguridad](#seguridad)
- [Distribución](#distribución)
- [Monitoreo](#monitoreo)

# Introducción

Todas las computadores que tienes a tu alrededor corren software que nosotros como desarrolladores escribimos, sin embargo las prácticas tradicionales han hecho que tanto las entregas, seguridad, entre otras no sean óptimas o no podamos movernos a la velocidad que nos gustaría cuando automatizamos.

**DevOps es una serie de prácticas culturales, pero también de herramientas que nos permiten llevar software de manera ágil a los usuarios.** Cuentas con herramientas como manejo de repositorio(Github o **Gitlab**), **CI** o **CD**(CircleCI, TravisCI o **Gitlab**), manejo de proyectos (Trello, Asana o **Gitlab**).

> **Gitlab** es una herramienta que nos permite utilizar las buenas prácticas del DevOps en un solo lugar.

## ¿Qué es DevOps?

<div align="center">
  <img src="img/devops.jpg">
</div>

**Si desarrollas software tú debes ser el encargado y el responsable de que ese programa corra muy bien en producción.** No existe el "corre en mi máquina"

Un desarrollador **escribe el código** que alimenta a la aplicación, se encarga de la **seguridad** y que no existan huecos de seguridad. También **empaqueta** el código mediante contenedores para correr en la infraestructura especificada.

**Un DevOps se asegura de que el código corra configurando servidores, redes, infraestructura del internet y más.** Se encarga de que las máquinas funcionen y puedan dar el servicio escrito por los desarrolladores.

<div align="center">
  <img src="img/1.png">
</div>


Un DevOps es un superhéroe, se encarga que desde el momento en que se escribe el código hasta cuando corre en el **dispositivo de nuestros clientes, todo el proceso sea seguro, automatizado y con prácticas de calidad.**

* **Pruebas automatizadas:** Las unit test que deberías estar escribiendo.
* **Continuous Integration:** Automatiza los procesos de calidad.
* **Continuous Delivery:** Se trata de enviar continuamente código a nuestros cliente.
* **Monitoreo y logging:** Es la forma de saber qué es lo que sucede dentro de nuestro programa y detectar problemas oportunamente.
* **Microservicios:** Separa las funcionalidades de la aplicaciones en servicios independientes.
* **Comunicación y colaboración:** Muy importante en la cultura DevOps.

## Ciclo de vida del DevOps

El modelo de DevOps no es una receta de cocina donde sigues las instrucciones y obtendrás un resultado. Este modelo es iterativo, un infinite loop y si lo detenemos nuestra compañía muere.

**El modelo de DevOps se entiende como un loop donde existen diferentes etapas y consideraciones que atienden algunas etapas en especifico.**

* **Plan:** Acá definimos las labores, los requerimientos que se necesitan para implementar en nuestra plataforma y para esto usamos herramientas como issues o boards.
* **Create:** Es escribir el código necesario para resolver el problema de negocio que tenemos. Todo este código podemos tenerlo en un solo lugar para colaborar y se hace uso de repositorios, también branchs o tags.
* **Verify:** Se corren nuestras pruebas automatizadas donde definimos las reglas a probar.
* **Package:** Empaquetamos nuestro código para correr en una infraestructura determinada. Normalmente se hace en un contenedor de Docker.
* **Release:** Una nueva versión de nuestro código y llega a producción.
* **Configure:** Se puede cambiar nuestro cluster de kubernetes, mandar instrucciones para manejar el nuevo estado de nuestra aplicación.
* **Monitor:** Cómo nuestro código esta funcionando, qué tipo de performance ocurre en los dispositivos de nuestros clientes.

<div align="center">
  <img src="img/devops2.jpg">
</div>

<div align="center">
  <img src="img/2.png">
</div>

* **Velocidad:** Es lento hacer las cosas manuales
* **Rápida distribución:** Poder comparar cambios diariamente ayuda mucho
* **Confiabilidad:** Cuando tenemos procesos manuales, nos podemos equivocar como humanos, al hacer bien nuestro trabajo de devops, bajamos ese error.
* **Escala:** Al automatizar bajamos el tiempo y hace que podamos crecer nuestra infraestructura a una escala antes no imaginada
* **Colaboración:** Al estar todo el equipo en comunicación se mejora la colaboración
* **Seguridad:** Las máquinas se ponen a hacer revisones de seguridad constantes cada que realizamos un cambio.

## GitLab

Gitlab es una compañía que realiza un proyecto open source, **un producto especializado en el ciclo de vidas del DevOps.**

* **Administración:** Nos da opciones de autenticación, autorización, analytics y self hosted gitlab.
* **Planificación:** Nos da issues, milestones, burndown charts, discusiones, boards, service desk, to-dos, etc.
* **Creación:** Generar proyectos, grupos, repositorios de código, merge request, integración y automatización.
* **Verificación:** Correr pruebas automatizadas, calidad del código, review apps y code coverage.
* **Empaquetación:** Container registry, paquetes privados.
* **Distribución(release):** Deployment strategies, ambientes, Gitlab pages, feature flags.
* **Configuración:** Existe la posibilidad de que debas cambiar la configuración de tu sistema. Auto DevOps, integración con Kubernetes, Knative serverless, manejo de secreto, chatops.
* **Monitoreo:** Prometheus, Jaeger, Sentry.
* **Seguridad:** Container scanning, dependency scanning, dynamic security testing, static security testing, manejo de licencias, security dashboard.
* **Defensa:** Gitlab está trabajando en herramientas para esta etapa como Firewalls, threat detection, data loss prevention y más.

<div align="center">
  <img src="img/gitlab.jpg">
</div>

## Gitlab vs Github

Github y Gitlab son plataformas que comparten algunas funcionalidades aunque tienen objetivos diferentes.

**Github** nace como un repositorio en la nube colaborativo basado en Git para permitir participar en proyectos. En Github una persona fuera de una organización puedan colaborar en estos proyectos, es como una red social de programadores. Fue adquirido por Microsoft.

**Gitlab** nació como una versión open source de Github y a lo largo del tiempo ha encontrado un nicho en agregar herramientas y generar integraciones directamente al producto. **Tiene una visión de que su cliente principal es alguien especializado en DevOps**

# Administración

## Autenticación

GItlab te ofrece varias formas de autenticación tales como:

* **Username y Password**
* **Two factor authentication(2FA)** (Claves unicas)
  * OTP One Time Password
  * FIDO U2F Hace que el browser sea inmune a fishing
* **SSH Key**
  * Push

### Recomendaciones

* Google authenticator (OTP)
* Authy
  * https://authy.com/
* Yubico

### Generar llave SSH



# Planificación

# Verificación

# Seguridad

# Distribución

# Monitoreo