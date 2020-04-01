def run():
    try:
        a = int(input("Ingresa un número negativo: "))
        if a >= 0:
            raise ValueError("Ese no es un número negativo!")
    except ValueError as ve:
        print(ve)

if __name__ == "__main__":
    run()