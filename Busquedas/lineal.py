import random

def busqueda_lineal(lista, objetivo):
    match = False

    for elemento in lista: #O(n)
        if elemento == objetivo:
            match = True
            break
    return match

if __name__ == "__main__":
    tomano_de_lista = int(input('De que tamaño sera la lista?'))
    objetivo = int(input('Que numero quieres encontrar?'))

    lista = [random.randint(0,100) for i in range(tomano_de_lista)]
    print(lista)
    encontrado = busqueda_lineal(lista, objetivo)
    print(f'Elemento {objetivo} {"esta" if encontrado else "no esta" } en la lista')
