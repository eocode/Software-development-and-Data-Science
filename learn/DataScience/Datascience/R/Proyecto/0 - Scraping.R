library(rvest)
library(stringr)
library(curl)

useragent = "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0"

build_pagination_pages = function(base,uri,page,start,end){
  page_url = paste0(paste0(base_url,uri),page)
  page_list = c(start:end)
  paginas = str_replace(page_url, "page=x", paste0("page=",page_list))
  paginas
}

get_page_links = function(base_url,url){
  selector = "div > div:nth-child(3) > h2 > a"
  website = read_html(curl(url, handle = curl::new_handle("useragent" = useragent)))
  nodo=html_nodes(website,selector)
  nodo_links = html_attr(nodo,"href")
  nodo_links = paste0(base_url, nodo_links)
  nodo_links
}

get_selector_text = function(url, selector){
  website = read_html(curl(url, handle = curl::new_handle("useragent" = useragent)))
  node = html_node(website, selector)
  node_text = html_text(node)
  node_text
}

get_selector_table = function(url, selector){
  website = read_html(curl(url, handle = curl::new_handle("useragent" = useragent)))
  node<-html_node(website, selector)
  
  columns = c(
    "SO", 
    "RAM",
    "Memory",
    "Peso", 
    "Dimensiones",
    "Pilas",
    "Modelo",
    "Resolución",
    "Interfaz",
    "Forma",
    "Color",
    "Caja"
    )
  
  # If node is not empty
  if(!is.na(node)){
    # Get table
    table = html_table(node)
    # Get transposed data
    val = t(table$X1)
    data = data.frame(t(table$X2))
    colnames(data)<-val
    # Create dataframe
    zero = matrix("-1", ncol=12, nrow=1)
    dfzero
    dfzero = as.data.frame(zero)
    colnames(dfzero)<-columns
    # Validate dataset info
    so = as.character(data$SO)
    if(length(so)==0) so = "-1"
    ram = as.character(data$RAM)
    if(length(ram)==0) ram = "-1"
    memory = as.character(data$`Capacidad de almacenamiento digital`)
    if(length(memory)==0) {
      memory = as.character(data$`Capacidad de almacenamiento de la memoria`)
      if(length(memory)==0) memory = "-1"
    }
    weight = as.character(data$Peso)
    if(length(weight)==0){
      weight = as.character(data$`Peso del producto`)
      if(length(weight) == 0) weight = "-1"
    }
    dim = as.character(data$`Dimensiones del producto`)
    if(length(dim)==0) {
      if(length(dim)==0) dim = "-1"
    }
    batery = as.character(data$`Pilas:`)
    if(length(batery)==0) {
      batery = as.character(data$`Composición de celdas de batería`)
      if(length(batery)==0) batery = "-1"
    }
    model = as.character(data$`Número de modelo del producto`)
    if(length(model)==0) {
      model = as.character(data$`Número de parte`)
      if(length(model)==0) model = "-1"
    }
    resolution = as.character(data$`Tamaño de la pantalla`)
    if(length(resolution)==0) {
      resolution = as.character(data$`Composición de celdas de batería`)
      if(length(resolution)==0) {
        resolution = as.character(data$`Resolución del escáner`)
        if(length(resolution)==0) resolution = "-1"
      }
    }
    interface = as.character(data$`Entrada de interfaz humana`)
    if(length(interface)==0) interface = "-1"
    form = as.character(data$`Factor de forma`)
    if(length(form)==0) form = "-1"
    color = as.character(data$Color)
    if(length(color)==0) color = "-1"
    box = as.character(data$`Qué contiene la caja`)
    if(length(box)==0) box = "-1"
    
    dfzero$SO = so
    dfzero$RAM = ram
    dfzero$Memory = memory
    dfzero$Peso = weight
    dfzero$Dimensiones = dim
    dfzero$Pilas = batery
    dfzero$Modelo = model
    dfzero$Resolución = resolution
    dfzero$Interfaz = interface
    dfzero$Forma = form
    dfzero$Color = color
    dfzero$Caja = box
    
    # Prepare Dataframe
    str(dfzero)
    result_table = dfzero
    colnames(result_table)<-columns
  }else{
    # Fill empty
    result_table = data.frame(colnames(columns))
    result_table = rbind(result_table, c("-1","-1", "-1","-1","-1","-1","-1","-1","-1","-1","-1","-1"))
    colnames(result_table) = columns
  }
  result_table
}

get_product = function(url){
  print(url)
  title = get_selector_text(url, "#productTitle")
  reviews = get_selector_text(url, "#acrCustomerReviewText")
  questions = get_selector_text(url, "#askATFLink > span")
  price = get_selector_text(url, "#price_inside_buybox")
  rating = get_selector_text(url, "#reviewsMedley > div > div.a-fixed-left-grid-col.a-col-left > div.a-section.a-spacing-none.a-spacing-top-mini.cr-widget-ACR > div.a-fixed-left-grid.AverageCustomerReviews.a-spacing-small > div > div.a-fixed-left-grid-col.aok-align-center.a-col-right > div > span > span")
  seller = get_selector_text(url, "#bylineInfo")
  color = get_selector_text(url, "#variation_color_name > div > span")
  shipping = get_selector_text(url, "#price-shipping-message > b")
  edition = get_selector_text(url, "#variation_edition > div > span")
  details = get_selector_text(url, "#feature-bullets")
  table = get_selector_table(url, "#prodDetails > div.wrapper.MXlocale > div.column.col1 > div > div.content.pdClearfix > div > div > table")
  product_details = c(
    url,
    title,
    details,
    edition,
    color,
    seller,
    price,
    rating,
    shipping,
    reviews,
    questions,
    table$SO,
    table$RAM,
    table$Peso,
    table$Dimensiones,
    table$Pilas,
    table$Modelo,
    table$Resolución,
    table$Interfaz,
    table$Forma,
    table$Color,
    table$Caja
  )  
  product_details
}

dataset = get_product(test[1])
