mayor_de_edad = 18     #variable a validar
edad=[5,10,20,18]      #Array de números
ciclo_for=0            #variable para contar ciclo for


for x in edad:         # la variable x existe mientras se ejecute el ciclo y se repite tantas veces como items tenga el array.
    if x < mayor_de_edad:   # x ahora tiene el valor de la posicion 0 de edad.
      print(f"la posicion {ciclo_for} del array edad es {x} y es menor de edad") # la f (en python) se usa para darle formato a los numeros y que se escriban como letras
    else:
      print(f"la posicion {ciclo_for} del array edad es {x} y es mayor de edad") # cuando usamos f y queremos llamar una variable la colocamos entre {}
    ciclo_for + 1       #esto es igual que colocar ciclo_for=ciclor_for+1 lo que hace es aumentar el contador en 1
  

