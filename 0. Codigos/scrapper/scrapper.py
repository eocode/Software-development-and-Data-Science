import requests
from bs4 import BeautifulSoup
import urllib

def run():
    for i in range(1,6):
        response = requests.get(f'https://xkcd.com/{i}')
        soup = BeautifulSoup(response.content, 'html.parser')
        image_container = soup.find(id='comic')

        image_url = image_container.find('img')['src']
        image_name = image_url.split('/')[-1]
        print(f'Descargando la imagen {image_name}')
        urllib.request.urlretrieve(f'https:{image_url}', image_name)

if __name__ == "__main__":
    run()