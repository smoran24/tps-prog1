Algoritmo menorYmayor
	Definir i, num, numMayor, numMenor Como Entero
	numMayor=0 //inicializo variables
	numMenor=100
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		num=azar(100) //esta funci?n genera un n?mero al azar del 0 al 100
		Escribir num
		Si num>numMayor Entonces
			numMayor=num
		FinSi
		Si num<numMenor Entonces
			numMenor=num
		FinSi
	Fin Para
	Escribir "El mayor de los n?meros es: ", numMayor
	Escribir "El menor de los n?meros es: ", numMenor
FinAlgoritmo
