# Vectores, del mismo tipo
c(10,11,15)
v = c(10,11,15)
v
v/2
n = v+v
n
c(60,n)
a = c("hola", "adios")
a
b=c(TRUE,FALSE)
b
a[1]
c<-c(1:10)
c
# ELimina elementos
c[-2]
# Listas
milista = list(num=42,saludo="Hola mundo")
milista
milista$num
milista[[1]]
milista[1]
class(milista)
typeof(milista)
# Ayuda teclear funcion + F1
str(v)
str(milista)
# Matrices
mat = matrix(c(1,3,3,2,2,2),nrow = 2,ncol = 3)
mat
rownames(mat) = c("primera","segunda")
mat
colnames(mat) = c("uno", "dos", "tres")
mat[1,2]
# Dataframes

# Lectura/Escritura de datos