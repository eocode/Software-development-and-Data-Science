def protected(func):
    def wrapper(password):
        if password == 'eocode':
            return func()
        else:
            print('La contraseña es incorrecta')
    return wrapper

@protected
def home():
    print('Bienvenid@')

def login():
    password = str(input('Ingresa contraseña: '))
    home(password)

if __name__ == "__main__":
    login()