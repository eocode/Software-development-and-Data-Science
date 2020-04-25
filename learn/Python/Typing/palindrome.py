def is_palindrome(string: str) -> str:
    string = string.replace(' ', '').lower()
    return string == string[::-1]


def run():
    print(is_palindrome('Ana'))


if __name__ == '__main__':
    run()
