//MOR?N, SEBASTI?N
//TP5_EJERCICIO6
//6. Escribe una funci?n que reciba un n?mero como par?metro y devuelva el n?mero que se obtiene al invertir el orden de los d?gitos del n?mero original. 
//Por ejemplo, si la funci?n recibe el n?mero 356 devolver? el n?mero 653.

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
	Escribir "Ingrese un n?mero entero:"
	Leer num
	Escribir "El n?mero con sus digitos invertidos resulta:"
	numInvertido=invertirDigitos(num)
	Escribir numInvertido
FinAlgoritmo
