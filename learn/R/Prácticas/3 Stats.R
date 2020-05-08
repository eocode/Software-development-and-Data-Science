# Cruzar variables
pairs(mtcars[,2:6])
require("dplyr")

# Subconjunto
newdata = subset(mtcars, select=c(2,7:8,11,12))
pairs(newdata)


pairs(mtcars[,-c(1,3,4,5,6,9,10)])

Eficientes = filter(mtcars, mpg >= 30)
Eficientes
pairs(Eficientes[,2:6])

require("stringr")

merc = mtcars %>%
  filter(str_detect(model,"Merc"))
merc
pairs(merc[,2:6])

# Correlación
cor(mtcars[,2:6])
cor(newdata)
cor(merc[,2:6])

# Proyecto
pairs(data[,2:6])
pairs(data[,5:10])

newdata = subset(data, select = c(5,6,10,11,12,13))
newdata
pairs(newdata)

cor(data[,2:6])
cor(data[,2:6], use="complete.obs")
cor(data[,5:10], use="complete.obs")
cor(newdata, use="complete.obs")

# Promedios
summary(mtcars)
#Promedio
prom = mean(mtcars$mpg)
prom
# Desviación
desv = sd(mtcars$mpg)
desv
coef = desv/prom*100
coef

# Promedios
summary(data)
#Promedio
prom = mean(data$Internet.penetration...population)
prom
# Desviación
desv = sd(data$Internet.penetration...population)
desv
# Coeficiente
coef = desv/prom*100
coef
# Remover NAs
prom = mean(data$Creat.Ind...GDP, na.rm = TRUE)
prom
# Desviación
desv = sd(data$Creat.Ind...GDP, na.rm = TRUE)
desv
# Coeficiente
coef = desv/prom*100
coef

summary(data)

require("dplyr")
TopCountries = filter(data, Unemployment < 5)
TopCountries
