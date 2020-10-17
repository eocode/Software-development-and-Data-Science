
# VIM / NeoVIM <!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Instalación](#instalación)
- [Conociendo VIM](#conociendo-vim)
  - [Moverse entre el texto](#moverse-entre-el-texto)
  - [Insertar texto](#insertar-texto)
  - [Eliminar texto](#eliminar-texto)
  - [Guardar cambios](#guardar-cambios)
  - [Mover entre archivos](#mover-entre-archivos)
- [Modificación de texto](#modificación-de-texto)
  - [Eliminar, deshacer y rehacer](#eliminar-deshacer-y-rehacer)
  - [Operadores con movimientos para borrar y copiar](#operadores-con-movimientos-para-borrar-y-copiar)

# Instalación

Instala está herramienta que es muy similar

https://neovim.io

# Conociendo VIM

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
* ``SHIFT d`` o ``d + SHIFT $`` - Borra todo lo que este hacia delante

## Operadores con movimientos para borrar y copiar

Eliminar (d) se puede combinar con las teclas h,j,k,k,l,w,e y b vistas anteriormente


