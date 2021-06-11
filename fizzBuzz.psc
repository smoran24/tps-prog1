Funcion MENSAJE<-verificarNum(num)
	Definir MENSAJE como cadena
	Si (num%3==0 y num%5==0) Entonces
		MENSAJE="FizzBuzz"
	SiNo
		Si (num%3==0) Entonces
			MENSAJE="Fizz"
		SiNo
			Si (num%5==0) Entonces
				MENSAJE="Buzz"
			SiNo
				MENSAJE=" "
				Escribir num
			FinSi
		FinSi
	Finsi
FinSubProceso


Algoritmo fizz_buzz
	Definir num Como Entero
	Definir validacion como cadena
	Escribir "Ingrese un número entero:"
	Leer num
	validacion=verificarNum(num)
	Escribir validacion
FinAlgoritmo
