import requests
from bs4 import BeautifulSoup

URL = 'https://archive.org/stream/lasantabibliaant00rein_0/lasantabibliaant00rein_0_djvu.txt'


def run():
    response = requests.get(URL)
    soup = BeautifulSoup(response.text, 'html.parser')
    text = soup.find('pre').get_text()

    with open('bible.txt', 'w', encoding='utf-8') as f:
        f.write(text)

    print('Bible ready!')


if __name__ == '__main__':
    run()