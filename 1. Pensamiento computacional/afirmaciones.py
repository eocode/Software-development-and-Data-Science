def primera_letra(lista_de_palabras):
    primera_letra = []

    for palabra in lista_de_palabras:
        assert type(palabra) == str, f'{palabra} no es str'
        assert len(palabra) > 0, 'No se permiten str vacios'

        primera_letra.append(palabra[0])
    
    return primera_letra

list = ['hola', 'adios', 5]
print(primera_letra(list))