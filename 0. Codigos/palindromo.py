def palindrome2(word):
    reverser_word = word[::-1]
    if reverser_word == word:
        return True
    return False

def palindrome(word):
    reversed_letters = []

    for letter in word:
        reversed_letters.insert(0,letter)
    reversed_word = ''.join(reversed_letters)

    if reversed_word == word:
        return True

    return False

if __name__ == "__main__":
    word = str(input('Escribe una palabra: '))
    print(palindrome(word))
    print(palindrome2(word))