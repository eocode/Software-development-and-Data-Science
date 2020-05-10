library(rvest)
library(stringr)
base_url = "https://www.amazon.es"
uri = "/s?k=aspiradora"
page = "&page=2"
start = 1
end = 5

dame_links = function(base_url,url){
  selector = "div > div:nth-child(3) > h2 > a"
  pagina = read_html(url)
  nodo=html_nodes(pagina,selector)
  nodo_text = html_text(nodo)
  nodo_text
  nodo_links = html_attr(nodo,"href")
  nodo_links = paste0(base_url, nodo_links)
  nodo_links
}

build_pages = function(base,uri,page,start,end){
  page_url = paste0(paste0(base_url,uri),page)
  lista_paginas = c(start:end)
  paginas = str_replace(page_url, "page=2", paste0("page=",lista_paginas))
  paginas
}

# Genera enlaces dinámicos
pages = build_pages(base, uri, page, start, end)
pages
pages[1]
# Obtiene enlaces de las urls
test = dame_links(base_url, pages[1])
test

getArticulo = function(url){
  pagina_web<-read_html(url)
  nombre<-"#title"
  nombre_nodo<-html_node(pagina_web, nombre)
  nombre_texto<-html_text(nombre_nodo)
  nombre_texto
  
  opiniones<-"#acrCustomerReviewText"
  opiniones_nodo<-html_node(pagina_web, opiniones)
  opiniones_texto<-html_text(opiniones_nodo)
  opiniones_texto
  
  precio<-"#priceblock_ourprice"
  precio_nodo<-html_node(pagina_web, precio)
  precio_texto<-html_text(precio_nodo)
  precio_texto
  
  tabla<-"#prodDetails > div.wrapper.ESlocale > div.column.col1 > div > div.content.pdClearfix > div > div > table"
  tabla_nodo<-html_node(pagina_web, tabla)
  if(!is.na(tabla_nodo)){ #SI el nodo no esta vacio!!!
    tabla_tab<-html_table(tabla_nodo)
    tabla_tab
    val<-tabla_tab$X2
    res_tabla<-data.frame(t(val))
    tabla_name<-tabla_tab$X1
    colnames(res_tabla)<-tabla_name
  }
  col<-c("Peso del producto", "Dimensiones del producto", "Volumen", "Potencia")
  if( is.na(tabla_nodo)){ #Si tabla nodo esta vacia
    #Rellenar con campos vacio
    mitab<-data.frame(colnames(col))
    mitab<-rbind(mitab, c("-1", "-1", "-1","-1"))
    colnames(mitab)<-col
  }else{
    #Evaluar cada uno de los campos
    zero<-matrix("-1", ncol=4, nrow=1)
    dfzero<-as.data.frame(zero)
    colnames(dfzero)<-col
    dfzero
    peso<-as.character(res_tabla$`Peso del producto`)
    if(length(peso)==0) peso <- "-1"
    volumen<-as.character(res_tabla$Volumen)
    if(length(volumen)==0) volumen <- "-1"
    dime<-as.character(res_tabla$`Dimensiones del producto`)
    if(length(dime)==0) dime <- "-1"
    potencia<-as.character(res_tabla$Potencia)
    if(length(potencia)==0) potencia <- "-1"
    dfzero$`Peso del producto`<-peso
    dfzero$`Dimensiones del producto`<-dime
    dfzero$Volumen<-volumen
    dfzero$Potencia<-potencia
    str(dfzero)
    mitab<-dfzero
    colnames(mitab)<-col
  }
  articulo<-c(url, nombre_texto, as.character(mitab$`Peso del producto`[1]), as.character(mitab$`Dimensiones del producto`[1]), as.character(mitab$Volumen[1]),as.character(mitab$Potencia[1]), opiniones_texto, precio_texto)  
  articulo
}

res = getArticulo(test[1])
res = t(res)
res
View(res)
resultado_datos = sapply(test,getArticulo)
res = t(resultado_datos)
transformDataFrame(res)
data = as.data.frame(res)
colnames(data)<-c("url","nombre", "peso" , "dimensiones", "volumen","potencia", "opiniones", "precio")  
View(data)


resultado_aspiradoras = c(url,texto_titulo, texto_price, texto_opiniones, as.character(res_tabla$`Peso del artículo`), as.character(res_tabla$`Baterías requeridas`), as.character(res_tabla$`Dimensiones del producto`))
resultado_aspiradoras
