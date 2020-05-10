# GGplot2
install.packages("ggplot2")
install.packages("fmsb")
library(ggplot2)
library(fmsb)
head(diamonds)

ggplot(diamonds, aes(x=carat, y=price))+
  geom_point()
dim(diamonds)
data = diamonds[c(1:1), -(1:4)]
data
# Valores máximos y mínimos
data = rbind(rep(400,5), rep(0,5), data)
data
# Radar
radarchart(data)
# Gráficos