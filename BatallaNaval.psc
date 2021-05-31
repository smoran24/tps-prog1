Algoritmo batallaNaval
	//Autores: MORÁN y MACHINEA
	Dimension tableroBarcosJ1(5, 5)
	Dimension tableroAtaquesJ1(5, 5)
	Definir ronda, ganador, puntosJ1, puntosJ2 Como Entero
	Definir nomJ1 Como Cadena
	
	Para f<-0 hasta 4 con paso 1 hacer ///inicializa los tableros del jugador 1
		Para c<-0 hasta 4 con paso 1 hacer
			tableroBarcosJ1(f,c)='-'
			tableroAtaquesJ1(f,c)='-'
		FinPara
	FinPara
	
	ronda=1
	ganador=0
	Escribir "Bienvenido al juego de la Batalla Naval"
	Escribir "El modo de juego es Jugador vs COM"
	Escribir "Ingrese el nombre del jugador 1:"
	Leer nomJ1
	
	///PROGRAMA PRINCIPAL QUE PIDE LAS JUGADAS DE AMBOS. DENTRO PEDIRÁ JUGADAS, MOSTRARÁ TABLEROS y COMPROBARÁ EL GANADOR
	Hacer
		Escribir "[RONDA ", ronda, "]"
		Si (ronda==1) Entonces ///UBICAR BARCOS DE TRES TIPOS (LLAMANDO A JUGADA())
			Escribir "[Turno del jugador 1: ", nomJ1, "]"
			
			Escribir "[Turno del jugador COM]"
			
		SiNo /// SINO LE TOCA A J1 ATACAR, LUEGO ATACA COM
			Escribir "[Turno del jugador 1: ", nomJ1, "]"
			
			Escribir "[Turno del jugador COM]"
		Finsi
		
		
		
		ronda=ronda+1
	Hasta Que (ganador<>0 o ronda==21)
	
	Escribir "[JUEGO TERMINADO]"
	Si (ronda==21) Entonces
		Escribir "Se agotaron las rondas"
	FinSi
	Si (ganador==1)
		Escribir "El ganador fue: ", nomJ1
	SiNo
		Si (ganador==2) Entonces
			Escribir "El ganador fue COM"
		SiNo
			Escribir "Hubo un empate"
		Finsi
	Finsi
	
FinAlgoritmo
