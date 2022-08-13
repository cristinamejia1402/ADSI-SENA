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
	Para contEstudiantes <-1 Hasta 5 Con Paso 1 Hacer
		
		Escribir "Seleccionar la Linea Tecnologica"
		Escribir "Tecnologica: SI // Técnica: NO"
		Leer LineaTecnol
		Escribir "Seleccionar el Estrato del aprendiz: 1-2-3-4-5-6"
		Leer Estrato
		Escribir "Ingresar la raza del aprendiz"
		Escribir "I para Indígenas, M para Mestizos, N para Negros, X para Ninguna Raza"
		Leer Raza
		Escribir "Ingresar edad del aprendiz"
		Leer Edad
		
		Si Estrato = 1 Entonces
			Escribir "Recibe  un bono de $1.200.000 mensuales por espacio de un año, El aprendiz no podrá obtener ningún otro beneficio"
		Sino
			Si Estrato = 2 Entonces
				Escribir "Recibe un bono de $400.000 mensuales por espacio de un medio año."
			SiNo
				Si Estrato = 3 Entonces
					Escribir "Recibe Recibe un bono de $300.000 mensuales por espacio de un trimestre."
					Escribir "Este beneficio es acumulable, es decir, que puede obtener otros beneficios"
				SiNo
					Si Estrato = 4 Entonces
						Escribir "Recibe un bono de $150.000 mensuales por espacio de un trimestre"
						Escribir "Este beneficio es acumulable, es decir, que puede obtener otros beneficios"
					Finsi
				FinSi
			FinSi
		FinSi
		
		Si Estrato = 5 O Estrato = 6 Entonces
			Escribir "Los aprendices de estrato 5 y 6, NO se les otorgar ningún beneficio por ningún concepto."
		SiNo
			Si Raza = "I" Y LineaTecnol = "SI" Y (Estrato = 1 O Estrato = 2) Entonces
				Escribir "Recibe como beneficios: un portátil y una beca para estudiar en cualquier universidad, luego de terminar en el SENA, además de un bono mensual de sostenimiento en cualquier ciudad del país"
				Escribir "El aprendiz no podrá obtener ningún otro beneficio."
			SiNo
				Si Raza = "I" Entonces
					Escribir "Recibe un bono por $400.000"
					Escribir "Acumulable a cualquier otro beneficio"
				SiNo
					Si Raza = "M" entonces
						Escribir "Recibe beneficio de un bono por $250.000"
						Escribir "Acumulable a cualquier otro beneficio."
					SiNo
						Si Raza= "N" Entonces
							Escribir "Recibe beneficio de  un bono por $150.000"
							Escribir "Acumulable a cualquier otro beneficio."
						FinSi
					Finsi
				FinSi
			FinSi
		FinSi	
		
		Si LineaTecnol = "SI" O LineaTecnol = "NO"
			Escribir "Recibe beneficio de una tableta, es Acumulable a cualquier otro beneficio."
		FinSi
		
		Si Edad < 18 Entonces
			Escribir "Recibe beneficio Recibe beneficio de una orden para almuerzos a los que sean menores de edad."
		SiNo
			Escribir "No recibe beneficio de una orden para almuerzos, porque es mayor de edad"
		FinSi
	
	FinPara
FinAlgoritmo
