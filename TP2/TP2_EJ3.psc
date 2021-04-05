Algoritmo meses_y_dias
	//Defino las variables:
	Definir numMes Como Entero
	//Instrucciones de entrada:
	Escribir "Bienvenido. Introduzca el número entre el 1 y el 12"
	Escribir "para conocer a qué mes corresponde y su cantidad de días:"
	Leer numMes
	//Instrucciones de salida:
	Segun numMes Hacer
		Caso 1:
			Escribir "1: Enero, 31 días"
		Caso 2:
			Escribir "2: Febrero, 28/29 días"
		Caso 3:
			Escribir "3: Marzo, 31 días"
		Caso 4:
			Escribir "4: Abril, 30 días"
		Caso 5:
			Escribir "5: Mayo, 31 días"
		Caso 6:
			Escribir "6: Junio, 30 días"
		Caso 7:
			Escribir "7: Julio, 31 días"
		Caso 8:
			Escribir "8: Agosto, 31 días"
		Caso 9:
			Escribir "9: Septiembre, 30 días"
		Caso 10:
			Escribir "10: Octubre, 31 días"
		Caso 11:
			Escribir "11: Noviembre, 30 días"
		Caso 12:
			Escribir "12: Diciembre, 31 días"
		De Otro Modo:
			Escribir "ERROR: No es un valor válido"
	Fin Segun
FinAlgoritmo
