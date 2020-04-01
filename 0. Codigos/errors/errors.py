import sys

def run():
    a = 1
    b = 2
    c = 0

    for i in range(3):
        try:
            print(f'{a} / {i} = {a/i}')
        except:
            print('Error: ',sys.exc_info()[0])

        try:
            print(f'{b} / {i} = {b/i}')
        except:
            print('Error: ',sys.exc_info()[0])

        try:
            print(f'{c} / {i} = {c/i}')
        except:
            print('Error: ',sys.exc_info()[0])

if __name__ == "__main__":
    run()