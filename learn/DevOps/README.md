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
  - [Grupos](#grupos)
  - [Autorización](#autorización)
  - [Auditoria](#auditoria)
  - [Proyectos](#proyectos)
- [Planificación](#planificación)
  - [Tipos de desarrollo](#tipos-de-desarrollo)
  - [Issues](#issues)
  - [Etiquetas](#etiquetas)
  - [Pesos (Estimación de tiempo/trabajo)](#pesos-estimación-de-tiempotrabajo)
  - [Milestones](#milestones)
  - [Boards](#boards)
  - [Service Desk](#service-desk)
  - [Quick actions](#quick-actions)
- [Verificación](#verificación)
  - [Inicialización del repositorio](#inicialización-del-repositorio)
  - [Merge request](#merge-request)
  - [Continuous Integration-CI](#continuous-integration-ci)
  - [Gitlab CI](#gitlab-ci)
    - [Verificar](#verificar)
    - [Empaquetar](#empaquetar)
    - [Lanzar](#lanzar)
  - [Automatizacion con GitLab Cl](#automatizacion-con-gitlab-cl)
  - [Validacion de la configuracion con GitLab Cl](#validacion-de-la-configuracion-con-gitlab-cl)
  - [gitlab-ci.yml](#gitlab-ciyml)
- [gitlab-ci.yml](#gitlab-ciyml-1)
  - [Gitlab pages](#gitlab-pages)
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


Generar una llave ssh

``ssh-keygen -o -t rsa -b4096 -C "tu.correo@mail.com"``

Para copiar tu llave al porta papeles

mac
``pbcopy < ~/.ssh/id_rsa.pub``
linux (previamente debemos instalar xclip)
``xclip -sel clip < ~/.ssh/id_rsa.pub``
windows (desde git bash)
``cat ~/.ssh/id_ed25519.pub | clip``

Pega tu llave SSH en github

## Grupos

Los grupos te permiten **compartir recursos entre varios miembros del equipo** y organizar la forma en la que trabajas.

* **Agrupar proyectos:** dónde va a vivir nuestro código y los recursos asociados.
* **Otorgar permisos de acceso:** qué usuarios de qué equipo van a poder acceder a los recursos de la compañía.
* **Compartir recursos:** Si tienes cluster de Kubernetes, templates o runners para correr el CI lo puedes compartir entre varios grupos.

Los grupos se utilizan en Gitlab a través de los **Namespaces** que nos dan una url única para nuestro usuario, grupo y subgrupo.

**Reserved project and group names**

https://docs.gitlab.com/ee/user/reserved_names.html

**Visibilidad**

* Público
* Interno
* Private

## Autorización

Existen diferentes formas de autorizar un usuario dentro de un grupo y estos mismos modelos se utilizan para los proyectos:

* **Guest:** Es Read-only, solo tiene permisos de lecturas. No puede modificar código, crear o comentar issues.
* **Reporter:** Solo puede crear y comentar en los issues. No puede añadir código.
* **Developer:** Puede añadir código, también da acceso a los Pipelines de CI, branchs y más, pero no da la capacidad de agregar nuevos miembros.
* **Owner / Maintainer:** Eres Owner cuando creas un proyecto y Maintainer cuando alguien más te da permisos para administrar ese proyecto.

## Auditoria

Gitlab nos permite generar rastro de auditoría cuando se realizan cambios que pueden modificar el grupo, el proyecto o la instancia.

**Eventos**

* Grupo
* Proyecto
* Instancia

Configuración -> Eventos de auditoria

## Proyectos

Los proyectos tienen tres componentes fundamentales:

* **Issue tracker:** No es uno genérico para cualquier compañía, es específico para equipos que desarrollan software y adentro encontrarás conceptos como **agile**, **milestone**, **estimados de tiempo** y más.
* **Code repository:** Es el lugar centrar que nos va a permitir compartir y colaborar alrededor del código.
* **Gitlab CI**: Nos muestra la posibilidad de automatización con la inclusión de **Continuous Integration**.
* Wikis
* Dashboards de seguridad
* etc ...

# Planificación

## Tipos de desarrollo

Las principales diferencias entre **Agile y Waterfall** es que en el primero encontramos un proceso iterativo y en el segundo utilizamos un proceso previamente definido.**En Agile estamos realizando sprints**, **pequeños esfuerzos de trabajo para al final tener un entregable y mandarlo a producción.**

En Waterfall tenemos nuestro entregable hasta el final del proyecto, como crear una casa de manera modular.

<div align="center">
  <img src="img/3.png">
</div>

**Waterfall**

<div align="center">
  <img src="img/4.png">
</div>

**Agile**

<div align="center">
  <img src="img/5.png">
</div>

## Issues

Los issues son el punto donde inicia una conversación sobre el código.

Los issues permiten:

* Discutir la implementación de una nueva idea.
* Sugerir propuestas de features.
* Hacer preguntas.
* Reportar bugs y fallos.
* Obtener soporte.
* Planear nuevas implementaciones de código.

Puedes añadir **templates** a tus issues para poder estandarizar la forma en la que se abren, podemos incluirlo de cualquier tipo. Debes crear un archivo o una estructura de carpeta como:

``.gitlab/issue_templates/Bug.md``

<div align="center">
  <img src="img/6.png">
</div>

Gestionar el tiempo

``/estimate 1d``
``/spend 4hrs``

https://docs.gitlab.com/ee/user/project/issues/

## Etiquetas

El siguiente paso **es clasificar los issues basados en etiquetas**, suele salirse de control la forma en la que se reportan y una manera sencilla de organizar es con etiquetas.

Las etiquetas nos permiten:

* **Categorizar issues** o merge request con títulos descriptivos.
* **Filtrar** y buscar en Gitlab
* **Seguir temas** a través de notificaciones.

> Te puedes subscribir a las etiquetas

**Tipos**

* Grupo
* Proyecto
* Infraestructura

https://docs.gitlab.com/ee/user/project/labels.html

**Labels recomendados**

* Seguridad
* Feature

> Se pueden promover las etiquetas
> Se pueden priorizar

## Pesos (Estimación de tiempo/trabajo)

Uno de los puntos más complejos del desarrollo de Software es la estimación. 

Gitlab nos ofrece para poder **estimar la cantidad de trabajo que un issue requiere**, qué ventajas tiene agregar pesos a los issues y algunas de las buenas prácticas relacionadas con este ejercicio.

**Gitlab ofrece la funcionalidad de agregar pesos a los issues.** Estos pesos se representan de manera numérica (con el límite de que los números deben poderse representar en 4-bytes). Los pesos aparecen en el menú derecho del Issue, junto al nombre del issue en la lista de issues y sirven para determinar la cantidad de trabajo ejecutado en los **Burndown Charts de los Milestones.**

<div align="center">
  <img src="img/7.png">
</div>

Ahora bien, estimar es algo difícil. Para los desarrolladores de software es una de las tareas –quizá la tarea más difícil– de nuestro trabajo. Se deben tomar en cuenta muchísimos factores, muchos de ellos desconocidos, para tomar decisiones que afectarán al resto del equipo y a la compañía misma. Por eso, muchos desarrolladores y product owners son reacios a estimar; **pero hay que recordar que la estimación es tan solo eso: un estimado.** No es un juramento de sangre ni una declaración solemne ante autoridad judicial. **En pocas palabras, jamás trabajes fines de semana y vacaciones para cumplir un estimado.**

No obstante lo anterior, existen un par de buenas prácticas que te ayudarán a ser más preciso y ayudar a los product owners a priorizar el trabajo pendiente.

**El primer punto que debes tener en cuenta es que la estimación es un trabajo de equipo.** Es importante que diversos equipos de trabajo colaboren en la estimación. **Los Desarrolladores, Diseñadores, Product Managers, etc.** **tienen diversas perspectivas sobre lo que implica desarrollar una nueva funcionalidad.** Cuando la estimación se realiza tomando en cuenta estas perspectivas existe una mayor probabilidad de que la estimación se acerque a la realidad.

Otro punto importante es que las estimaciones funcionan mejor cuando son relativas. **Es decir es mejor encontrar un trabajo relativamente sencillo en el que todo el equipo se encuentre de acuerdo y estimar a partir de ese punto.** Por ejemplo, si todo el equipo está de acuerdo en que añadir verificación a los campos de un formulario es un 2, entonces estimemos con base en ese acuerdo.

Es importante recordar que cuando estimamos, es buena práctica tener un sistema de estimación en el que el equipo esté de acuerdo. Un ejemplo muy usado en la industria son los puntos Fibonacci. Es decir, se utiliza la secuencia de Fibonacci para asignar pesos a issues (1, 2, 3, 5, 8, 13, etc.). **Otra forma, es utilizar tallas de camisas (S, M, L, XL, XXL, etc.).** En todo caso, lo importante es que el equipo entienda estos sistemas y los adopte en sus prácticas.

Por último, cuando incluímos a varios miembros del equipo en la estimación es importante que sus opiniones no se vean sesgadas por el resto de sus compañeros. **Por eso, una práctica que me gusta mucho es la de jugar “Estimation Poker”.** En esta modalidad de estimación, todo el equipo tiene barajas que representan los puntos y cuando se pone a discusión un issue, los miembros del equipo revelan su estimado con las barajas. **Si todos están de acuerdo, perfecto. Pero si existen grandes discrepancias es momento de escuchar y de volver a evaluar con la nueva información que nos ha sido proporcionada.** En todo caso, lo importante es mejorar con el paso de los sprints y que las estimaciones, quizá nunca perfectas, sean lo más realistas posibles.

## Milestones

Los Milestones **permiten agrupar issues para completarlos en un tiempo determinado.**

* Milestone como agile sprint
  * Sprint 5
* Milestone como release
  * V1.1.2

**Brundown chart** nos permite determinar qué tan avazando vamos dentro de un sprint y nos permite tomar acciones cuando todavía es relevante.

https://docs.gitlab.com/ee/user/project/milestones/

<div align="center">
  <img src="img/8.png">
</div>

Un burndown chart muestra la velocidad a la que se está completando los objetivos/requisitos. Permite extrapolar si el Equipo podrá completar el trabajo en el tiempo estimado.

Se pueden utilizan los siguientes burndown charts:


* **Product burndown chart:** Son los días pendientes para completar los requisitos del producto o proyecto, realizado a partir del Product Backlog (lista de requisitos priorizada).

https://proyectosagiles.org/lista-requisitos-priorizada-product-backlog/

* **Sprint burndown chart:** Horas pendientes para completar las tareas de la iteración, realizado a partir del Iteration Backlog (lista de tareas de la iteración).

https://proyectosagiles.org/lista-tareas-iteracion-sprint-backlog/

Este tipo de gráfico permite realizar diversas simulaciones, ver cómo se aplazan las fechas de entrega si se le añaden requisitos, ver cómo se avanzan si se le quitan requisitos o se añade otro equipo, etc.

## Boards

**Los boards son una forma de visualizar los flujos de trabajo**, de ver quién está trabajando en qué issues y son unas de las herramientas más importantes que existen dentro de Gitlab.

Se puede utilizar para **Kanban o Scrum**.

**Une los mundos de los issue tracking y Project managment.**

**Servicio similar**

https://taiga.io/

## Service Desk

**El Service Desk es la capacidad que te da Gitlab de abrir issues a través de correo electrónico.**

Permite dar **soporte a través de email a tus clientes directamente desde Gitlab.**

Permite que el equipo no técnico reporte bugs o abra issue sin necesidad de que tengan una cuenta de Gitlab.
Cuando se activa el servicio, se genera un email único para el proyecto.

## Quick actions

Las Quick Actions son atajos textuales para acciones comunes en **issues, epics, merge request y commits que normalmente son ejecutadas a través de la UI de Gitlab.** Los comandos se pueden agregar al momento de crear un issue o un merge request o en los comentarios de los mismos. Cada comando debe incluirse en una línea separada para que se detecten y ejecuten. Una vez ejecutados, los comandos se retiran del texto y no pueden verse en el comentario o descripción del issue.

<div align="center">
  <img src="img/cm1.jpg">
</div>

<div align="center">
  <img src="img/cm2.jpg">
</div>

https://docs.gitlab.com/ee/user/project/quick_actions.html

# Verificación

## Inicialización del repositorio

* Agrega el repositorio a tu proyecto con ``git remote``

* Vincula tu key generada

``git config core.sshCommand "ssh -o IdentitiesOnly=yes -i yourkey -F /dev/null"``

## Merge request

Los Merge Requests so**n la puerta de entrada a nuestro código**, es el momento en donde definimos que un cambio sugerido por otra persona será unido a nuestra rama master o rama principal. Para tomar esta decisión se necesita mucha información: si los cambios fueron correctos, resuelven el issue, si surgen problemas de seguridad, si mejora nuestro performance.

El título del merge requests tiene prefijado WIP que significa 

* Pipeline status
* Security reports
* Performance impact
* Code changes (diffs)
* Review apps

Al generar un issue, puedes generar un merge request para resolverlo

<div align="center">
  <img src="img/9.png">
</div>

## Continuous Integration-CI

> Integra código en cada commit

El Continuous Integration es una práctica en la que los desarrolladores **envían sus cambios a un repositorio central, lo cual detona builds y pruebas automatizadas.**

* Ayuda a **encontrar bugs** de manera oportuna
* Aumenta la **velocidad** de los releases
* **Automatiza el pipeline que lleva código** desde la computadora del desarrollador hasta el dispositivo del cliente.

## Gitlab CI

Gitlab CI **es el hub central de automatización de Gitlab**, es el pedazo que podemos configurar libremente para generar las automatizaciones necesarias para que nuestro flujo de trabajo requiera poca o ninguna interacción humana.

**Continuamente construye**, **prueba y despliega cambios pequeños al código.**

* Se configura con el archivo **gitlab-ci.yml**
* También nos permite realizar Continuous Delivery y Continuous Deployment.

<div align="center">
  <img src="img/10.png">
</div>

### Verificar
* Crear y probar automáticamente la aplicación con la integración continua.
* Analizar la calidad del código con GitLab Code Quality.
* Determinar el impacto en el rendimiento de los cambios de código con las Prueba de rendimiento en el navegador.
* Realice una serie de pruebas, como Escaneo de contenedores, Escaneo de dependencias, y JUnit tests.
* Implemente sus cambios para obtener una vista previa de los cambios de la aplicación en cada sucursal.

### Empaquetar
* Almacenar las imágenes de Docker con Container Registry.
* Almacene paquetes NPM con NPM Registry.
* Almacene los repositorios Maven con Repositorio Maven.
* Almacene Conan Repositories con Conan Repository.

### Lanzar
* Continuous Deployment, implementando automáticamente la aplicación en producción.
* Continuous Delivery, haga clic manualmente para implementar su aplicación en producción.
* Implemente sitios web estáticos con GitLab Pages.
* Envíe funciones a solo una parte de sus pods y permita que un porcentaje de su base de usuarios visite la función implementada temporalmente con Canary Deployments.
* Implementación de funciones detrás de * Indicadores de funciones.
* Agregue notas de lanzamiento a cualquier etiqueta de Git con GitLab Releases.
* Vista del estado actual y el estado de cada entorno de CI que se ejecuta en Kubernetes con Deploy Boards.
* Implementa tu aplicación en un entorno de producción en un clúster de Kubernetes con Auto Deploy.

https://docs.gitlab.com/ee/user/project/pages/getting_started_part_four.html

<div align="center">
  <img src="img/11.png">
</div>

<div align="center">
  <img src="img/12.png">
</div>

<div align="center">
  <img src="img/13.png">
</div>

<div align="center">
  <img src="img/14.png">
</div>

https://docs.gitlab.com/ee/ci/yaml/#before_script-and-after_script

## Automatizacion con GitLab Cl

* Creamos un issue
* Creamos un archivo gitlab-ci.yml dentro del repo en la raíz

https://docs.gitlab.com/ee/ci/examples/

## Validacion de la configuracion con GitLab Cl

* Linter para verificar sintaxis del archivo de configuración

https://gitlab.com/eocode-group/devops/-/ci/lint

## gitlab-ci.yml

**El archivo .gitlab-ci.yml sirve para configurar el comportamiento de Gitlab CI en cada proyecto.** En el archivo define la estructura y el orden de los pipelines y determina qué ejecutar con el Gitlab runner y qué decisiones tomar cuando condiciones específicas se cumplen (como cuando un proceso falla o termina exitosamente).

El archivo tiene muchas opciones de configuración, pero aquí nos vamos a enfocar en tres: **image, stages y jobs.**

**La primera opción de configuración es image**. image nos sirve para determinar qué imagen de **Docker** vamos a utilizar para ejecutar el runner. Hay que recordar que, en su nivel más básico, **los trabajos de CI son simplemente automatización de scripts.** Con esto en mente, tenemos que determinar qué ambiente necesita nuestro script para correr de manera exitosa. ¿Necesitas instalar dependencias desde NPM y ejecutar scripts de package.json? Entonces es muy probable que la imagen de Node te sirva como base. **Quizá necesitas correr pruebas unitarias de una aplicación de Python e instalar dependencias desde PyPi; entonces deberías instalar la imagen de Python.**

Al final del día, el keyword image nos permite **“preinstalar”** los paquetes que nuestro script necesitará para correr: desde sistema operativo y lenguajes de programación, hasta software específico como bases de datos.

Un último punto, image puede utilizarse de manera global o por cada job que ejecutemos. **Es decir, si nuestro proyecto lo requiere podemos utilizar una imagen de Node para un job y otra de Ruby para otro.**

```yml
# gitlab-ci.yml
image: node:11.1.0

# ó

job1:
  image: python:3.7
```

Por su parte, **los stages nos permiten definir las etapas que atravesará nuestro pipeline cuando corra.** **Cada stage (etapa) puede contener uno o más jobs que correrán en paralelo.** Los stages permiten agrupar los jobs que pertenezcan a una categoría y permiten crear diversas dependencias entre cada job. Un ejemplo de un pipeline multietapa sería el siguiente:

``Install -> Test -> Build -> Deploy
``

Dicho pipeline lo podríamos configurar en .gitlab-ci.yml de la siguiente manera:

# gitlab-ci.yml

```yml
stages:
  - install
  - test
  - build
  - deploy

job1:
  stage: install
…
```

Es importante recordar que para configurar nuestros pipelines de manera correcta, **tenemos que declarar el nombre de nuestras etapas como una lista bajo el keyword stages y luego indicar en cada job a qué etapa pertenece con el keyword stage.**

Por último, los jobs son los encargados de ejecutar los scripts de automatización en cada etapa. En este sentido, **un job puede tener casi cualquier nombre (aunque siempre debes intentar nombrar de acuerdo a la función de lo que estás nombrando) y debe contener un script que se ejecutará.** Los jobs se ejecutan por los runners cuando se encuentran disponibles. Gran parte de la configuración adicional de los jobs está relacionada con las condiciones sobre las cuales se debe ejecutar y que artefactos exporta para otros jobs en el pipeline.


```yml
# gitlab-ci.yml

job1:
  script:
    - echo “Hello, world”
    - npm install
    - echo “etc.”
…
```

https://gitlab.com/group/proyect/-/ci/lint

## Gitlab pages

* Hosting estático
* Integración con gitlab CI
* Dominios personalizados



# Seguridad

# Distribución

# Monitoreo