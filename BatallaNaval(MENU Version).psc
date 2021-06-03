//Autores: MORÁN y MACHINEA
///completar funcion comprobarGanador() que lee tableroCOM (o tableroBarcosJ1) y suma 50 puntos por cada X que haya
///en jugada(): añadir caso del barco triple
///en jugada(): evitar que se salga del tablero tanto el barco doble como el triple
///en main: pedir barco doble y triple al jugador 1
///en main: pedir jugada random de COM cuando ataque tableroBarcosJ1
SubProceso iniciarTablero(tablero por referencia, tamanioFila, tamanioColumna)
	Definir f, c como entero
	Para f<-0 hasta tamanioFila-1 con paso 1 hacer
		Para c<-0 hasta tamanioColumna-1 con paso 1 hacer
			tablero(f,c)<-"-"
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarTablero(tablero por referencia, tamanioFila, tamanioColumna)
	Definir f, c como entero
	Para f<-0 hasta tamanioFila-1 con paso 1 hacer
		Para c<-0 hasta tamanioColumna-1 con paso 1 hacer
			Escribir sin saltar tablero(f,c)
			Si c<>tamanioColumna-1
				Escribir sin saltar " | "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso jugada(tablero por referencia, jugadaI, jugadaJ, simbolo, elecPos)
	Definir conversionI como entero
	Segun jugadaI //convierte caracteres a enteros para la jugada por filas
		Caso "A":
			conversionI=0
		Caso "B":
			conversionI=1
		Caso "C":
			conversionI=2
		Caso "D":
			conversionI=3
		Caso "E":
			conversionI=4
	FinSegun
	Segun simbolo Hacer
		Caso "3":
			
			
			
			
		Caso "2":
			Si elecPos=1 //si es horizontal
				tablero[conversionI,jugadaJ]=simbolo
				///EVITAR QUE SE SALGA DEL TABLERO CON UN IF
				tablero[conversionI,jugadaJ+1]=simbolo
			SiNo
				Si elecPos=2 //si es vertical
					tablero[conversionI,jugadaJ]=simbolo
					///IDEM
					tablero[conversionI+1,jugadaJ]=simbolo
				Finsi
			FinSi
		De Otro Modo: //si es un barco simple (simbolo "1") o misil atacante (simbolo "X"), simplemente ubicará el simbolo en su lugar
			tablero[conversionI,jugadaJ]=simbolo
	Fin Segun
FinSubProceso

Funcion ganador<-comprobarGanador(puntaje)
	Definir ganador como entero //vale 1 si ganó J1, vale 2 si ganó COM
	
FinFuncion


Algoritmo batallaNaval
	Dimension tableroBarcosJ1[5, 5]
	Dimension tableroAtaquesJ1[5, 5]
	Dimension tableroCOM[5, 5]
	Definir ronda, invocarGanador, puntosJ1, puntosJ2 Como Entero
	Definir nomJ1 Como Cadena
	Definir eleccionMenu como entero
	
	iniciarTablero(tableroBarcosJ1, 5, 5)
	iniciarTablero(tableroAtaquesJ1, 5, 5)
	iniciarTablero(tableroCOM, 5, 5)
	
	Hacer
		Escribir " "
		Escribir "Bienvenido al juego de la Batalla Naval"
		Hacer
			Escribir "[1] JUGAR"
			Escribir "[2] REGLAS"
			Escribir "[3] SALIR"
			Leer eleccionMenu
		Mientras Que (eleccionMenu<1 o eleccionMenu>3)
		Segun eleccionMenu Hacer
			Caso 1:
				Escribir "Ingrese el nombre del jugador 1:"
				Leer nomJ1
				ronda=1
				invocarGanador=0
				
				Hacer //PROGRAMA PRINCIPAL QUE PIDE LAS JUGADAS DE AMBOS. DENTRO PEDIRÁ JUGADAS, MOSTRARÁ TABLEROS y COMPROBARÁ EL GANADOR
					Escribir "[RONDA ", ronda, "]"
					Si (ronda==1) Entonces //ronda de entrada para ubicar barcos
						Escribir "[Turno del jugador 1: ", nomJ1, "]"
						mostrarTablero(tableroBarcosJ1, 5, 5) //solo muestra el tablero de los barcos
						Para i<-0 hasta 2 hacer //ubica 3 barcos simples
							Escribir "Ubique el Barco Simple ", i+1, ":"
							Hacer
								Escribir "[Ingrese coordenada Letra]"
								Leer jugadaI
								jugadaI=Mayusculas(jugadaI)
							Mientras que (jugadaI<>"A" y jugadaI<>"B" y jugadaI<>"C" y jugadaI<>"D" y jugadaI<>"E")
							Hacer
								Escribir "[Ingrese coordenada Num.]"
								Leer jugadaJ
							Mientras que (jugadaJ<1 o jugadaJ>4 o (tableroBarcosJ1[i, jugadaJ-1]=="1")) //tambien verifica que no pise otro barco simple
							jugada(tableroBarcosJ1, jugadaI, jugadaJ-1, "1", 0)
							mostrarTablero(tableroBarcosJ1, 5, 5)
						FinPara
						///PEDIR 2 BARCOS DOBLES
						///PEDIR BARCO TRIPLE
						
						Escribir "[Turno del jugador COM]"
						
						Limpiar Pantalla
					SiNo //rondas para atacar
						Escribir "[Turno del jugador 1: ", nomJ1, "]"
						Escribir "Tablero Ataques:"
						///MOSTRAR TABLERO ATAQUES J1
						Escribir " "
						Escribir "Tablero Barcos:"
						///MOSTRAR TABLERO BARCOS J1
						///PEDIR COORDENADAS
						///JUGADA(TABLEROATAQUESJ1, JUGADAI, JUGADAJ-1, "X", 0) UBICARA LA X EN EL TABLERO ATAQUE DEL JUGADOR
						///JUGADA(TABLEROCOM, JUGADAI, JUGADAJ-1, "X", 0) UBICARA LA X EN EL TABLERO DE BARCOS DE COM
						///INVOCARGANADOR=COMPROBARGANADOR(PUNTOSJ1)
						
						Escribir "[Turno del jugador COM]"
						
						///PEDIR COORDENADAS (RANDOMIZADAS)
						///JUGADA(TABLEROBARCOSJ1, JUGADAI, JUGADAJ-1, "X", 0) UBICARA LA X EN EL TABLERO DE BARCOS DEL JUGADOR
						///INVOCARGANADOR=COMPROBARGANADOR(PUNTOSJ1)
						
						Limpiar Pantalla
					Finsi
					
					
					
					ronda=ronda+1
				Hasta Que (invocarGanador<>0 o ronda==21)
				
				Escribir "[JUEGO TERMINADO]"
				Si (ronda==21) Entonces
					Escribir "Se agotaron las rondas"
				FinSi
				Si (invocarGanador==1)
					Escribir "El ganador fue: ", nomJ1
				SiNo
					Si (invocarGanador==2) Entonces
						Escribir "El ganador fue COM"
					SiNo
						Escribir "Hubo un empate"
					Finsi
				Finsi
				
				
			Caso 2:
				Escribir "[REGLAS]"
				Escribir ">El modo de juego es Jugador vs COM"
				Escribir ">Cada jugador tiene 20 turnos como máximo"
				Escribir ">El ganador es quien logra hundir la flota rival"
				Escribir ">O quien termine el juego con más puntos"
				Escribir ">BARCO SIMPLE: Vale 50 puntos"
				Escribir ">BARCO DOBLE: Vale 100 puntos"
				Escribir ">BARCO TRIPLE: Vale 150 puntos"
			Caso 3:
				Escribir "Gracias por jugar!"
			De Otro Modo:
				Escribir "ERROR: Eleccion no válida"
		Fin Segun
	Hasta Que (eleccionMenu==3)
FinAlgoritmo
