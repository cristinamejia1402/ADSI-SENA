Algoritmo Libreria
	Definir ValorLibro, Descuento, ValorIVA, ValorNeto, ValorTotal como Real
	Definir  CodigoLibro, NombreLibro, Autor, TipoLectura como Caracter
	
	Escribir "Escribir Tipo de Lectura del Libro:  A - B - C"
	Leer TipoLectura
	Escribir "Escribir Valor del Libro"
	Leer ValorLibro
	
	
	Si TipoLectura = "A" Y (ValorLibro > 50000)	Entonces
		Descuento = ValorLibro * 0.07
		Escribir "Descuento es del 7%"
	SiNo
		Si TipoLectura = "B" Y (ValorLibro > 35000)	Entonces
			Descuento = ValorLibro * 0.05
			Escribir "Descuento es del 5%"
		SiNo
			Si TipoLectura = "C" Entonces
				Descuento = 0
				Escribir "No tiene descuento"
			SiNo
			
			FinSi
			
		FinSi
		Escribir "No cumple las dos condiciones, Descuento =0"
	FinSi
	ValorIVA = ValorLibro * 0.19	
	ValorNeto = ValorLibro - Descuento + ValorIVA	
	
	Escribir "Valor Libro ", ValorLibro
	Escribir "Valor Descuento ", Descuento
	Escribir "IVA ", ValorIVA
	Escribir "ValorNeto ", ValorNeto


FinAlgoritmo
