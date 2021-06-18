//MORÁN, SEBASTIÁN
//TP5_EJERCICIO4
//4. Crear un procedimiento que intercambie los valores de dos variables. Realizar un programa que llame a este procedimiento 
//para que intercambie dos valores leídos desde el teclado y los muestre por pantalla

SubProceso intercambiarValores(val1 Por Referencia,  val2 Por Referencia)
	Definir auxVal1 como real
	auxVal1=val1
	val1=val2
	val2=auxVal1
	Escribir "Valor 1: ", val1
	Escribir "Valor 2: ", val2
FinSubProceso

Algoritmo Intercambia_Valores
	Definir valor1, valor2 Como Real
	Escribir "Ingrese un número (valor 1):"
	Leer valor1
	Escribir "Ingrese otro número (valor 2):"
	Leer valor2
	Escribir "El intercambio de sus valores resulta:"
	intercambiarValores(valor1, valor2)
FinAlgoritmo
