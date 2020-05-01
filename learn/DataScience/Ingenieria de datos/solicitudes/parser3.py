import requests
import bs4
response = requests.get('https://eluniversal.com.mx/buscar/amlo')

soup = bs4.BeautifulSoup(response.text, 'html.parser')
links = soup.select('.HeadNota')
print(links)
# billionaries_selected = [billionary.find('h3') for billionary in billionaries]

# for billionary in billionaries_selected:
    # print(billionary.text)