Algoritmo busco_aleatorio_en_arreglo
	//Autor: MORÁN, SEBASTIÁN
	Definir numRandom, numRandomBuscador, posicion Como Entero
	Definir existeNum Como Logico
	Definir tamanioArray Como Entero
	tamanioArray=20
	Dimension arrayNumerosAleatorios[tamanioArray]
	existeNum=Falso
	posicion=0
	Para i<-0 Hasta 19 Con Paso 1 Hacer //bucle que llena el arreglo de 20 elementos con numeros al azar
		numRandom=Azar(100) //genero un número al azar entre 0 y 100
		arrayNumerosAleatorios[i]=numRandom
	Fin Para
	
	Escribir "[" sin saltar
	Para i<-0 Hasta 19 Con Paso 1 Hacer //bucle que muestra el arreglo
		Escribir arrayNumerosAleatorios[i], ", " sin saltar
	Fin Para
	Escribir "]"
	
	numRandomBuscador=Azar(100)
	Escribir "Número a buscar en el arreglo: ", numRandomBuscador
	Para i<-0 Hasta 19 Con Paso 1 Hacer //bucle que compara el número buscador con el numero a buscar en el arreglo.
		Si numRandomBuscador==arrayNumerosAleatorios[i] Entonces
			existeNum=Verdadero
			posicion=i //guardo el indice del arreglo para saber en qué posicion estaba el número.
		FinSi
	Fin Para
	Si existeNum==Verdadero Entonces
		Escribir "El número ", numRandomBuscador, " fue encontrado en la posición ", posicion
	SiNo
		Escribir "No se encontró el número buscado"
	Finsi
FinAlgoritmo
