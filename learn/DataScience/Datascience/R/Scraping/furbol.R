library(rvest)
library(stringr)
library(readr)

url <- "https://ligamx.net"
indices <- c(1:18)

# Creamos los selectores de todos los equipos de la liga mexicana
selectores <- "#teamLogos > li:nth-child(1) > a"
selectores <- str_replace_all(selectores, "1", as.character(indices))

# Recorremos todos los selectores para obtener los linsk a la pagina de cada equipo
equipos_links <- list()

for (i in 1:18){
  pagina <- read_html(url)
  nodo <- html_node(pagina, selectores[i])
  equipos_links[[i]] <- html_attr(nodo, "href")
}

#Creamos los links completos a las paginas
equipos_links <- paste0(url,equipos_links)

#Dentro de la pagina de cada equipo entramos a sus jugadores
getJugadores <- function(url){
  selector <- "div.jugador > a "
  pagina <- read_html(url)
  nodos <- html_nodes(pagina,selector)
  hrefs <- html_attr(nodos, "href")
}

jugadores <- sapply(equipos_links,getJugadores)
jugadores <- as.vector(unlist(jugadores))
link_jugadores <- paste0(url,jugadores)

#Funcion para obtener los datos de cada jugador
getInformacionJugadores <- function(con){
  #Dentro de cada jugador obtenemos sus estadisticas
  con <- url(con,"rb")
  pagina <- read_html(con)
  
  #nombre
  nombre <- "#infoJugador > div > div.detalle.col-xs-9 > h1"
  nombre_nodo <- html_node(pagina,nombre)
  nombre_text <- html_text(nombre_nodo)
  
  #equipo
  equipo <- "#infoJugador > div > div.detalle.col-xs-9 > dl:nth-child(8) > dd"
  equipo_nodo <- html_node(pagina,equipo)
  equipo_text <- html_text(equipo_nodo)
  equipo_text <- str_replace_all(equipo_text," para Apertura 2018 - Clausura 2020","")
  
  #peso
  peso <- "#infoJugador > div > div.detalle.col-xs-9 > dl:nth-child(4) > dd:nth-child(6)"
  peso_nodo <- html_node(pagina,peso)
  peso_text <- html_text(peso_nodo)
  
  #altura
  altura <- "#infoJugador > div > div.detalle.col-xs-9 > dl:nth-child(4) > dd:nth-child(4)"
  altura_nodo <- html_node(pagina,altura)
  altura_text <- html_text(altura_nodo)
  
  #nacionalidad 
  nacionalidad <- "#infoJugador > div > div.detalle.col-xs-9 > dl:nth-child(3) > dd:nth-child(6)"
  nacionalidad_nodo <- html_node(pagina, nacionalidad)
  nacionalidad_text <- html_text(nacionalidad_nodo)
  
  #juegos jugados
  jj <- "#info > div > div > div.col-lg-12 > div > p:nth-child(1) > a > span"
  jj_nodo <- html_node(pagina,jj)
  jj_text <- html_text(jj_nodo)
  
  #juegos titular 
  jt <- "#info > div > div > div.col-lg-12 > div > p:nth-child(2) > a > span"
  jt_nodo <- html_node(pagina,jt)
  jt_text <- html_text(jt_nodo)
  
  #goles
  g <- "#info > div > div > div.col-lg-12 > div > p:nth-child(3) > span"
  g_nodo <- html_node(pagina,g)
  g_text <- html_text(g_nodo)
  
  #Autogoles
  ag <- "#info > div > div > div.col-lg-12 > div > p:nth-child(4) > span"
  ag_nodo <- html_node(pagina,ag)
  ag_text <- html_text(ag_nodo)
  
  #Minutos jugados
  mj <- "#info > div > div > div.col-lg-12 > div > p:nth-child(5) > a > span"
  mj_nodo <- html_node(pagina,mj)
  mj_text <- html_text(mj_nodo)
  
  #TarjetasAmarillas
  ta <- "#info > div > div > div.col-lg-12 > div > p.amarillo > a > span"
  ta_nodo <- html_node(pagina,ta)
  ta_text <- html_text(ta_nodo)
  
  #Tarjetas rojas
  tr <- "#info > div > div > div.col-lg-12 > div > p.rojo > span"
  tr_nodo <- html_node(pagina,tr)
  tr_text <- html_text(tr_nodo)
  
  resultado <- c(nombre_text,equipo_text,peso_text,as.numeric(altura_text),nacionalidad_text,as.integer(jj_text),as.integer(jt_text),as.numeric(g_text),as.numeric(ag_text),as.integer(mj_text),ta_text,tr_text)
}

#Obteniendo datos
res <- sapply(link_jugadores, getInformacionJugadores)
res

#Creando el Datafram
res <- t(res)
View(res)


jugadores <- as.data.frame(res)
colnames(res) <- c("Nombre","Equipo & Posicion","Peso","Altura","Nacionalidad","Juegos Jugados","Juegos Titular","Goles","Autogoles","Minutos Jugados","Tarjetas Amarillas","Tarjetas Rojas")
rownames(res) <- c(1:618)

#creando el CSV

write.csv(res, file = "Jugadores_mexico.csv")
