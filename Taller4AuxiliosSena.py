#Programa para definir Auxilios para 3 aprendices del SENA 

contador = 0

#Ciclo for para controlar el ingreso de 500 aprendices
for contador in range(3):
		
	LineaTecnol = input("Para Tecnologia ingrese: 'SI'- Para tecnica ingrese 'NO': ")
	Estrato = input("Ingrese el estrato '1', '2', '3', '4', '5', '6': ")
	Raza = input("Ingrese la Raza: 'I' para Indígenas, M para Mestizos, N para Negros, X para Ninguna Raza:  ")
	Edad = input ("Ingresar edad del aprendiz: ")
	


if Estrato == 1:
	Bono1 = int(1200000);
	print("Recibe", Bono1 * 12, " un bono de $1.200.000 mensuales por espacio de un año")
	if Estrato == "5" or Estrato == "6":
		Bono1 = int(0)
		Bono2 = int(0)
		Bono3 = int(0)
		print ("Los aprendices de estrato 5 y 6, NO reciben ningun beneficio.")
print("El aprendiz no podrá obtener ningún otro beneficio")

if Raza == "I" and LineaTecnol == "SI" and (Estrato == 1) or (Estrato == 2):
	print("Recibe como beneficios: un portátil y una beca para estudiar en cualquier universidad, luego de terminar en el SENA, además de un bono mensual de sostenimiento en cualquier ciudad del país")
	print("El aprendiz no podrá obtener ningún otro beneficio.")
	if Raza == "I":
		print("Recibe un bono por $400.000")
		print("Es acumulable a cualquier otro beneficio")
		if Raza == "M":
			print("Recibe beneficio de un bono por $250.000")
			print("Es acumulable a cualquier otro beneficio.")
			if Raza == "N":
				print("Recibe beneficio de  un bono por $150.000")
				print("Es acumulable a cualquier otro beneficio.")

	
	if LineaTecnol == "SI" or LineaTecnol == "NO":
		print("Recibe beneficio de una tableta")
		print("Es acumulable a cualquier otro beneficio.")



	if int(Edad) < 18:
		print("Recibe beneficio de una orden para almuerzos a los que sean menores de edad.")
	else:
		print("No recibe beficio de almuerzo por ser mayor de edad")


contador = contador +1
#contador += 1

	