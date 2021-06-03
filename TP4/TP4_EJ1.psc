Algoritmo Primeros_Cien_Pares
	//Autor: MACHINEA, JOAQUÍN
	Definir tamanioArray Como Entero
	tamanioArray=100
	Dimension arrayNumerosPares[tamanioArray]
	Definir num Como Entero
	num=0 //inicializo num. Considero al 0 como número par ya que 0%2=0
	Escribir "Los primeros 100 números pares son:"
	Para i<-0 Hasta tamanioArray-1 Con Paso 1 Hacer //lleno el arreglo con números pares
		arrayNumerosPares[i]=num
		num=num+2
	Fin Para
	Para i<-0 Hasta tamanioArray-1 Con Paso 1 Hacer //muestro los elementos del arreglo
		Escribir arrayNumerosPares[i]
	Fin Para
FinAlgoritmo
