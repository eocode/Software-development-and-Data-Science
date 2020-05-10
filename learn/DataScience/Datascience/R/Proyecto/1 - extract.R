library(readr)
library(tidyverse)

base_url = "https://www.amazon.com.mx"
uri = "/s?k=celulares"
page = "&page=x"
start = 1
end = 5
  
# Genera enlaces dinámicos
pages = build_pagination_pages(base, uri, page, start, end)
pages
# Get urls
test = get_page_links(base_url, pages[1])
test

dataset <- dataset[!duplicated(dataset), ]
View(dataset)
url = test[7]

data = get_product(test[7])
data = t(data)
data = as.data.frame(data)
colnames(data) = c("url", "title", "details", "edition", "color", "seller", "price", "rating", "shipping", "reviews", "questions", "so", "ram", "weight", "dim", "battery", "model", "resolution", "interface", "form", "colort", "box")
dataset = rbind(dataset, data)
View(dataset)
View(data)

dataset = data

Sys.sleep(3.7)

dataset = dataset[-1,]


# DataSet
data = sapply(test[21:30],get_product)
dataset = data
dataset
data = sapply(test[1],get_product)

dataset = t(dataset)
dataset = as.data.frame(dataset)
colnames(dataset) = c("url", "title", "edition", "color", "seller", "price", "rating", "shipping", "reviews", "questions", "so", "ram", "weight", "dim", "battery", "model", "resolution", "interface", "form", "colort", "box")
View(dataset)

write.csv(dataset, file = "celulares.csv")
