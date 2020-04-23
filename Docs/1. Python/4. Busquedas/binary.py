import random

def binary_search(lista, comienzo, final, objetivo):
    if comienzo > final:
        return False
        0
    # Division de enteros
    medio = (comienzo + final) // 2

    if(lista[medio] == objetivo):
        return True
    elif lista[medio] < objetivo:
        return binary_search(lista, medio + 1, final, objetivo)
    else:
        return binary_search(lista, comienzo, medio - 1, objetivo)

if __name__ == '__main__':
    tamano_de_lista = int(input('De que tamano es la lista?'))
    objetivo = int(input('Qué número quieres encontrar?'))

    lista = sorted([random.randint(0,100) for i in range(tamano_de_lista)])

    encontrado = binary_search(lista, 0, len(lista), objetivo)

    print(lista)
    print(f'El elemento {objetivo} {"esta" if encontrado else "no esta"} en la lista')