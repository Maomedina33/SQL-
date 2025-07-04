import re  # Importamos la librería de expresiones regulares

# Lista vacía donde guardaremos los nombres de los estudiantes
estudiantes = []

while True:
    try:
        print("=" * 60)
        cantidad = int(input("¿Cuántos nombres de estudiantes vas a ingresar?: "))
        print("=" * 60)
        break  # Salimos del bucle si la entrada fue válida
    except ValueError:
        print("❌ El dato ingresado no es válido.")
        print("ℹ️ No se aceptan letras, decimales o caracteres especiales como @$#?.[]\n")
        continue  # Repetimos la pregunta hasta que se ingrese un número válido

# Confirmamos la cantidad que se va a ingresar
print(f"\n👉 Vas a introducir {cantidad} nombres:\n")

# Bucle para pedir los nombres uno por uno
for i in range(cantidad):
    while True:
        estudiante = input(f"Ingrese el nombre del estudiante #{i + 1}: ")
        
        # Validamos que el nombre solo contenga letras (incluye Ñ y ñ)
        if re.search("^[a-zA-ZñÑ]+$", estudiante):
            estudiantes.append(estudiante)  # Agrega a la lista
            break  # Salimos del bucle interno y pasamos al siguiente estudiante
        else:
            print("⚠️ Solo se permiten letras sin espacios ni caracteres especiales.\n")

# Mostramos los resultados finales
print("\n✅ Ingresaste los siguientes estudiantes:")
for estudiante in estudiantes:
    print(f" - {estudiante}")