Algoritmo conversor_dinero
	//Defino las variables:
	Definir eleccion Como Entero
	Definir pesos, resultado Como Real
	//Instrucciones de entrada:
	Escribir "[CONVERSOR DE MONEDAS]"
	Escribir "Elija una opción de conversión a continuación:"
	Escribir "1. Pesos argentinos a dólar"
	Escribir "2. Pesos argentinos a peso chileno"
	Escribir "3. Pesos argentinos a libras esterlinas"
	Escribir "4. Pesos argentinos a sol peruano"
	Escribir "5. Pesos argentinos a yuan"
	Escribir "6. Salir"
	Leer eleccion
	//Instrucciones de salida:
	Si (eleccion<1 o eleccion>6) Entonces
		Escribir "ERROR: No es un valor válido"
	SiNo
		Escribir "Introduzca el valor en pesos que desea convertir:"
		Leer pesos
		Segun eleccion Hacer
			Caso 1:
				resultado=pesos/91.67
				Escribir "$", pesos, " pesos argentinos son: US$", resultado, " dólares."
			Caso 2:
				resultado=pesos/0.13
				Escribir "$", pesos, " pesos argentinos son: $", resultado, " pesos chilenos."
			Caso 3:
				resultado=pesos/126.75
				Escribir "$", pesos, " pesos argentinos son: £", resultado, " libras."
			Caso 4:
				resultado=pesos/24.49
				Escribir "$", pesos, " pesos argentinos son: $", resultado, " soles peruanos."
			Caso 5:
				resultado=pesos/13.96
				Escribir "$", pesos, " pesos argentinos son: ¥", resultado, " yuanes."
			Caso 6:
				Escribir "Gracias por usar nuestro sistema."
			De Otro Modo:
				Escribir "ERROR: No es un valor válido"
		Fin Segun
	FinSi
	
FinAlgoritmo