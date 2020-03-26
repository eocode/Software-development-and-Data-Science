def run():
    # Manejador de contextos, no es necesario cerrar el archivo
    with open('7. Archivos/numeros.txt', 'w') as f:
        for i in range(10):
            f.write(str(i))

if __name__ == "__main__":
    run()