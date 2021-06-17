//MORÁN, SEBASTIÁN
//TP5_EJERCICIO2
//Escribe un procedimiento que escriba en pantalla los n primeros números primos. El procedimiento recibe n como parámetro.

SubProceso mostrarNPrimos(N)
	Definir divisiones, auxNum, cuentaPrimos Como Entero
	cuentaPrimos=0
	auxNum=1
	Hacer //bucle que recorre los N primeros numeros (y solo muestra los primos)
		divisiones=0//variable que cuenta cuantas veces es divisible num actual
		Para i=1 Hasta auxNum Con Paso 1 Hacer //bucle que recorre cada posibilidad de dividir el num actual por un contador i
			Si (auxNum%i==0) Entonces
				divisiones=divisiones+1
			FinSi
		Fin Para
		Si (divisiones==2) Entonces //las unicas dos veces que es divisible un número primo son consigo mismo y con 1
			Escribir "Primo #", cuentaPrimos+1, ": ", auxNum
			cuentaPrimos=cuentaPrimos+1
		Finsi
		auxNum=auxNum+1
	Hasta Que(cuentaPrimos==N)
FinSubProceso

Algoritmo N_Primeros_Primos
	Definir num como entero
	Hacer
		Escribir "Ingrese un número positivo N para contar los primeros N primos:"
		Leer num
	Mientras Que (num<2) //evita que sea 1 porque no es considerado primo
	mostrarNPrimos(num)
FinAlgoritmo
