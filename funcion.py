def suma(a,b):
    """ Suma dos valores a y b.
    param int a cualquier entero
    param int b cualquier entero
    returns la sumatoria de a y b
    """
    total = a + b
    print(total)
    return total

help(suma)

def nombre_completo(nombre, apellido, inverso=False):
    if inverso :
        return f'{apellido} {nombre}'
    else :
        return f'{nombre} {apellido}'

print(nombre_completo('Elias', 'Ojeda'))
print(nombre_completo('Elias', 'Ojeda', inverso=True))
print(nombre_completo(apellido='Ojeda', nombre='Elias'))

suma(2,2)