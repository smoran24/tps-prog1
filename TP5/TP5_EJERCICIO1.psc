//MOR?N, SEBASTI?N
//TP5_EJERCICIO1
//1.	Crear un subprograma que reciba como entrada un valor entero e indique si se trata de un n?mero par o impar. 
//?Qu? tipo de subprograma crees m?s apropiado, procedimiento o funci?n? Escribe tambi?n un programa principal para probar el subprograma.

Funcion esPar<-determinarParidad(num) //Respuesta: Una funci?n es la clase de subprograma m?s apropiada
	Definir esPar como l?gico
	Si (num%2==0) Entonces
		esPar=Verdadero
	SiNo
		esPar=Falso
	Finsi
FinFuncion

Algoritmo Numero_Par_o_Impar
	Definir num Como Entero
	Definir resultado como l?gico
	Escribir "Ingrese un n?mero entero:"
	Leer num
	resultado=determinarParidad(num)
	Si (resultado==Verdadero) Entonces
		Escribir "El n?mero es par"
	SiNo
		Escribir "El n?mero es impar"
	Finsi
FinAlgoritmo
