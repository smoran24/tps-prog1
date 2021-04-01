Algoritmo conversor_dinero
	//Defino las variables:
	Definir eleccion Como Entero
	Definir pesos, resultado Como Real
	//Instrucciones de entrada:
	Escribir "[CONVERSOR DE MONEDAS]"
	Escribir "Introduzca el valor en pesos que desea convertir:"
	Leer pesos
	Escribir "Elija una opción de conversión a continuación:"
	Escribir "1. Pesos argentinos a dólar"
	Escribir "2. Pesos argentinos a peso chileno"
	Escribir "3. Pesos argentinos a libras esterlinas"
	Escribir "4. Pesos argentinos a sol peruano"
	Escribir "5. Pesos argentinos a yuan"
	Escribir "6. Salir"
	Leer eleccion
	//Instrucciones de salida:
	Segun eleccion Hacer
		1:
			resultado=pesos/91.67
			Escribir "$", pesos, " pesos argentinos son: US$", resultado, " dólares."
		2:
			resultado=pesos/0.13
			Escribir "$", pesos, " pesos argentinos son: $", resultado, " pesos chilenos."
		3:
			resultado=pesos/126.75
			Escribir "$", pesos, " pesos argentinos son: £", resultado, " libras."
		4:
			resultado=pesos/24.49
			Escribir "$", pesos, " pesos argentinos son: $", resultado, " soles peruanos."
		5:
			resultado=pesos/13.96
			Escribir "$", pesos, " pesos argentinos son: ¥", resultado, " yuanes."
		6:
			Escribir "Gracias por usar nuestro sistema."
		De Otro Modo:
			Escribir "ERROR: No es un valor válido"
	Fin Segun
FinAlgoritmo