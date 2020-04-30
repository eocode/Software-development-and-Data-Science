import requests
import bs4
response = requests.get('https://cincodias.elpais.com/cincodias/2019/12/30/fortunas/1577735084_252781.html')

soup = bs4.BeautifulSoup(response.text, 'html.parser')
billionaries = soup.select('.fototextos')
billionaries_selected = [billionary.find('h3') for billionary in billionaries]

for billionary in billionaries_selected:
    print(billionary.text)