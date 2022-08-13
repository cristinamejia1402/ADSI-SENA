Algoritmo Nomina
	Definir CedulaEmpleado, NombreEmpleado, ApellidosEmpleado, Cargo, TipoContrato como Caracter
	Definir SueldoBasico, AuxExtraord, Retefuente, TotalSueldoBasico, TotalRetefuente, TotalAuxTransporte, TotalAuxExtraord, TotalNetoPagado como Real
		i=0	
	Para i<-0 Hasta 70 Con Paso 1 Hacer
		i= i + 1
		Escribir "Ingresar Cedula Empleado- solo numeros sin puntos ni comas" 
		Leer CedulaEmpleado
		Escribir "Ingresar NombreEmpleado " 
		Leer NombreEmpleado
		Escribir "Ingresar Apellido Empleado " 
		Leer ApellidosEmpleado
		Escribir "Ingresar SueldoBasico " 
		Leer SueldoBasico
		Escribir "Cargo Empleado " 
		Leer Cargo
		Escribir "Tipo de Contrato: 1-De Planta, 2-Orden de Servicio, 3-Ocasional   " 
		Leer TipoContrato
		
		Escribir ""
		Escribir ""
		Escribir "El empleado ", NombreEmpleado," ", ApellidosEmpleado, "con documento ", CedulaEmpleado
		Escribir ""
		Escribir "Tiene contrato tipo: "
		

		
		Si SueldoBasico < 1800000 Entonces
			Si SueldoBasico < 1700000 Entonces
				Retefuente = SueldoBasico * 0
				AuxTransporte = 117000
			SiNo
				Retefuente = SueldoBasico * 0.02
				
				
			Fin Si
			
			
		SiNo
			
			Si SueldoBasico > 1800001 Y SueldoBasico < 250000 Entonces
				Retefuente = SueldoBasico * 0.03
				
			SiNo
				Si SueldoBasico > 2500001 Y SueldoBasico < 310000 Entonces
					Retefuente = SueldoBasico * 0.03	
				SiNo
					Si SueldoBasico > 3100001 Y SueldoBasico < 420000 Entonces
						Retefuente = SueldoBasico * 0.05
					SiNo
						Si SueldoBasico > 4200001 Y SueldoBasico < 520000 Entonces
							Retefuente = SueldoBasico * 0.07
						SiNo
							Si SueldoBasico > 5200001 Entonces
								Retefuente = SueldoBasico * 0.08
							SiNo
								
							Fin Si
							
						Fin Si
						
					Fin Si
					
				Fin Si
			Fin Si
			
		
			Si TipoContrato = "1" Entonces
				Escribir "De Planta "
				AuxExtraord = 200000
			SiNo
				Si TipoContrato = "2"  Entonces
					Escribir "Orden de Servicio "
					AuxExtraord = 130000
				SiNo
					Si TipoContrato = "3" Entonces
						Escribir "Ocasional "
						AuxExtraord = 0
					SiNo
						
					Fin Si
					
				Fin Si
			Fin Si

		Fin Si
		

		
		Escribir "Sueldo Basico: ", SueldoBasico
		Escribir "+ Auxilio de Transporte: ", AuxTransporte
		Escribir "+ Auxilio Extraord ", AuxExtraord
		Escribir "- Retefuente ", Retefuente
		NetoPagado = SueldoBasico + AuxTransporte + AuxExtraord - Retefuente
		Escribir "Neto Pagado ", NetoPagado
		
		TotalSueldoBasico = TotalSueldoBasico + SueldoBasico
		TotalAuxTransporte = TotalAuxTransporte + AuxTransporte
		TotalAuxExtraord = TotalAuxExtraord + AuxExtraord
		TotalRetefuente = TotalRetefuente + Retefuente
		TotalNetoPagado = TotalSueldoBasico + TotalAuxTransporte + TotalAuxExtraord - TotalRetefuente
	Fin para
			

	
	Escribir "==================="
	Escribir "Acumulado Sueldo Basico ", TotalSueldoBasico
	Escribir "+ Acumulado Auxilio de Transporte ", TotalAuxTransporte
	Escribir "+ Acumulado Auxilio Extraordinario ", TotalAuxExtraord
	Escribir "- Acumulado Retefuente ", TotalRetefuente
	Escribir "Total Neto Pagado ", TotalNetoPagado
	
	
	
FinAlgoritmo
