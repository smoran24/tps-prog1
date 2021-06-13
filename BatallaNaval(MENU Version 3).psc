//Autores: MORÁN y MACHINEA

SubProceso mostrarReglas()
	Escribir "[REGLAS]"
	Escribir ">El modo de juego es Jugador vs COM"
	Escribir ">El máximo es de 20 rondas"
	Escribir ">El ganador es quien logra hundir la flota rival"
	Escribir ">O quien termine el juego con más puntos"
	Escribir ">BARCO SIMPLE: Vale 50 puntos"
	Escribir ">BARCO DOBLE: Vale 100 puntos"
	Escribir ">TOTAL: 500 puntos"
FinSubProceso

SubProceso iniciarTablero(tablero por referencia, tamanioFila, tamanioColumna) //inicializa tablero con el char '-'
	Definir f, c como entero
	Para f<-0 hasta tamanioFila-1 con paso 1 hacer
		Para c<-0 hasta tamanioColumna-1 con paso 1 hacer
			tablero[f,c]<-"-"
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarTablero(tablero por referencia, tamanioFila, tamanioColumna) //muestra tablero
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

Funcion conversionI<-convertirLetraANumero(jugadaI) //convierte caracteres a enteros para la jugada por filas
	Definir conversionI como entero
	Segun jugadaI 
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
FinFuncion

Funcion puntaje<-obtenerPuntos(tablero, fila, columna, puntaje por referencia) //suma y retorna el puntaje según la jugada recibida
	Segun tablero[fila, columna]
		Caso "X":
			Escribir "--JUGADA REPETIDA--"
		Caso "1": //caso barco simple
			Escribir "--HUNDIDO--"
			puntaje=puntaje+50
		Caso "2": //caso barco doble
			Escribir "--AVERIADO--"
			puntaje=puntaje+50
		De Otro Modo:
			Escribir "--AGUA--"
	FinSegun
FinSubProceso

SubProceso jugada(tablero por referencia, jugadaI, jugadaJ, simbolo, elecPos) //"imprime" el simbolo correspondiente de los barcos en tablero recibido
	Segun simbolo Hacer
		Caso "2": //caso barco doble
			Si elecPos==1 Entonces //si es horizontal
				tablero[jugadaI,jugadaJ]=simbolo
				tablero[jugadaI,jugadaJ+1]=simbolo
			SiNo
				Si elecPos==2 Entonces//si es vertical
					tablero[jugadaI,jugadaJ]=simbolo
					tablero[jugadaI+1,jugadaJ]=simbolo
				Finsi
			FinSi
		De Otro Modo: //si es un barco simple (simbolo "1") o misil atacante (simbolo "X"), simplemente ubicará el simbolo en su lugar
			tablero[jugadaI,jugadaJ]=simbolo
	Fin Segun
FinSubProceso

Funcion ganador<-comprobarGanador(rondas, puntajeJ1 por referencia, puntajeCOM por referencia) ///retorna 1 si ganó J1, vale 2 si ganó COM
	Definir ganador como entero 
	Escribir "[Puntaje Jugador 1]: ", puntajeJ1
	Escribir "[Puntaje COM]: ", puntajeCOM
	Si (puntajeJ1==500) Entonces
		ganador=1
	SiNo
		Si (puntajeCOM==500) Entonces
			ganador=2
		FinSi
	Finsi
	Si (puntajeJ1>puntajeJ2 y rondas==20) Entonces
		ganador=1
	SiNo
		Si (puntajeJ2>puntajeJ1 y rondas==20) Entonces
			ganador=2
		FinSi
	Finsi
FinFuncion


Algoritmo batallaNaval
	Dimension tableroJ1[5, 5]
	Dimension tableroAtaquesJ1[5, 5]
	Dimension tableroCOM[5, 5]
	Definir jugadaFJ1, jugadaCJ1, jugadaFCOM, jugadaCCOM, ronda, invocarGanador, puntosJ1, puntosCOM, elecPos, elecPosCOM Como Entero
	Definir jugadaLetra Como Caracter
	Definir nomJ1 Como Cadena
	Definir eleccionMenu como entero
	
	iniciarTablero(tableroJ1, 5, 5)
	iniciarTablero(tableroAtaquesJ1, 5, 5)
	iniciarTablero(tableroCOM, 5, 5)
	
	Hacer
		Escribir " "
		Escribir "Bienvenido al juego de la Mini Batalla Naval"
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
				puntosJ1=0
				puntosCOM=0
				Hacer //PROGRAMA PRINCIPAL QUE PIDE LAS JUGADAS DE AMBOS. DENTRO PEDIRÁ JUGADAS, MOSTRARÁ TABLEROS y COMPROBARÁ EL GANADOR
					Escribir "------------------------------------------------------------------------------------------------"
					Escribir "[RONDA ", ronda, "]"
					Si (ronda==1) Entonces //ronda de entrada para ubicar barcos
						Escribir "[Turno del jugador 1: ", nomJ1, "]"
						mostrarTablero(tableroJ1, 5, 5) //solo muestra el tablero de los barcos del J1
						
						Para i<-0 hasta 3 hacer //ubica 4 barcos simples
							Escribir "Ubique el Barco Simple ", i+1, ":"
							Hacer
								Escribir "[Ingrese coordenada Letra]"
								Leer jugadaLetra
								jugadaLetra=Mayusculas(jugadaLetra)
							Mientras que (jugadaLetra<>"A" y jugadaLetra<>"B" y jugadaLetra<>"C" y jugadaLetra<>"D" y jugadaLetra<>"E")
							jugadaFJ1=convertirLetraANumero(jugadaLetra)
							Hacer
								Escribir "[Ingrese coordenada Num.]"
								Leer jugadaCJ1
							Mientras que (jugadaCJ1<1 o jugadaCJ1>5 o (tableroJ1[jugadaFJ1, jugadaCJ1-1]=="1")) //evita que se vaya del tablero, tambien verifica que no pise otro barco simple
							jugada(tableroJ1, jugadaFJ1, jugadaCJ1-1, "1", 0)
							mostrarTablero(tableroJ1, 5, 5)
						FinPara
						
						Para i<-0 hasta 2 hacer //ubica 3 barcos dobles
							Escribir "Ubique el Barco Doble ", i+1, ":"
							Hacer
								Escribir "¿Desea que esté en horizontal o vertical?"
								Escribir "1. Hor."
								Escribir "2. Ver"
								Leer elecPos
							Mientras Que (elecPos<1 o elecPos>2)
							Segun (elecPos)
								Caso 1: //CASO BARCO HORIZONTAL
									Hacer
										Escribir "[Ingrese coordenada Letra]"
										Leer jugadaLetra
										jugadaLetra=Mayusculas(jugadaLetra)
									Mientras que (jugadaLetra<>"A" y jugadaLetra<>"B" y jugadaLetra<>"C" y jugadaLetra<>"D" y jugadaLetra<>"E")
									jugadaFJ1=convertirLetraANumero(jugadaLetra)
									Hacer
										Escribir "[Ingrese coordenada Num.]"
										Leer jugadaCJ1
									Mientras que (jugadaCJ1<1 o jugadaCJ1>4 o (tableroJ1[jugadaFJ1, jugadaCJ1-1]=="1") o (tableroJ1[jugadaFJ1, jugadaCJ1]=="1") o (tableroJ1[jugadaFJ1, jugadaCJ1-1]=="2") o (tableroJ1[jugadaFJ1, jugadaCJ1]=="2")) //evita que se vaya del tablero, tambien verifica que no pise otro barco
								Caso 2: //CASO BARCO VERTICAL
									Hacer
										Escribir "[Ingrese coordenada Letra]"
										Leer jugadaLetra
										jugadaLetra=Mayusculas(jugadaLetra)
									Mientras que (jugadaLetra<>"A" y jugadaLetra<>"B" y jugadaLetra<>"C" y jugadaLetra<>"D")
									jugadaFJ1=convertirLetraANumero(jugadaLetra)
									Hacer
										Escribir "[Ingrese coordenada Num.]"
										Leer jugadaCJ1
									Mientras que (jugadaCJ1<1 o jugadaCJ1>5 o (tableroJ1[jugadaFJ1, jugadaCJ1-1]=="1") o (tableroJ1[jugadaFJ1+1, jugadaCJ1-1]=="1") o (tableroJ1[jugadaFJ1, jugadaCJ1-1]=="2") o (tableroJ1[jugadaFJ1+1, jugadaCJ1-1]=="2")) //evita que se vaya del tablero, tambien verifica que no pise otro barco
							FinSegun
							jugada(tableroJ1, jugadaFJ1, jugadaCJ1-1, "2", elecPos)
							mostrarTablero(tableroJ1, 5, 5)
						FinPara
						
						Escribir "[Turno del jugador COM]"
						Para i<-0 hasta 3 hacer //ubica 4 barcos simples
							Escribir "Ubique el Barco Simple ", i+1, ":"
							Hacer
								Escribir "[Ingrese coordenada Letra]"
								jugadaFCOM=Aleatorio(0,4)
								Escribir jugadaFCOM ///QUITAR LUEGO
								Escribir "[Ingrese coordenada Num.]"
								jugadaCCOM=Aleatorio(0,4)
								Escribir jugadaCCOM ///QUITAR LUEGO
							Mientras que (tableroCOM[jugadaFCOM, jugadaCCOM]=="1") //evita que se vaya del tablero, tambien verifica que no pise otro barco simple
							jugada(tableroCOM, jugadaFCOM, jugadaCCOM, "1", 0)
							mostrarTablero(tableroCOM, 5, 5) ///QUITAR LUEGO
						FinPara
						
						Para i<-0 hasta 2 hacer //ubica 3 barcos dobles
							Escribir "Ubique el Barco Doble ", i+1, ":"
							Escribir "¿Desea que esté en horizontal o vertical?"
							Escribir "1. Hor."
							Escribir "2. Ver"
							elecPosCOM=Aleatorio(1,2)
							Segun (elecPosCOM)
								Caso 1: //CASO BARCO HORIZONTAL
									Hacer
										Escribir "[Ingrese coordenada Letra]"
										jugadaFCOM=Aleatorio(0,4)
										Escribir jugadaFCOM ///QUITAR LUEGO
										Escribir "[Ingrese coordenada Num.]"
										jugadaCCOM=Aleatorio(0,3)
										Escribir jugadaCCOM ///QUITAR LUEGO
									Mientras que ((tableroCOM[jugadaFCOM, jugadaCCOM]=="1") o (tableroCOM[jugadaFCOM, jugadaCCOM+1]=="1") o (tableroCOM[jugadaFCOM, jugadaCCOM]=="2") o (tableroCOM[jugadaFCOM, jugadaCCOM+1]=="2")) //evita que se vaya del tablero, tambien verifica que no pise otro barco
								Caso 2: //CASO BARCO VERTICAL
									Hacer
										Escribir "[Ingrese coordenada Letra]"
										jugadaFCOM=Aleatorio(0,3)
										Escribir jugadaFCOM ///QUITAR LUEGO
										Escribir "[Ingrese coordenada Num.]"
										jugadaCCOM=Aleatorio(0,4)
										Escribir jugadaCCOM ///QUITAR LUEGO
									Mientras que ((tableroCOM[jugadaFCOM, jugadaCCOM]=="1") o (tableroCOM[jugadaFCOM+1, jugadaCCOM]=="1") o (tableroCOM[jugadaFCOM, jugadaCCOM]=="2") o (tableroCOM[jugadaFCOM+1, jugadaCCOM]=="2")) //evita que se vaya del tablero, tambien verifica que no pise otro barco
							FinSegun
							jugada(tableroCOM, jugadaFCOM, jugadaCCOM, "2", elecPosCOM)
							mostrarTablero(tableroCOM, 5, 5) ///QUITAR LUEGO
						FinPara
						///Limpiar Pantalla
						
					SiNo //rondas para atacar
						Escribir "[Turno del jugador 1: ", nomJ1, "]"
						Escribir "Tablero Ataques:"
						mostrarTablero(tableroAtaquesJ1, 5, 5)
						Escribir " "
						Escribir "Tablero Barcos:"
						mostrarTablero(tableroJ1, 5, 5)
						Escribir "Momento de atacar a COM:"
						Hacer
							Escribir "[Ingrese coordenada Letra]"
							Leer jugadaLetra
							jugadaLetra=Mayusculas(jugadaLetra)
						Mientras que (jugadaLetra<>"A" y jugadaLetra<>"B" y jugadaLetra<>"C" y jugadaLetra<>"D" y jugadaLetra<>"E")
						jugadaFJ1=convertirLetraANumero(jugadaLetra)
						Hacer
							Escribir "[Ingrese coordenada Num.]"
							Leer jugadaCJ1
						Mientras que (jugadaCJ1<1 o jugadaCJ1>5)
						jugada(tableroAtaquesJ1, jugadaFJ1, jugadaCJ1-1, "X", 0) //UBICARA LA X EN EL TABLERO ATAQUE DEL JUGADOR PARA QUE LO VEA J1
						puntosJ1=obtenerPuntos(tableroCOM, jugadaFJ1, jugadaCJ1-1, puntosJ1)
						jugada(tableroCOM, jugadaFJ1, jugadaCJ1-1, "X", 0) //UBICARA LA X EN EL TABLERO DE BARCOS DE COM
						invocarGanador=comprobarGanador(ronda, puntosJ1, puntosCOM)
						
						Escribir " "
						Escribir "[Turno del jugador COM]"
						jugadaFCOM=Aleatorio(0,4) //genera un valor aleatorio para su elección de fila
						jugadaCCOM=Aleatorio(0,4) //genera lo mismo pero para columnas
						Escribir "COM atacó en:"
						Escribir ">Fila ", jugadaFCOM+1
						Escribir ">Columna ", jugadaCCOM+1
						
						puntosCOM=obtenerPuntos(tableroJ1, jugadaFCOM, jugadaCCOM, puntosCOM)
						
						jugada(tableroJ1, jugadaFCOM, jugadaCCOM, "X", 0) //UBICARA LA X EN EL TABLERO DE BARCOS DEL JUGADOR
						invocarGanador=comprobarGanador(ronda, puntosJ1, puntosCOM)
						///Limpiar Pantalla
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
				iniciarTablero(tableroJ1, 5, 5)
				iniciarTablero(tableroAtaquesJ1, 5, 5)
				iniciarTablero(tableroCOM, 5, 5)
			Caso 2:
				mostrarReglas()
			Caso 3:
				Escribir "Gracias por jugar!"
			De Otro Modo:
				Escribir "ERROR: Eleccion no válida"
		Fin Segun
	Hasta Que (eleccionMenu==3)
FinAlgoritmo
