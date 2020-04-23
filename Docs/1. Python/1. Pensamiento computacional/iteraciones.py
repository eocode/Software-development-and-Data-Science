contador = 0

while contador < 10:
    print(contador)
    contador += 1
    if(contador == 3):
        break

# iterables
iter('cadena') # cadena
iter(['a', 'b', 'c']) # lista
iter(('a', 'b', 'c')) # tupla
iter({'a', 'b', 'c'}) # conjunto
iter({'a': 1, 'b': 2, 'c': 3}) # diccionario

estudiantes = {
    'mexico': 10,
    'colombia': 15,
    'puerto_rico': 4,
}

for pais in estudiantes:
    print(pais)

for pais in estudiantes.keys():
    print(pais)

for numero_de_estudiantes in estudiantes.values():
    print(numero_de_estudiantes)

for pais, numero_de_estudiantes in estudiantes.items():
    print(f'{pais} con {numero_de_estudiantes} estudiantes')