Algoritmo menorYmayor
	Definir i, num, numMayor, numMenor Como Entero
	numMayor=0 //inicializo variables
	numMenor=100
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		num=azar(100) //esta función genera un número al azar del 0 al 100
		Escribir num
		Si num>numMayor Entonces
			numMayor=num
		FinSi
		Si num<numMenor Entonces
			numMenor=num
		FinSi
	Fin Para
	Escribir "El mayor de los números es: ", numMayor
	Escribir "El menor de los números es: ", numMenor
FinAlgoritmo
