install.packages("devtools")
require("plotly")
require("ggplot2")
require("devtools")

economy = mean(data$GDP.PC)

data = data %>%
  mutate(Strong_economy = ifelse(GDP.PC < economy, 
                                 "Por debajo del promedio pib per capita",
                                 "Sobre arriba promedio pib per capita"))


ggplot(data, aes(Education.invest...GDP,Unemployment))+
  geom_point(aes(color=factor(Strong_economy), size=X..pop.below.poverty.line))+
  labs(x="Inversión en educación % PIB",
       y="Desempleo",
       title="Inversión en Educación y desempleo según economía y
       población por debajo de la línea de pobreza")

graph = ggplot(data, aes(Internet.penetration...population,
                         Creat.Ind...GDP,label=row.names(data)))+
geom_point()+
labs(x="Penetración internet",
     y="Aporte economía naranja",
     title="Penetracion Internet y aporte economía")
graph
p = plotly::ggplotly(graph)
p
