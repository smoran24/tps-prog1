Algoritmo calculadora
	Definir num1, num2, suma, resta, producto, cociente, potencia Como Real
	Definir i, eleccion, confirmacion Como Entero
	Escribir "CALCULADORA V.1.1"
	Para i<-1 hasta 2 con paso 1 Hacer
		Si i==1 Entonces
			Escribir "Ingrese el primer n?mero"
			Leer num1
		SiNo
			Escribir "Ingrese el segundo n?mero"
			Leer num2
		Finsi
	FinPara
	Hacer
		Escribir "?Qu? operaci?n desea realizar?"
		Escribir "[1] Sumarlos"
		Escribir "[2] Restarlos"
		Escribir "[3] Multiplicarlos"
		Escribir "[4] Dividirlos"
		Escribir "[5] Potencia"
		Escribir "[Otro Num.] Salir"
		Leer eleccion
		Segun eleccion hacer
			Caso 1:
				Escribir "Escogi? la opci?n 1"
				suma=num1+num2
				Escribir "RESULTADO: ", num1, "+", num2, "=", suma
			Caso 2:
				Escribir "Escogi? la opci?n 2"
				resta=num1-num2
				Escribir "RESULTADO: ", num1, "-", num2, "=", resta
			Caso 3:
				Escribir "Escogi? la opci?n 3"
				producto=num1*num2
				Escribir "RESULTADO: ", num1, "*", num2, "=", producto
			Caso 4:
				Escribir "Escogi? la opci?n 4"
				Mientras num2==0 Hacer
					Escribir "No es posible dividir por cero."
					Escribir "Ingrese otro n?mero para reemplazarlo:"
					Leer num2
				FinMientras
				cociente=num1/num2
				Escribir "RESULTADO: ", num1, "/", num2, "=", cociente
			Caso 5:
				Escribir "Escogi? la opci?n 5"
				potencia=num1^num2
				Escribir "RESULTADO: ", num1, "^", num2, "=", potencia
			De Otro Modo:
				Escribir "?Desea Salir?"
				Escribir "[1] S?"
				Escribir "[2] No"
				Leer confirmacion
		FinSegun
	Hasta Que confirmacion==1
	
FinAlgoritmo
