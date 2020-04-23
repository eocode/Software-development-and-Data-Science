import sys

def run():
    a = 1
    b = 2
    c = 0

    for i in range(3):
        try:
            print(f'{a} / {i} = {a/i}')
        except ZeroDivisionError:
            print('Error: ', 'No se puede dividir por 0')
        except TypeError:
            print('Eror: ','El tipo es incorrecto')

        try:
            print(f'{b} / {i} = {b/i}')
        except ZeroDivisionError:
            print('Error: ', 'No se puede dividir por 0')
        except TypeError:
            print('Eror: ','El tipo es incorrecto')

        try:
            print(f'{c} / {i} = {c/i}')
        except ZeroDivisionError:
            print('Error: ', 'No se puede dividir por 0')
        except TypeError:
            print('Eror: ','El tipo es incorrecto')

if __name__ == "__main__":
    run()