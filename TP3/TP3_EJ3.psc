Algoritmo calcula100
	Definir eleccion, confirmacion, num, suma Como Entero
	Hacer
		suma=0 //inicializo suma cada vez que se repita el bucle del men?
		Escribir "SUMADOR DE LOS PRIMEROS 100 NUMEROS"
		Escribir "Bienvenido, elija una de las siguientes opciones:"
		Escribir "[1] Calcular usando estructura PARA"
		Escribir "[2] Calcular usando estructura MIENTRAS"
		Escribir "[3] Calcular usando estructura REPETIR"
		Escribir "[Otro num.] Salir"
		Leer eleccion
		Segun eleccion Hacer
			Caso 1:
				Escribir "Escogi? la opci?n 1"
				Para num<-1 Hasta 100 Con Paso 1 Hacer
					suma=num+suma
					Escribir suma
				Fin Para
				Escribir "La suma es: ", suma
			Caso 2:
				Escribir "Escogi? la opci?n 2"
				num=1
				Mientras suma<5050 Hacer
					suma=num+suma
					Escribir suma
					num=num+1 //el numero ahora funciona de contador
				Fin Mientras
				Escribir "La suma es: ", suma
			Caso 3:
				Escribir "Escogi? la opci?n 3"
				num=1
				Repetir
					suma=num+suma
					Escribir suma
					num=num+1 //el numero ahora funciona de contador
				Hasta Que suma==5050
				Escribir "La suma es: ", suma
			De Otro Modo:
				Escribir "?Desea Salir?"
				Escribir "[1] S?"
				Escribir "[2] No"
				Leer confirmacion
		Fin Segun
	Hasta Que confirmacion==1
FinAlgoritmo
