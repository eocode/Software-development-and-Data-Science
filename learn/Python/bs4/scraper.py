import requests
from bs4 import BeautifulSoup

URL = 'https://www.elespectador.com/noticias/'

def run():
    try:
        response = requests.get(URL)
        # print(response.status_code)
        # print(response.headers)
        # print(response.encoding)
        # print(response.request.method)
        # print(response.request.headers)
        
        if response.status_code == 200:
            soup = BeautifulSoup(response.text, 'html.parser')
            # print(type(soup))

            titles_div = soup.find_all('div', attrs={
                'class': 'node-title'
            })
            titles = [title_div.find('a').get_text() for title_div in titles_div]

            with open('result.txt', 'w', encoding='utf-8') as f:
                for title in titles:
                    if 'coronavirus' in title:
                        f.write(title)
                        f.write('\n')

        else:
            print('Status code: ', response.status_code)
    except ValueError as ve:
        print(f'Error {ve}')

if __name__ == '__main__':
    run()

