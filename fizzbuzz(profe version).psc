SubProceso probarAlgoritmo (  )
	Para i = 0 Hasta 16 Con Paso 1 Hacer // Simulando que el usuario ingresa
		// 16 numeros
		expresionAMostrar = calcularMultiplicidad(i)
		
		// Salida
		Escribir expresionAMostrar
	Fin Para
Fin SubProceso

// *****************************************************************************

Funcion expresionARetornar <- calcularMultiplicidad ( numeroAVerificar )
	Definir expresionARetornar Como Caracter
	// TODO: Validar que el 0 muestre el 0. 
	
	Si( numeroAVerificar MOD 3 == 0 Y numeroAVerificar MOD 5 == 0 ) Entonces
		expresionARetornar = "fizzbuzz"
	SiNo 
		Si( numeroAVerificar MOD 3 == 0 ) Entonces
			expresionARetornar = "fizz"
		SiNo 
			Si( numeroAVerificar MOD 5 == 0 ) Entonces
				expresionARetornar = "buzz"
			SiNo
				expresionARetornar = ConvertirATexto(numeroAVerificar)
			FinSi
		FinSi
	FinSi
Fin Funcion

// *****************************************************************************

Funcion numeroIngresado <- obtenerNumero (  )
	Definir numeroIngresado Como Entero
	Escribir "Ingrese un número entero para comprobar FizzBuzz"
	Leer numeroIngresado
Fin Funcion

// *****************************************************************************

Algoritmo fizzBuzz
	
	// Definición de variables
	Definir numeroAVerificar como Entero
	Definir expresionAMostrar Como Caracter
	
	// Procesar datos
	numeroAVerificar = obtenerNumero()

	//**** Validar que el numero sea un entero ****
	expresionAMostrar = calcularMultiplicidad(numeroAVerificar)
		
	// Salida
	Escribir expresionAMostrar
	Escribir "Comienzo TESTING"
	// Escribir una funcion que pruebe mi algoritmo
	probarAlgoritmo()
	
FinAlgoritmo

