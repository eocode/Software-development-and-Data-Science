def divisors_1(num):
    try:
        if num  <= 0:
            raise ValueError('Deves ingresar un número positivo')

        divisors = []
        for i in range(1, num + 1):
            if num % 1 == 0:
                divisors.append(i)
        
        return divisors
    except ValueError as e:
        print('Error: ',e)

def divisors_2(num):
    assert type(num) == int, "Debes ingresar un numero"
    assert num > 0, "Debes ingresar un numero positivo"

    divisors = [i for i in range(1, num + 1) if num % i == 0]

def run():
    try:
        num = int(input('Ingresa un número positivo: '))
        print(divisors_1(num))
    except ValueError:
        print('Solamnete puedes ingresar numeros')
    num = input('Ingresa un numero positivo: ')
    print(divisors_2(num))

if __name__ == "__main__":
    run()