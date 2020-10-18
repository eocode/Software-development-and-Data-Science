
# VIM / NeoVIM <!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Instalación](#instalación)
- [Cheat Sheet](#cheat-sheet)
- [Conociendo VIM](#conociendo-vim)
  - [Modos](#modos)
  - [Moverse entre el texto](#moverse-entre-el-texto)
  - [Insertar texto](#insertar-texto)
  - [Eliminar texto](#eliminar-texto)
  - [Guardar cambios](#guardar-cambios)
  - [Mover entre archivos](#mover-entre-archivos)
- [Modificación de texto](#modificación-de-texto)
  - [Eliminar, deshacer y rehacer](#eliminar-deshacer-y-rehacer)
  - [Operadores con movimientos para cortar y copiar](#operadores-con-movimientos-para-cortar-y-copiar)
  - [Reemplazar y cambiar](#reemplazar-y-cambiar)
  - [Saltos en el cursos](#saltos-en-el-cursos)
  - [Búscar](#búscar)
  - [Saltos](#saltos)
  - [Reemplazar en una línea](#reemplazar-en-una-línea)
  - [Abrir nuevas líneas](#abrir-nuevas-líneas)
  - [Reemplazar texto contiguo](#reemplazar-texto-contiguo)
  - [Copiar](#copiar)
- [Manejador de Plugins](#manejador-de-plugins)
- [Python config](#python-config)

# Instalación

Instala está herramienta que es muy similar

https://neovim.io

# Cheat Sheet

https://vim.rtorr.com

# Conociendo VIM

## Modos

* GENERAL
* i - INSERT
* v - VISUAL

## Moverse entre el texto

* ``:q!`` - Salir sin guardar
* ``hjkl`` - Moverse en el editor
* ``w`` - Moverse al inicio de las palabras hacia delante
* ``e`` - Moverse al final de las palabras
* ``b`` - Retroceder al inicio de las palabras

## Insertar texto

* ``i`` - Modo de insersión de texto al inicio
* ``a`` - Modo de insersión de texto al final
* ``SHIFT + a/i`` - Pone el cursor al final o al inicio de la linea

## Eliminar texto
* ``x`` - Elimina texto

## Guardar cambios
* ``w`` - Guardar archivo
* ``wq`` - Guardar y salir

## Mover entre archivos
* ``gd`` - Va a la definición de una importación o variable
* ``gf`` - Va a la definición del archivo y lo abre (primero hay que guardar)

Cada movimiento se guarda en buffer

* ``CTRL + o`` - Regresa a la posición anterior

# Modificación de texto

## Eliminar, deshacer y rehacer

* ``dw`` - Borra caracteres en el modo normal 
* ``u`` - Undo deshacer
* ``r`` - Redo rehacer
* ``SHIFT + d`` o ``d + SHIFT + $`` - Borra todo lo que este hacia delante

## Operadores con movimientos para cortar y copiar

Cortar (d) se puede combinar con las teclas h,j,k,k,l,w,e y b vistas anteriormente

* ``dd`` - Cortar una línea
* ``p`` - Pega en la siguiente linea del cursor
* ``SHIFT + P`` - Pega en la línea anterior al cursor

## Reemplazar y cambiar

* ``r`` - Reemplaza un caracter
* ``cw`` - Reemplaza hacia delante
* ``ciw`` - Reemplaza palabra en cualquier posición

## Saltos en el cursos

* ``gg`` - Mueve al principio del archivo
* ``G`` - Mueve al final del archivo
* ``#G`` - Salta a una línea específica

## Búscar
* ``/{search}`` - Búsca todas las coincidencias a partir del cursor hacia delante `presiona enter y n para moverte entre las coincidencias`
* ``?{search}`` - Búsca todas las coincidencias a partir del cursor hacia atras `presiona enter y n para moverte entre las coincidencias`

## Saltos
* ``SHIFT + %`` - Moverse entre parentesis, corchetes y llaves

## Reemplazar en una línea

* ``:s/the/de`` - Reemplaza la primera coincidencia
* ``:s/the/de/g`` - Reemplaza todo desde la línea actual
* ``:%s/numeros/delunoalcinco/gc`` - Reemplaza uno por uno y pregunta si lo quieres reemplazar

## Abrir nuevas líneas
* ``o`` - Abre nueva línea hacia abajo
* ``SHIFT + o``

## Reemplazar texto contiguo

* ``SHIFT + r`` - Reemplaza texto
  
## Copiar

Dentro del modo visual seleccionar el texto

* ``y`` - Copia el texto seleccionado

# Manejador de Plugins

https://github.com/junegunn/vim-plug

``:PlugInstall`` - Comando para instalar plugins

# Python config

https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/