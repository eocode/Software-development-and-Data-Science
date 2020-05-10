install.packages("rvest")
library(rvest)
url = "https://www.imdb.com/title/tt1051906/?ref_=hm_fanfav_tt_1_pd_fp1"

pagina_web = read_html(url)
class(pagina_web)

selector = "#title-overview-widget > div.vital > div.title_block > div > div.ratings_wrapper > div.imdbRating > div.ratingValue > strong > span"
nodo = html_node(pagina_web, selector)
nodo_texto = html_text(nodo)
nodo_texto

selector_tabla = "#titleCast > table"
nodo_tabla = html_node(pagina_web, selector_tabla)
nodo_tabla_texto = html_table(nodo_tabla)
nodo_tabla_texto