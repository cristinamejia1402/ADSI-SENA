Subalgoritmo Fecha<-IngresarFecha(dia, mes, año)
	Repetir
		Leer dia, mes, año
	Hasta Que dia>= 1 Y dia <= 31 Y mes= 3 Y año = 2022
	
	Si dia>= 1 Y dia <= 31 Y mes <3 Y mes >3 Y año = 2022 Entonces
		Escribir "Fuera de las fechas"
	FinSi
FinSubAlgoritmo

SubAlgoritmo Entrada()
	Escribir "Ingresar codigo  "
	Leer CodigoProducto
	Escribir "Ingresar Nombre Producto : "
	Leer NombreProducto
FinSubAlgoritmo

SubAlgoritmo IntercambioVariables(TipoProd)
	Escribir "Ingresar Tipo Producto"
	Escribir "1. -Canasta Familiar"
	Escribir "2. -Productos Basicos / Productos Necesarios"
	Escribir "3. -Productos de Lujo"
	Leer TipoProd
	Si TipoProd = 1 Entonces
		CanastaFam <- TipoProd
		Escribir "Seleccionó Producto de la Canasta Familiar"
	Sino
		Si TipoProd = 2 Entonces
			Escribir "Seleccinar a_ Productos Basicos, b_ Productos Necesarios"
			Leer seleccTipoProd
			Si seleccTipoProd = a Entonces
				ProducBasicos <- a
				Escribir "Seleccionó Productos Básicos"
			SiNo
				seleccTipoProd = b
				ProdNecesarios <- b
				Escribir "Seleccionó Productos Necesarios"
			FinSi
		Sino
			Si TipoProd = 3 Entonces
				ProdLujo <- TipoProd
				escribir "Seleccionó Productos de Lujo"
			FinSi
		FinSi
	FinSi

FinSubAlgoritmo

SubAlgoritmo Impuestos(Subtotal)

	Si TipoProd = CanastaFam Entonces
		Escribir "Impuesto es cero"
		Escribir "Impuesto Nacional es 0%"
		Escribir "Impuesto local es: 0%"
	SiNo
		Si TipoProd = ProducBasicos Entonces
			ImpuestoLocal= Subtotal * 0.03
			ImpuestoNal = Subtotal * 0.05
			Escribir "Impuesto Nacional es 3%:  ",ImpuestoNal
			Escribir "Impuesto local es: 5% ", ImpuestoLocal
			
		Sino
			ImpuestoLocal= Subtotal * 0.05
			ImpuestoNal = Subtotal * 0.07
			Escribir "Impuesto Nacional es 5% :  ",ImpuestoNal
			Escribir "Impuesto local es 7%:  ",ImpuestoLocal
			
			Si TipoProd = ProdLujo Entonces
				ImpuestoLocal= Subtotal * 0.10
				ImpuestoNal = Subtotal * 0.12
				Escribir "Impuesto Nacional es 10%:  ",ImpuestoNal
				Escribir "Impuesto local es 12%:  ", ImpuestoLocal
			FinSi
		FinSi

		AcumImpuestoNal = AcumImpuestoNal + ImpuestoNal
		AcumImpuestoLocal = AcumImpuestoLocal + ImpuestoLocal
		escribir "El total por Impuesto Nacional es de  ",ImpuestoNal
		escribir "El total por Impuesto local es de  ",AcumImpuestoLocal
	FinSi
FinSubAlgoritmo

SubAlgoritmo TotalDevolucion(Subtotal)
	Si TipoProd=CanastaFam Y Subtotal<250000 Entonces
		Devolucion = Subtotal * 0.04
		Escribir "Devolucion del 4% es de : ", Devolucion
	SiNo
		Si  TipoProd = ProducBasicos y ProducBasicos = a y (Subtotal >=250000 y Subtotal < 380000) Entonces
			Devolucion = Subtotal * 0.03
			Escribir "Devolucion del 3% : ", Devolucion
		FinSi
	FinSi
FinSubAlgoritmo


SubAlgoritmo ProcesoGeneral(ValorUnit, resultPV)
	i = 0
	AcumCantidad =0
	
	Para i <- 0 Hasta n Con Paso 1 Hacer
		Repetir
			Entrada()
			i= i + 1
			Escribir "Ingresar el Valor Unitario  : "
			Leer ValorUnit
			Escribir "Ingresar Cantidad  : "
			Leer Cantidad
			resultPV = ValorUnit * Cantidad
			Escribir "Precio de venta es  : ", resultPV
			Subtotal = Subtotal + resultPV
			Escribir "El subtotal de la venta es :", Subtotal
			IntercambioVariables(TipoProd)
			TotalDevolucion(Subtotal)
			Impuestos(Subtotal)
			AcumCantidad = 	AcumCantidad + Cantidad
			Escribir "Total productos  ", AcumCantidad
			PromPonderado = Subtotal * AcumCantidad
			Escribir "Desea continuar S/N";
			Leer resp;
		Hasta Que resp = "N" O resp= "n"
	Fin Para
	AcumDevolucion = AcumDevolucion + Devolucion
	AcumSubtotal = AcumSubtotal +Subtotal + Devolucion
	Escribir "El total por Devolución es de  ", AcumDevolucion
	Escribir "El total final es de  ", AcumSubtotal
	Escribir "El promedio ponderado es por valor de ", AcumPromedioPonderado
FinSubAlgoritmo

SubAlgoritmo AcumPromedioPonderado <- PrecioPonderado (PromPonderado)
	Si dia= 31 Y mes= 3 Y año = 2022 Entonces
		AcumPromedioPonderado = AcumPromedioPonderado + PromPonderado
	FinSi
FinSubAlgoritmo



Algoritmo Main_ElClavito
	Definir Devolucion, Subtotal, ImpuestoNal, ImpuestoLocal, PrecioVenta, AcumSubtotal Como Real
	definir CodigoProducto, dia, mes, año, Contador, TipoProd, n, i Como Entero
	Definir ProducBasicos, ProdNecesarios, ProducLujo Como Logico
	Definir NombreProducto, resp Como Caracter

Escribir "Ingresar fecha  DD.MM.AAAA : ", IngresarFecha(dia, mes, año)
ProcesoGeneral(ValorUnit, Cantidad)


FinAlgoritmo
