#Programa para definir Auxilios para 500 aprendices del SENA
# CRISTINA MARIA MEJIA FUENTES, cc 43493210
BonoEstrato = 0
BonoAlmuerzo = 0
AuxFinal = 0
contador = 0

#Ciclo while para controlar el ingreso de 500 aprendices
while contador < 500: 
    BonoRaza =int()
    OrdenAlmuerzo= str()
    BonoEstrato = int()
    MesesDePago =int(0)
    NombresApellidos = input("Ingrese nombres y apellidos del aprendiz: ")
    Estrato = int(input("Ingrese el estrato '1', '2', '3', '4', '5', '6': "))

    if Estrato== 5 or Estrato== 6:
        print("El aprendiz ", NombresApellidos, "no recibe ningún auxilio, por ser de estratos 5 y 6") 
    else:
        LineaTecnol = input("Si pertenece a línea tecnologia? ingrese: 'SI' /'NO': ")
        Raza = input("Ingrese la Raza: I para Indígenas, M para Mestizos, N para Negros, X para Ninguna Raza:  ")   
        Edad = int(input("Escriba la edad del aprendiz: "))

        if LineaTecnol == "SI":
            BonoTecnologia = "Recibe una Tableta, por estar en Linea Tecnológica"
        else:
            BonoTecnologia = "No recibe beneficio de tableta por no estar en Linea Tecnológica"

        if int(Edad) < 18:
            OrdenAlmuerzo = "Es menor de edad, recibe beneficio de una orden para almuerzos"
        else:
            OrdenAlmuerzo ="Es mayor de edad, por lo tanto NO recibe beneficio de almuerzo"
        
        if Raza == "I":
            BonoRaza = 400000
            #acumulable a cualquier otro beneficio.
        if Raza == "M":
            BonoRaza = 250000
            #acumulable a cualquier otro beneficio.
        if Raza == "N":
            BonoRaza = 150000
            #acumulable a cualquier otro beneficio.
        if Raza == "X":
            BonoRaza = 0
            #acumulable a cualquier otro beneficio.

        if  Raza =="I" and (Estrato==1 or Estrato==2) and LineaTecnol== "SI":
            print("El aprendiz ", NombresApellidos, "recibirá los siguientes beneficios:  ")
            print("un portátil")
            print("Una beca para estudiar en cualquier universidad, luego de terminar en el SENA")
            print("Y un bono mensual de sostenimiento en cualquier ciudad del país")
            print("En este caso no podrá obtener ningún otro beneficio.")
        elif Raza =="I" and (Estrato==1 or Estrato==2) and LineaTecnol== "NO":
            if Estrato == 1:
                BonoEstrato = 1200000
                MesesDePago = 12
                print("El aprendiz ", NombresApellidos, " recibe los siguientes beneficios: ")
                print("Bono por Estrato: ", BonoEstrato, "Durante ", MesesDePago, "meses, para un Total de  ", BonoEstrato * MesesDePago)
                print("En este caso no podrá obtener ningún otro beneficio.")  
            elif Estrato == 2:
                BonoEstrato = 400000
                MesesDePago = 6
            
                print("El aprendiz ", NombresApellidos, " recibe los siguientes beneficios: ")
                print("Bono por Estrato: ", BonoEstrato, "Durante ", MesesDePago, "meses, para un Total de  ", BonoEstrato * MesesDePago)
                print("Puede obtener otros beneficios: ")
                print("* ", BonoTecnologia) 
                print("* Bono por Raza: ", BonoRaza)

        if Raza != "I" and  Estrato == 1 or Estrato == 2 and LineaTecnol=="SI":
            if Estrato == 1:
                BonoEstrato = 1200000
                MesesDePago = 12
                print("No tiene derecho a más beneficios por ser estrato 1")
            elif Estrato == 2:
                BonoEstrato = 400000
                MesesDePago = 3
                print("Beneficio es Acumulable para Estrato 2")
                print("Otros Beneficios: ")
                print(BonoTecnologia) 
                print(BonoRaza) 
            print("El aprendiz ", NombresApellidos, " recibe los siguientes beneficios: ")
            print("Recibe por Estrato", BonoEstrato, "Durante ", MesesDePago, "meses, equivalentes a ", BonoEstrato * MesesDePago)
            print("Otros Beneficios; ", BonoTecnologia, "y ", OrdenAlmuerzo) 

        elif Raza != "I" and Estrato == 3 or Estrato == 4 :
            if Estrato == 3:
                BonoEstrato = 300000
                MesesDePago = 3
            elif Estrato == 4:
                BonoEstrato = 150000
                MesesDePago = 3
            
            #beneficio es acumulable
            print("El aprendiz ", NombresApellidos, " recibe los siguientes beneficios: ")
            print("Recibe por Estrato", BonoEstrato, "Durante ", MesesDePago, "meses, equivalentes a ", BonoEstrato * MesesDePago)
            print("Recibe por raza ", BonoRaza)
            print("Recibe en total ", BonoEstrato * MesesDePago + BonoRaza)
            print("Bono de Estrato es acumulable")  
            print("Otros Beneficios: ", OrdenAlmuerzo) 
            if LineaTecnol == "SI":
                print(BonoTecnologia)
            else:
                print(BonoTecnologia)
    contador += 1
    print("Estudiantes número; ", contador)
print("Total 500 estudiantes")
