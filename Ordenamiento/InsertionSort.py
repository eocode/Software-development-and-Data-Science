import random

def insertionSort(lista):

    for indice in range(1, len(lista)):
        valor_actual = lista[indice]
        posicion_actual = indice
        # print(f'{indice} {valor_actual} {posicion_actual}')

        while posicion_actual > 0 and lista[posicion_actual - 1] > valor_actual:
            lista[posicion_actual] = lista[posicion_actual - 1]
            posicion_actual -= 1
            print(lista)

        lista[posicion_actual] = valor_actual
        print(lista)

    return lista


if __name__ == "__main__":
    tamano_de_lista = int(input("De que tamaño será la lista?"))

    lista = [random.randint(0,100) for i in range(tamano_de_lista)]
    print(lista)

    lista_ordenada = insertionSort(lista)
    print(lista_ordenada)