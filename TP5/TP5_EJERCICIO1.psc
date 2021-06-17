//MORÁN, SEBASTIÁN
//TP5_EJERCICIO1
//1.	Crear un subprograma que reciba como entrada un valor entero e indique si se trata de un número par o impar. 
//¿Qué tipo de subprograma crees más apropiado, procedimiento o función? Escribe también un programa principal para probar el subprograma.

Funcion esPar<-determinarParidad(num)
	Definir esPar como lógico
	Si (num%2==0) Entonces
		esPar=Verdadero
	SiNo
		esPar=Falso
	Finsi
FinFuncion

Algoritmo Numero_Par_o_Impar
	Definir num Como Entero
	Definir resultado como lógico
	Escribir "Ingrese un número entero:"
	Leer num
	resultado=determinarParidad(num)
	Si (resultado==Verdadero) Entonces
		Escribir "El número es par"
	SiNo
		Escribir "El número es impar"
	Finsi
FinAlgoritmo
