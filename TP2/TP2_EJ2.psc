Algoritmo bomba_para_maquina2
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
	Si tipoBomba==0 Entonces
		Escribir "No hay establecido un valor definido para el tipo de bomba"
	SiNo
		Si tipoBomba==1 Entonces
			Escribir "La bomba es una bomba de agua"
		SiNo
			Si tipoBomba==2 Entonces
				Escribir "La bomba es una bomba de gasolina"
			SiNo
				Si tipoBomba==3 Entonces
					Escribir "La bomba es una bomba de hormigón"
				SiNo
					Si tipoBomba==4 Entonces
						Escribir "La bomba es una bomba de pasta alimenticia"
					SiNo
						Escribir "No existe un valor válido para tipo de bomba"
					FinSi
				FinSi
			FinSi
		FinSi
	Fin Si
FinAlgoritmo