def run():
    counter = 0
    with open('7. Archivos/aleph.txt','r',encoding='utf8') as f:
        for line in f:
            counter += line.count('Beatriz')

    print(f'Beatriz se encuentra {counter} veces')

if __name__ == "__main__":
    run()