Algoritmo bomba_para_maquina
	//Defino las variables:
	Definir tipoBomba Como Entero
	//Instrucciones de entrada:
	Escribir "Bienvenido. Ingrese el tipo de bomba para la máquina:"
	Escribir "1. Bomba de agua"
	Escribir "2. Bomba de gasolina"
	Escribir "3. Bomba de hormigón"
	Escribir "4. Bomba de pasta alimenticia"
	Leer tipoBomba
	//Instrucciones de salida:
	Segun tipoBomba Hacer
	0:
		Escribir "No hay establecido un valor definido para el tipo de bomba"
	1:
		Escribir "La bomba es una bomba de agua"
	2:
		Escribir "La bomba es una bomba de gasolina"
	3:
		Escribir "La bomba es una bomba de hormigón"
	4:
		Escribir "La bomba es una bomba de pasta alimenticia"
	De Otro Modo:
		Escribir "No existe un valor válido para tipo de bomba"
Fin Segun
FinAlgoritmo
