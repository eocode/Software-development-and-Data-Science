import bs4
import requests

response = requests.get('https://www.lacomer.com.mx/lacomer/doHome.action?dep=Frutas-&key=Frutas-y-Verduras&padreId=14&pasId=13&opcion=listaproductos&path=,14&pathPadre=&mov=1&subOpc=0&jsp=PasilloPadre.jsp&succId=287&agruId=13&succFmt=100')

soup = bs4.BeautifulSoup(response.text, 'html.parser')

print(soup.title)
print(soup.select('meta[name=description]')[0]['content'])
departaments = soup.select('.li_producto')

fruits = [fruit.find('strong') for fruit in departaments]

for fruit in fruits:
    print(fruit.text)

