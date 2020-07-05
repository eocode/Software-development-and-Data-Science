# Selenium <!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)
  - [Historia](#historia)
  - [Caracteristicas de SELENIUM IDE](#caracteristicas-de-selenium-ide)
    - [PROS](#pros)
    - [CONTRAS](#contras)
  - [Caracteristicas de SELENIUM RC](#caracteristicas-de-selenium-rc)
    - [PROS](#pros-1)
    - [CONTRAS](#contras-1)
  - [Caracteristicas de SELENIUM Web Driver](#caracteristicas-de-selenium-web-driver)
    - [PROS](#pros-2)
    - [CONTRAS](#contras-2)
  - [Caracteristicas de SELENIUM Grid](#caracteristicas-de-selenium-grid)
    - [PROS](#pros-3)
    - [CONTRAS](#contras-3)
- [Otras herramientas de testing y automatización](#otras-herramientas-de-testing-y-automatización)
- [Entorno de trabajo](#entorno-de-trabajo)

# Introducción

* Podremos comunicar selenium con el navegador
* Automatizar pruebas unitarias y funcionales
* Generar reportes de pruebas

## Historia

* Suite de herramientas para automatización de navegadores
  * Firefox
  * Chrome
  * IE
  * Safary
  * Opera
* Compatible con multiples lenguajes

No es:

* Herramienta de Testing
* Scraping

## Caracteristicas de SELENIUM IDE

### PROS 
* Excelente para iniciar
* No requere saber programar
* Exporta scripts para selenium RC y web driver
* Genera reportes

### CONTRAS
* Solo para Firefox y Chrome
* No soporta DDT

## Caracteristicas de SELENIUM RC

### PROS 
* Varias plataformas, navegadores y lenguajes
* Operaciones lógicas y condicionales
* DDT
* Api Madura

### CONTRAS
* Complejo de instalar
* Servidor corriendo
* Comandos redundantes en su API
* Navegación no tan realista

## Caracteristicas de SELENIUM Web Driver

### PROS 
* Soporta multiples lenguajes
* Fácil de instalar
* Comunicación directa con el navegador
* Interacción más realista

### CONTRAS
* No soporta nuevos navegadores
* No genera reportes o resultados de pruebas
* Requiere saber programar

## Caracteristicas de SELENIUM Grid

### PROS 
* Se utiliza junto a selenium RC
* Permite correr pruebas en paralelo
* Conveniente para ahorar tiempo

### CONTRAS
* No soporta nuevos navegadores
* No genera reportes o resultados de pruebas
* Requiere saber programar

<div align="center">
  <img src="img/celery.webp">
</div>

# Otras herramientas de testing y automatización

* Puppeteer
  * https://pptr.dev/
* Cypress.io
  * https://www.cypress.io/

# Entorno de trabajo
* Python 3.6 en adelante
* Selenium
* PyUnitReport

