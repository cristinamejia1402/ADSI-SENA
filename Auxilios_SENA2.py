Algoritmo Auxilios_SENA
	Definir DocumentoEst, Nombres, Apellidos, Raza, LineaTecnol Como Caracter
	Definir Edad, Estrato, contEstudiantes Como Entero 
	//Escribir "Documento de identidad "
	//Leer DocumentoEst
	//Escribir "Nombres del estudiante "
	//Leer Nombres
	//Escribir "Apellidos del estudiante "
	//Leer Apellidos
	
	
	contEstudiantes <- 0
	Para contEstudiantes <-1 Hasta 3 Con Paso 1 Hacer
		
		Escribir "Seleccionar la Linea Tecnologica"
		Escribir "Tecnologica: SI // T�cnica: NO"
		Leer LineaTecnol
		Escribir "Seleccionar el Estrato del aprendiz: 1-2-3-4-5-6"
		Leer Estrato
		Escribir "Ingresar la raza del aprendiz"
		Escribir "I para Ind�genas, M para Mestizos, N para Negros, X para Ninguna Raza"
		Leer Raza
		Escribir "Ingresar edad del aprendiz"
		Leer Edad
		
		Si Raza = "I" Y LineaTecnol = "SI" Y (Estrato = 1 O Estrato = 2) Entonces
			Escribir "Recibe como beneficios: ",Beneficio1,", ",Beneficio2,", ",Beneficio3
			Escribir "El aprendiz no podr� obtener ning�n otro beneficio."
		Finsi
			
		Si Estrato = 1 Entonces
			Escribir "Recibe B", Beneficio4
			Escribir "El aprendiz no podr� obtener ning�n otro beneficio"
		Sino
			Si Estrato = 2 Entonces
				Escribir "Recibe C", Beneficio5
			SiNo
				Si Estrato = 3 Entonces
					Escribir "Recibe D", Beneficio6
					Escribir "Este beneficio es acumulable, es decir, que puede obtener otros beneficios"
				SiNo
					Si Estrato = 4 Entonces
						Escribir "Recibe E ", Beneficio7
						Escribir "Este beneficio es acumulable, es decir, que puede obtener otros beneficios"
					SiNo
						Si Estrato = 5 O Estrato = 6 Entonces
							Escribir "Los aprendices de estrato 5 y 6, NO se les otorgar ning�n beneficio por ning�n concepto."
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		
		Si Raza = "I" Entonces
			Escribir "Recibe G", Beneficio8
			Escribir "Acumulable a cualquier otro beneficio"
		SiNo
			Si Raza = "M" entonces
				Escribir "Recibe beneficio de H", Beneficio9
				Escribir "Acumulable a cualquier otro beneficio."
			SiNo
				Si Raza= "N" Entonces
					Escribir "Recibe beneficio de I", Beneficio10
					Escribir "Acumulable a cualquier otro beneficio."

				FinSi
			Finsi
		Fin Si
		

	
	FinPara
FinAlgoritmo
