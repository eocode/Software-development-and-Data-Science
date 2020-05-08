# Title     : TODO
# Objective : TODO
# Created by: elias
# Created on: 05/05/2020

str(mtcars)
?mtcars
class(mtcars$vs)
mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)
str(mtcars)

str(data)
?data
# Resumen del dataset
summary(data)
summary(mtcars)

# Transformar kilos en lugar de libras
wt <- (mtcars$wt*1000)/2
wt
# Transformación al dataset
mtcars.new <- transform(mtcars,wt=wt*1000/2)
mtcars.new
summary(mtcars.new)

# Vectores
t_estudio <- c(25,5,10,15,10,10)
t_lecturas <- c(30,10,5,10,15,25)
t_aprendizaje <- t_estudio + t_lecturas
t_aprendizaje

dias_aprendizaje = c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
dias_aprendizaje

dias_mas_20min = c(TRUE, FALSE, FALSE,TRUE,TRUE)
dias_mas_20min

total_t_estudio = sum(t_estudio)
total_t_estudio
total_t_lecturas = sum(t_lecturas)
total_t_lecturas
total_t_adicional = total_t_estudio + total_t_lecturas
total_t_adicional

# Matrices
t_estudio <- c(25,5,10,15,10,10)
t_lecturas <- c(30,10,5,10,15,25)
t_estudio
t_lecturas
c(t_estudio, t_lecturas)
tiempo_matriz <- matrix(c(t_estudio, t_lecturas), ncol =length(t_estudio), nrow = 3, byrow=TRUE)
tiempo_matriz

dias = c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado")
tiempo = c("Tiempo estudio", "Tiempo lecturas", "Tiempo podcast")

colnames(tiempo_matriz) = dias
rownames(tiempo_matriz) = tiempo

tiempo_matriz
colSums(tiempo_matriz)
tiempo_matriz[1,2]
# Modificando la matriz
final_matrix = rbind(tiempo_matriz,c(10,15,30,5,0))
final_matrix
colSums(final_matrix)
final_matrix[1.5]

# Operadores
mtcars[mtcars$cyl<6,]
data[data$GDP.PC>=15000,]
data[data$Creat.Ind...GDP<=2,]
newOrange = subset(data, Internet.penetration...population > 80 & Education.invest...GDP >=4.5, select=Creat.Ind...GDP)
newOrange

install.packages('plyr')
plyr::rename(data,c("Creat.Ind...GDP" = "AporteEcNja"))
require('plyr')
data2 = rename(data,c("Creat.Ind...GDP" = "AporteEcNja"))
data2
data

# Fatores
nivel_curso = c("Basio","Intermedio", "Avanzado")
nivel_curso
# Principio y final del dataset
head(mtcars)
head(data)
tail(mtcars)
tail(data)
# Visualizar estructura del dataset
install.packages("dplyr")
dplyr::glimpse(data)
# Listas
my_vector = 1:8
my_vector
my_matriz = matrix(1:9, ncol=3)
my_matriz
my_df = mtcars[1:4,]
my_df
my_list = list(my_vector,my_matriz,my_df)
my_list

