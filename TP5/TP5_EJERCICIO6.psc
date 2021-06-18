//MORÁN, SEBASTIÁN
//TP5_EJERCICIO6
//6. Escribe una función que reciba un número como parámetro y devuelva el número que se obtiene al invertir el orden de los dígitos del número original. 
//Por ejemplo, si la función recibe el número 356 devolverá el número 653.

Funcion inverso<-invertirDigitos(n)
	Definir inverso Como Entero
	Si (abs(n)<10) Entonces //caso para un valor de un solo digito (y contempla negativos)
		inverso=n
	SiNo
		inverso=0
		Mientras (abs(n)>0) Hacer
			inverso=inverso*10+n%10
			n=(n-n%10)/10
		FinMientras
	Finsi
FinFuncion

Algoritmo Inversion_de_Digitos
	Definir num Como Entero
	Definir numInvertido Como Entero
	Escribir "Ingrese un número entero:"
	Leer num
	Escribir "El número con sus digitos invertidos resulta:"
	numInvertido=invertirDigitos(num)
	Escribir numInvertido
FinAlgoritmo
