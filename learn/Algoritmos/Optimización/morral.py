
def morral(capacidad_morral, pesos, valores, n):
    if n == 0 or capacidad_morral == 0:
        return 0

    if pesos[n-1] > capacidad_morral:
        return morral(capacidad_morral, pesos, valores, n-1)

    print('-'*50)
    print(f'2Capacidad: {capacidad_morral}')
    print(f'2Valores: {valores} - Pesos: {pesos} - {n}')
    print(f'2Data: {valores[n - 1]} {pesos[n - 1]}')

    maximo = max(valores[n - 1] + morral(capacidad_morral - pesos[n - 1], pesos, valores, n - 1), morral(capacidad_morral, pesos, valores, n-1))
    print(f'Maximo: {maximo}')
 
    return maximo

if __name__ == "__main__":
    valores = [60, 115, 80]
    pesos = [10,30,20]
    capacidad_morral = 30
    n = len(valores)

    resultado = morral(capacidad_morral, pesos, valores, n)
    print(resultado)