//MORÁN, SEBASTIÁN
//TP5_EJERCICIO5
//5. Escribe una función llamada media2 que reciba dos reales y devuelva el real que representa el promedio de ambos números. 
//Escribe luego un programa utilizando la función anterior que lea dos reales por teclado y devuelva la media aritmética de ambos.

Funcion resultado<-media2(numReal1, numReal2)
	Definir resultado, sumatoria Como Real
	sumatoria=numReal1+numReal2
	resultado=sumatoria/2
FinFuncion

Algoritmo Media_Aritmetica_de_Dos_Numeros
	Definir num1, num2, promedio Como Real
	Escribir "Ingrese un número real"
	Leer num1
	Escribir "Ingrese otro número real"
	Leer num2
	promedio=media2(num1, num2)
	Escribir "El promedio real entre ambos es: ", promedio
FinAlgoritmo
