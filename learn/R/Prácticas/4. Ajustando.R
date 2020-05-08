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

# Ajustar para mejorar visualizaciones
eficientes = mean(mtcars$mpg)
eficientes

# Transformando el dataset
mtcars = mtcars %>%
  mutate(Mas_eficientes=ifelse(mpg<eficientes,
                               "Bajo promedio",
                               "En ó sobre promedio"))

# Selección carros más veloces
Mas_veloces = mtcars[mtcars$qsec<16,]
Mas_veloces
mtcars = mtcars %>%
  mutate(Velocidad_Cuarto_milla=ifelse(qsec<16,
                                       "Menos 16 segundos",
                                       "Más de 16 segundos"))

mtcars = mtcars %>%
  mutate(Peso_kilos=(wt/2)*1000)

mtcars = mtcars %>%
  mutate(Peso=ifelse(Peso_kilos <= 1500,
                     "Livianos","Pesados"))

# Ajustes al proyecto
data = data %>%
  mutate(Crecimiento_GDP = ifelse(GDP.Growth.. >= 2.5,
                                  "25% o más",
                                  "Menos de 2.5%"))
data = data %>%
  mutate(Anaranjados=ifelse(Creat.Ind...GDP >= 2.5,
                            "Mas anaranjados",
                            "Menos anaranjados"))
# Ranking
data %>%
  arrange(desc(Creat.Ind...GDP))

TopNaranjas = data %>%
  filter(Country %in% c("Mexico","Panama","Argentina","Colombia","Brazil"))
TopNaranjas

TopNaranjas %>%
  arrange(desc(Creat.Ind...GDP))

# Otra forma de Rankear
top <-top_n(data,6,Creat.Ind...GDP)[,] 
top
top <- top %>% arrange(desc(top$Creat.Ind...GDP))
top

# Visualizaciones
mtcars %>%
  arrange(desc(Peso_kilos))
Top_pesados = top_n(mtcars,5,Peso_kilos)
Top_pesados
Mas_pesados = mtcars %>%
  filter(model %in% Top_pesados$model)
Mas_pesados


ggplot(Mas_pesados, aes(x=hp, y=mpg))+
  geom_point()+
  facet_wrap(~model)

ggplot(mtcars, aes(x=cyl, y=mpg, size=Peso))+
  geom_point()+
  facet_wrap(~am)

ggplot(mtcars, aes(x=cyl, y=mpg, size=Peso_kilos))+
  geom_point()+
  facet_wrap(~am)

ggplot(top, aes(x=Internet.penetration...population,
                y=Services...GDP,size=GDP.PC))+
  geom_point()+
  facet_wrap(~Country)

ggplot(TopNaranjas, aes(x=Education.invest...GDP,
                y=Creat.Ind...GDP,size=Unemployment))+
  geom_point()+
  facet_wrap(~Country)

install.packages("RColorBrewer")
require("RColorBrewer")
require("ggplot2")

myColors = brewer.pal(9,"Reds")
ggplot(TopNaranjas, aes(x=Internet.penetration...population,
                y=GDP.PC,fill=Creat.Ind...GDP))+
  geom_tile()+
  facet_wrap(~Country)+
  scale_fill_gradientn(colors=myColors)

install.packages("rmarkdown")
install.packages("knitr")
require("rmarkdown")
require("knitr")

cajas = c(1,2,3,4,5,6,7,8)
tiempo = c(10,9,8,5.8,6,3,1.8,1)
plot(tiempo~cajas)


plot(data$Internet.penetration...population~data$Strong_economy)
plot(data$Services...GDP~data$Education.invest...GDP)
plot(mtcars$mpg~mtcars$am)
plot(mtcars$hp~mtcars$qsec)

str(mtcars)

ggplot(data, aes(x=Creat.Ind...GDP))+
  geom_histogram(binwidth = 1)+
  labs(x="Caballos de fuerza", y="Cantidad de carros", title="Caballos de fuerza en carros seleccionados")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank())

max(data$GDP.PC)
pairs(data[,2:5])
