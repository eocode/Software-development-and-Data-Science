def decorador(is_valid = False):

    def _decorador(func):
        def before_action():
            print('Vamos a ejecutar la función')

        def after_action():
            print('Se ejecuto la función')

        def myFuncion(*args,**kwargs):
            if is_valid:
                before_action()
            resultado = func(*args,**kwargs)
            after_action()
            return resultado
        return myFuncion
    return _decorador

@decorador()
def saluda():
    print('Hola chavos')

@decorador(is_valid=True)
def suma(n1,n2):
    return n1 + n2

def run():
    saluda()
    resultado = suma(80,12)
    print(resultado)

if __name__ == "__main__":
    run()