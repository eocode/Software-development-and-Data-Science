import re


def run():
    book = ''
    with open('bible.txt', 'r', encoding='utf-8') as f:
        book = f.read()

    pattern = re.compile(r'Je\w+')
    names_with_je = set(re.findall(pattern, book))
    for name in names_with_je:
        print(name)


if __name__ == "__main__":
    run()
