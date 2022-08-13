Algoritmo LiberiaTayrona100
	Definir ValorLibro, Descuento, ValorIVA, ValorNeto, ValorTotal, AcumVrLibro, AcumIVA, AcumDescuento, AcumNeto como Real
	Definir  CodigoLibro, NombreLibro, Autor, TipoLectura como Caracter
	
	i=0
	Para i=0 Hasta 3 Con Paso 1 Hacer
		i=i+1
		Escribir "Escribir Tipo de Lectura del Libro:  A - B - C"
		Leer TipoLectura
		Escribir "Escribir Valor del Libro"
		Leer ValorLibro
		
		Si (TipoLectura = "A") Y (ValorLibro > 50000)	Entonces
		Descuento = ValorLibro * 0.07
		Escribir "Descuento es del 7%"
	SiNo
		Si (TipoLectura = "B") Y (ValorLibro > 35000)	Entonces
			Descuento = ValorLibro * 0.05
			Escribir "Descuento es del 5%"
		SiNo
			Si (TipoLectura = "C") Entonces
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
	
	//no se le pone acumulador porque es un solo libro y no debe llevar ciclos
	AcumVrLibro = AcumVrLibro + ValorLibro
	AcumIVA =  AcumIVA + ValorIVA
	AcumDescuento =  AcumDescuento + Descuento
	AcumNeto = AcumNeto + ValorNeto
	
Fin para

		
	Escribir "===================================="
	Escribir "Total Compra ", AcumVrLibro 
	Escribir "Total Descuento ", Descuento
	Escribir "Total IVA ", AcumIVA
	Escribir "Total NETO ", ValorNeto
	Escribir "Gracias por su compra!"
	
FinAlgoritmo
