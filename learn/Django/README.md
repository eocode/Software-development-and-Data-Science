# Django <!-- omit in toc -->

> Conceptos clave de Django

## Tabla de Contenido<!-- omit in toc -->
- [¿Qué es Django?](#%c2%bfqu%c3%a9-es-django)
  - [Crear un proyecto nuevo](#crear-un-proyecto-nuevo)
  - [Jerarquía de ficheros](#jerarqu%c3%ada-de-ficheros)
- [Django APPS](#django-apps)
  - [HttpResponse](#httpresponse)
- [Templates](#templates)

# ¿Qué es Django?

* Django es un **framework web** programado en Python, gratuito y libre.
* Su nombre viene dado en alusión al **guitarrista de jazz Django Reinhardt**.
* Fue creado en **2003** cuando los desarrolladores web del diario Lawrence Journal-World migraron la arquitectura de su versión online a Python.
* **En 2005 fue liberado al público bajo la licencia BSD y desde 2008 es la DSF (Django Software Foundation)** quien se hace cargo del proyecto con la intención de apoyar el desarrollo, promover su uso, proteger su propiedad intelectual y asegurar su viabilidad a largo plazo.
* Es ámpliamente utilizado por grandes sitios web, entre los que destacan **Mozilla, Pinterest, Instagram, Bitbucket, Eventbrite, el diario Washington Times** y muchos otros.
* Promueve el **desarrollo ágil y extensible**, aplicando el principio **DRY (don’t repeat yourself).**

Algunas de sus características más importantes son:

* Un sistema basado en **componentes reutilizables llamados “apps”.**
* Un **mapeador ORM para manejar registros de la base de datos** como si fueran objetos, junto a una API muy robusta para su acceso. 
* **Un panel de administrador** para gestionar esos objetos a través de formularios.
* **Un potente sistema de plantillas** extensibles con herencia basado en etiquetas.
* Y mil cosas más: sesiones, formularios, internacionalización, middlewares, testing, caché…

> Para acabar destacar también la gran documentación oficial, un lugar perfecto para aprender, así como a su cada día más extensa comunidad de usuarios, lo que confirma su buen momento y el futuro que tiene por delante.

## Crear un proyecto nuevo

Consulta la documentación

https://www.djangoproject.com/start/

## Jerarquía de ficheros

Al crear un proyecto nuevo se creará una carpeta con el **nombre de la aplicación** **junto a un fichero llamado manage.py**. Este fichero es un script que sirve para gestionar todo nuestro proyecto desde la terminal.

La carpeta contiene los siguientes archivos, 
* El fichero __init.py__ nos indica que la carpeta es un paquete
* **Settings.py** es el que contiene la configuración del proyecto
* **urls.py** es el fichero encargado de manejar las direcciones de la web (sí esas que se escribirán en la barra del navegador) 
* y por último **wsgi.py**, un script que contiene la información para desplegar el proyecto en producción.

Para ejecutar el servidor de desarrollo ejecutar:
``python manage.py runserver``

<div align="center">
  <img src="img/1.png">
  <small><p>Django App</p></small>
</div>

Django nos muestra **DEBUG está en True** variable que se encuentra en el settings.

Ahí vamos a encontrar una configuración muuuy extensa, llena de variables, listas, directorios… Por ahora quedémonos con la de DEBUG = Truem, nos indica una descripción justo encima "AVISO DE SEGURIDAD: no poner en marcha con el debug en producción".

El modo DEBUG, es un modo de ejecución especial en el que siempre que ocurra un fallo, Django nos mostrará un montón de información para analizarla y poder solucionarlo.

Podemos cambiar el idioma por defecto cambiando la variable del fichero settings: **LANGUAGE_CODE a es_mx**. Si queréis algo más específico consultad la documentación del enlace justo encima:

El siguiente paso que tenemos que llevar a cabo, justo después de crear un proyecto, es crear la base de datos inicial. Lo tenemos que hacer para que Django pueda gestionar un montón de cosas por nosotros, como por ejemplo las sesiones, los usuarios o los grupos. Para hacerlo vamos de vuelta al fichero settings.py y buscaremos el diccionario llamado DATABASES.

https://docs.djangoproject.com/en/3.0/ref/settings/#databases

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'mydatabase',
        'USER': 'mydatabaseuser',
        'PASSWORD': 'mypassword',
        'HOST': '127.0.0.1',
        'PORT': '5432',
    }
}
```

Migración de datos

```shell
python manage.py migrate
```

<div align="center">
  <img src="img/2.png">
  <small><p>Tablas por defecto</p></small>
</div>

# Django APPS

Django apuesta por un **sistema de reutilización de código organizado en apps**, algo así como **aplicaciones internas que implementan funcionalidades específicas**.

Las Apps activas en un proyecto de Django, las encontramos definidas en el fichero de configuración settings.py, en la lista **INSTALLED_APPS**:

```python
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
]
```

Por lo tanto podríamos concluir en que, mientras una app es una aplicación web que implementa una funcionalidad y por sí misma no sirve para nada, un proyecto es un conjunto de configuraciones a las que se "conectan" esas apps para que todo unido de lugar a un sitio web completo. Un proyecto puede contener múltiples apps, y una app puede ser incluida en múltiples proyectos.

Para crear apps basta con ejecutar el siguiente comando:

```shell
python manage.py startapp core
```

**De todos estos ficheros el que nos interesa es ese llamado views.py**. Este fichero es uno de los más importantes y en él se definen las vistas de la app. Una vista hace referencia a la lógica que se ejecuta cuando se hace una petición a nuestra web, y lo que vamos a hacer es crear una vista para procesar la petición a la raíz de nuestro sitio, lo que sería la portada.

## HttpResponse

Este método que nos permite contestar a una petición devolviendo un código, así que vamos a definir una vista para la portada y devolveremos algo de HTML de ejemplo:

```shell
from django.shortcuts import render, HttpResponse

def home(request):
    return HttpResponse("<h1>Mi Web Personal</h1><h2>Portada</h2>")
```

Cada vista se corresponde con una función del fichero views.py.

Recibe un argumento llamado **request**

Para decirle a Django en qué URL tiene que mostrarla yourapp/urls.py

```python
from django.contrib import admin
from django.urls import path
from core import views

urlpatterns = [
    path('', views.home, name="home"),
    path('admin/', admin.site.urls),
]
```

¿Qué significa esto? Pues que del package core (__init.py__) **importamos el módulo views**, es decir, **de la app core importamos las vistas**. Y a continuación **creamos un patrón url**, justo en la raíz del sitio (cadena vacía) desde el que llamaremos a la vista views.home a la que damos el nombre home.

```python
def home(request):
    html_response = "<h1>Mi Web Personal</h1>"
    for i in range(10):
        html_response += "<p>Esto es la portada</p>"
    return HttpResponse(html_response)
```

# Templates