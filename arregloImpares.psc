Algoritmo ejercicioArregloImpares
	Definir tamanio, indice, numeroAzar Como Entero
	Definir banderaBusqueda Como Logico
	tamanio=10
	indice=0
	numeroAzar=Aleatorio(0,10)
	banderaBusqueda=Falso
	Dimension numerosImpares[tamanio]
	Para i<-0 Hasta (tamanio*2-1) Con Paso 1 Hacer //llena el arreglo solo con los primeros 10 impares. El bucle se repetira hasta 19 (el decimo impar)
		Si (i%2=1) Entonces //evita a?adir numeros pares
			numerosImpares[indice]=i
			indice=indice+1 //avanza el indice en una posici?n
		FinSi
	Fin Para
	Para j<-0 hasta tamanio-1 con paso 1 Hacer //muestra los numeros del arreglo
		Escribir "El n?mero ", numerosImpares[j], " est? en la posici?n ", j
	FinPara
	Para k<-0 hasta tamanio-1 con paso 1 Hacer //busca y compara el valor al azar con los valores del arreglo
		Si numeroAzar==numerosImpares[k] Entonces
			banderaBusqueda=Verdadero
		Finsi
	FinPara
	Si (banderaBusqueda==Verdadero) Entonces
		Escribir "Se encontr? el n?mero ", numeroAzar, " en el arreglo"
	SiNo
		Escribir "No se encontr? el n?mero ", numeroAzar, " en el arreglo"
	FinSi
FinAlgoritmo
