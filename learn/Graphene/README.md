# Django Graphne <!-- omit in toc -->

> Conceptos clave de Django Graphene para GraphqlApis

## Tabla de Contenido<!-- omit in toc -->
- [Introducción a Django REST Framework](#introducci%c3%b3n-a-django-rest-framework)
  - [Request y Reponse](#request-y-reponse)
  - [Serializers](#serializers)
  - [Model serializers](#model-serializers)
  - [Class-based views](#class-based-views)
  - [¿Mixins?](#%c2%bfmixins)

# Introducción a Django REST Framework

El uso de herramientas cada vez más especializadas en la construcción de interfaces gráficas continúa en aumento y la necesidad de construir APIs que puedan alimentarlas crece junto con ellas. Ya sea que desees construir un API para alimentar a un cliente o para exponer funcionalidad
a otros servicios a través de la red, si tu objetivo es crear un servicio RESTful y quieres utilizar Django, la opción inevitable es usar **Django REST Framework**.

Django REST Framework es un conjunto de clases y utilidades que siguen la filosofía de Django de modularidad y baja cohesión que te permitirán crear el API que necesitas con muy poco esfuerzo y alta personalización.

Django REST framework puede ser incluido a cualquier proyecto con un simple `pip install djangorestframework` y la correspondiente instalación de `'rest_framework'` en `INSTALLED_APPS`

## Request y Reponse

Si bien Django ya incluye dos clases muy potentes para manejar las peticiones y las respuestas (`HttpRequest` y `HttpResponse`), Django REST Framework (DRF) no
se queda atrás y extiende esta funcionalidad exponiendo sus propias clases `Request` y `Response` que facilitan todavía más el manejo de datos y la salida a múltiples formatos utilizando los famosísimos `Renderers` de *DRF*, pero vayamos directo a un ejemplo:

El siguiente código:
```python
# users.views

from django.contrib.auth.models import User
from django.http import HttpResponse, JsonResponse


def list_users(request):
    if request.method == 'GET':
        users = User.objects.all()
        data = []
        for user in users:
            data.append({
                'id': user.pk,
                'username': user.username,
                'email': user.email,
                'first_name': user.first_name,
                'last_name': user.last_name
            })
        return JsonResponse(data, safe=False)
    else:
        return HttpResponse('Method not allowed', status_code=405)
```

puede ser fácilmente traducido a:

```python
# users.views

from django.contrib.auth.models import User
from rest_framework.decorators import api_view
from rest_framework.response import Response


@api_view(['GET'])
def list_users(request):
    users = User.objects.all()
    data = []
    for user in users:
        data.append({
            'id': user.pk,
            'username': user.username,
            'email': user.email,
            'first_name': user.first_name,
            'last_name': user.last_name
        })
    return Response(data)
```

Donde `request` es una instancia de la clase **Request** de DRF.

## Serializers

Otro concepto muy fuerte de *DRF* son sus **`Serializers`**. Los serializers permiten convertir tipos de datos complejos como *Querysets* e *instancias de clases* a datos nativos de Python a través de una serie de validaciones sucesivias. Al igual que con los *Requests*, hagámos una prueba.

Suponiendo que tenemos la siguiente clase:

```python
class Airplane(object):

    def __init__(self, model, year, fuel_consumption):
        self.model = model
        self.year = year
        self.fuel_consumption = fuel_consumption
```

Y el siguiente serializer:

```python
from rest_framework import serializers

class AirplaneSerializer(serializers.Serializer):

    model = serializers.CharField()
    year = serializers.IntegerField(min_value=1970, max_value=2019)
    fuel_consumption = serializers.FloatField()
```

Entonces podríamos realizar el siguiente tipo de operaciones:
```python
boeing = Airplane('Boeign', 1980, 34.3)
boeign_serializer = AirplaneSerializer(boeing)
boeign_serializer.data
>>> {'model': 'Boeing', 'year': 1980, 'fuel_consumption': 34.3}
```

## Model serializers

Cuando ya tenemos la estructura de los datos definida, es decir, cuando ya tenemos un modelo que tiene los detalles necesarios de nuestra esquema, no necesitamos crear un serializer que repita esos mismos detalles dentro de su especificación ya que *DRF* provee una clase especial que se llama **`ModelSerializer`** y es capaz de leer la definición del modelo y utilizarla dentro de sus validaciones. Por ejemplo:

Dado el modelo de **Repositorio**:
```python
# repositories.models

from django.db import models


class Repository(models.Model):

    name = models.CharField(max_length=50, unique=True)
    owner = models.CharField(max_length=50, help_text="Owner's username")
    url = models.URLField()
    followers = models.PositiveIntegerField(default=0)
```

Podemos definir un serializer de la siguiente manera:
```python
# repositories.serializers

from rest_framework import serializers
from repositories.models import Repository


class RespositoryModelSerializer(serializers.ModelSerializer):

    class Meta:
        model = Repository
        fields = ('id', 'name', 'owner', 'url', 'followers')
        read_only_fields = ('id',)
```

Y finalmente tener una sola vista que pueda manejar la creación y listado de una manera muy clara:

```python
# repositories.views

from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response

from repositories.serializers import RespositoryModelSerializer
from repositories.models import Repository


@api_view(['GET', 'POST'])
def list_create_users(request):
    if request.method == 'POST':
        serializer = RespositoryModelSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    else:  # HTTP method is GET
        queryset = Repository.objects.all()
        serializer = RespositoryModelSerializer(queryset, many=True)
        return Response(serializer.data)

```

Lo cual, junto con la URL correcta podría darnos las siguientes funcionalidades:

* Creación de repositorios a través del método POST a la URL `/repositories/`
* Listado de repositorios a través del método GET a la URL `/repositories/`

Resultado:
```http
GET /repositories/ HTTP/1.1
Accept: */*
...


HTTP/1.1 200 OK
Allow: GET, OPTIONS
Content-Type: application/json
...

[
    {
        "id": 1,
        "name": "cookiecutter-django",
        "owner": "pydanny"
        "url": "http://github.com/pydanny/cookiecutter-django",
        "followers": 5922
    },
    {
        "id": 2,
        "name": "pyjwt"
        "owner": "jpadilla"
        "url": "https://github.com/jpadilla/pyjwt",
        "followers": 923
    }
    ...
]
```

Y

```http
POST /repositories/ HTTP/1.1
Accept: application/json, */*
Content-Type: application/json
...

{
    "name": "cride-platzi",
    "owner": "pablotrinidad",
    "url": "http://github.com/pablotrinidad/cride-platzi",
    "followers": 45
}

HTTP/1.1 200 Created
Content-Type: application/json
...

{
    "id": 3,
    "name": "cride-platzi",
    "owner": "pablotrinidad",
    "url": "http://github.com/pablotrinidad/cride-platzi",
    "followers": 45
}

```

## Class-based views

Pero... ¿quién realmente usa vistas basadas en funciones estos días? Habiendo tantas herrramientas dentro de las clases de Django, no usar herencia de clases en nuestro proyecto debería casi ser considerado una mala práctica 😅.

¿Recuerdas la clase **`View`** que tiene Django que nos permite tener vistas basadas en clases? Bueno, DRF tiene la suya y de hecho hereda de **`View`**, se llama **`APIView`**.

El código anterior lo podemos traducir a los siguiente:

```python
# repositories.views

from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView

from repositories.serializers import RespositoryModelSerializer
from repositories.models import Repository


class ListCreateUsersAPIView(APIView):

    def post(self, request):
        """Handle HTTP POST method."""
        serializer = RespositoryModelSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)

    def get(self, request):
        """Handle HTTP GET method."""
        queryset = Repository.objects.all()
        serializer = RespositoryModelSerializer(queryset, many=True)
        return Response(serializer.data)
```

## ¿Mixins?

¿Aún no te convence? Bueno, así como Django tiene sus propios mixins que nos permiten tener vistas para realizar tareas genéricas, DRF tienes las suyas.
El código anterior todavía puede ser reducido a lo siguiente:

```python

# repositories.views

from rest_framework.generics import ListCreateAPIView

from repositories.serializers import RespositoryModelSerializer
from repositories.models import Repository


class ListCreateUsersAPIView(ListCreateAPIView):

    queryset = Repository.objects.all()
    serializer_class = RespositoryModelSerializer
```