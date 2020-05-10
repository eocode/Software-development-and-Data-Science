dataset <- read.csv("C:\\Users\\elias\\Desktop\\DataScience\\celulares.csv", header = TRUE)

dataset <- data.frame(dataset)
View(dataset)

#Peso
dataset$weight = as.character(dataset$weight)
dataset$weight = gsub(" g", "", dataset$weight)
dataset$weight = gsub("-1",NA,dataset$weight)
dataset$weight = as.numeric(dataset$weight)
dataset$weight
class(dataset$weight)
promedio = mean(dataset$weight, na.rm = TRUE)
dataset$weight[is.na(dataset$weight)] = promedio
dataset$weight
hist(dataset$weight)

#Rating
dataset$rating = as.character(dataset$rating)
dataset$rating = gsub(" de 5", "", dataset$rating)
dataset$rating = gsub("-1",NA,dataset$rating)
dataset$rating = as.numeric(dataset$rating)
dataset$rating
class(dataset$rating)
promedio = mean(dataset$rating, na.rm = TRUE)
dataset$rating[is.na(dataset$rating)] = promedio
dataset$rating
hist(dataset$rating)

# Title
dataset$title
dataset$title = as.character(dataset$title)
dataset$title = trimws(x= dataset$title)
dataset$title = gsub("\n", "", dataset$title)
dataset$title = gsub("\t", "", dataset$title)

# Details
dataset$details
dataset$details = as.character(dataset$details)
dataset$details = trimws(x= dataset$details)
dataset$details = gsub("\n", "", dataset$details)
dataset$details = gsub("\t", "", dataset$details)

# Edition
dataset$edition
dataset$edition = as.character(dataset$edition)
dataset$edition = trimws(x= dataset$edition)
dataset$edition = gsub("\n", "", dataset$edition)
dataset$edition = gsub("\t", "", dataset$edition)

# Color
dataset$color
dataset$color = as.character(dataset$color)
dataset$color = trimws(x= dataset$color)
dataset$color = gsub("\n", "", dataset$color)
dataset$color = gsub("\t", "", dataset$color)

# Seller
dataset$seller
dataset$seller = as.character(dataset$seller)
dataset$seller = trimws(x= dataset$seller)
dataset$seller = gsub("\n", "", dataset$seller)
dataset$seller = gsub("\t", "", dataset$seller)

# Price
dataset$price
dataset$price = as.character(dataset$price)
dataset$price = trimws(x= dataset$price)
dataset$price = gsub("\n", "", dataset$price)
dataset$price = gsub("\t", "", dataset$price)
dataset$price = gsub(",", "", dataset$price)
dataset$price = gsub("[][!#$%()*,:;<=>@^_`|~{}]", "", dataset$price)
dataset$price = as.numeric(dataset$price)
class(dataset$weight)
promedio = mean(dataset$price, na.rm = TRUE)
dataset$price[is.na(dataset$price)] = promedio
dataset$price
hist(dataset$price)

# Shipping
dataset$shipping
dataset$shipping = as.character(dataset$shipping)
dataset$shipping = trimws(x= dataset$shipping)
dataset$shipping = gsub("\n", "", dataset$shipping)
dataset$shipping = gsub("\t", "", dataset$shipping)

# Reviews
dataset$reviews
dataset$reviews = as.character(dataset$reviews)
dataset$reviews = trimws(x= dataset$reviews)
dataset$reviews = gsub(" calificaciones", "", dataset$reviews)
dataset$reviews = gsub(",", "", dataset$reviews)
dataset$reviews = as.numeric(dataset$reviews)
promedio = mean(dataset$reviews, na.rm = TRUE)
dataset$reviews[is.na(dataset$reviews)] = promedio
hist(dataset$reviews)

# Questions
dataset$questions
dataset$questions = as.character(dataset$questions)
dataset$questions = trimws(x= dataset$questions)
dataset$questions = gsub(" preguntas respondidas", "", dataset$questions)
dataset$questions = gsub(",", "", dataset$questions)
dataset$questions = as.numeric(dataset$questions)
promedio = mean(dataset$questions, na.rm = TRUE)
dataset$questions[is.na(dataset$questions)] = promedio
hist(dataset$questions)

# Colort
dataset$colort
dataset$colort = as.character(dataset$colort)
dataset$colort = trimws(x= dataset$colort)
dataset$colort = gsub("\n", "", dataset$colort)
dataset$colort = gsub("\t", "", dataset$colort)

# Dimensiones
library(stringr)
dataset$dim = as.character(dataset$dim)
dataset$dim = gsub("cm","",dataset$dim)
dataset$dim = trimws(x= dataset$dim)
dimen = str_split_fixed(dataset$dim,"x",3)
colnames(dimen) = c("Alto","Ancho","Profundidad")
dimen = as.data.frame(dimen)
dataset_limpio = cbind(dataset,dimen)
View(dataset_limpio)
dataset_limpio = dataset_limpio[,-1]
dataset_limpio = dataset_limpio[,-15]

colnames(dataset_limpio[,-15])


write.csv(dataset_limpio, "celulares_limpio.csv")
