def palindrome(word):
    assert len(word) > 0, "No puedes ingresar una palabra vacia"
    assert word.replace(' ', '').isalnum(), "Solo puedes ingresr caracteres del abecedario"

    word = word.replace(' ', '').lower()
    if word == word[::-1]:
        return True
    return False

def run():
    word = input('Ingresa una palabra: ')
    if palindrome(word):
        print('Es un palindromo')
    else:
        print('No es un palindromo')

if __name__ == "__main__":
    run()