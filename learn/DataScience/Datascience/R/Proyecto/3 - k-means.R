# Respaldamos la data
data = dataset_limpio
View(data)

# Eliminamos columnas de tipo Factor
data = data[,-5]
# Escalamos los datos
data = scale(data)
# Aplicamos Kmeans
cluster = kmeans(x = data, centers = 3, nstart = 5, iter.max = 30)
# Procesamiento
cluster$iter
cluster$size
cluster$centers
cluster$withinss

# Suma de las distancias a los centros
wss = (nrow(data)-1)*sum(apply(data,2,var))

# Obtener número de clústers a montar
for(i in 2:20) wss[i] = sum(kmeans(data,centers = i)$withinss)
wss
plot(1:20,wss,type='b', xlab="Numento de cluesters", ylab="Withinss groups")

# Pintar los clusters
cluster = kmeans(data, centers=8, nstart = 8, iter.max = 30)
library(fmsb)
par(mfrow=c(2,4))

# Clúster 1
dat = as.data.frame(t(cluster$center[1,]))
dat
dat = rbind(rep(5,10), rep(-1.5,10), dat)
dat
radarchart(dat)

# Clúster 2
dat = as.data.frame(t(cluster$center[2,]))
dat
dat = rbind(rep(5,10), rep(-1.5,10), dat)
dat
radarchart(dat)

# Clúster 3
dat = as.data.frame(t(cluster$center[3,]))
dat
dat = rbind(rep(5,10), rep(-1.5,10), dat)
dat
radarchart(dat)

# Clúster 4
dat = as.data.frame(t(cluster$center[4,]))
dat
dat = rbind(rep(5,10), rep(-1.5,10), dat)
dat
radarchart(dat)

# Clúster 5
dat = as.data.frame(t(cluster$center[5,]))
dat
dat = rbind(rep(5,10), rep(-1.5,10), dat)
dat
radarchart(dat)

# Clúster 6
dat = as.data.frame(t(cluster$center[6,]))
dat
dat = rbind(rep(5,10), rep(-1.5,10), dat)
dat
radarchart(dat)

# Clúster 7
dat = as.data.frame(t(cluster$center[7,]))
dat
dat = rbind(rep(5,10), rep(-1.5,10), dat)
dat
radarchart(dat)

# Clúster 8
dat = as.data.frame(t(cluster$center[8,]))
dat
dat = rbind(rep(5,10), rep(-1.5,10), dat)
dat
radarchart(dat)

