def suma2(n, n2):
    return n + n2

def suma3(n, n2, n3):
    return n + n2 + n3

def suma4(valor_uno):
    print(valor_uno)

suma4(valor_uno=4)

# Crea una tupla
def sumadinamica(*argumento):
    print(argumento)
    print(type(argumento))

def sumadinamica2(*args):
    resultado = 0
    for valor in args:
        resultado += valor
    return resultado

# Crea un diccionario
def sumadinamica3(**kwargs):
    valor = kwargs.get('valor','No contiene el valor')
    print(valor)

# * n valores -> tuplas
# * n valores -> diccionarios

resultado = sumadinamica3(valor='Eduardo', x=2, y=9, z=True)
print(resultado)