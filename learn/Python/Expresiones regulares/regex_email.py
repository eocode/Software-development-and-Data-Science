import re

def run():
    pattern = re.compile(r'^[a-z0-9_]{1,15}@[a-z/.]+\.[a-z]{2,10}$')
    email = input('Enter an email: ').strip()

    if pattern.match(email):
        print('Valid')
    else:
        print('Invalid')

if __name__ == "__main__":
    run()