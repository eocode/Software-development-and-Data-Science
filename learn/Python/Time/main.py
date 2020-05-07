import time

def chronometer(func):
    def wrapper(*args, **kwargs):
        initial_time = time.time()
        func(*args, **kwargs)
        final_time = time.time()
        seconds=final_time-initial_time
        print(f'The function {func.__name__} took {seconds} s')
    return wrapper

@chronometer
def palindrome(string):
    string = string.replace(' ','').lower()
    return string == string[::-1]

@chronometer
def long_function():
    for _ in range(1000000000):
        pass

def run():
    palindrome('Anita lava la tina')
    long_function()

if __name__ == "__main__":
    run()
