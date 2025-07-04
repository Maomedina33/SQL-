mayor_de_edad = 18     #variable a validar
edad=[5,10,20,18]      #Array de números
ciclo_while=0          #variable para contar ciclo fowhile


while ciclo_while < len(edad):     #len(edad) mide cuantos elementos tiene mi array edad.
    if (edad[ciclo_while] < mayor_de_edad):   #edad[ciclo] lo colocamos asi para indicar que valide la pósicion dentro del array
                                            #que sera el numero del ciclo
      print(f"la posicion {ciclo_while} del array edad es {edad[ciclo_while]} y es menor de edad") 
    else:
      print(f"la posicion {ciclo_while} del array edad es {edad[ciclo_while]} y es mayor de edad") 
    ciclo_while+=1  