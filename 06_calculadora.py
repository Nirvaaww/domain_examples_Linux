#Nirvaww -*- coding: utf-8 -*-
def calculadora():
    print("Calculadora interactiva")

    while True:
        try:
            expresion = input("Ingrese operación o 'salir' para terminar: ")
            if expresion.lower() == 'salir':
                print("Saliendo de la calculadora...")
                break
            
            resultado = eval(expresion)
            print("Resultado:", resultado)
        except ZeroDivisionError:
            print("Error: No se puede dividir por cero.")
        except Exception:
            print("Error: Expresión inválida.")

if __name__ == "__main__":
    calculadora()