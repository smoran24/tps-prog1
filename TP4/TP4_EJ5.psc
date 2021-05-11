Algoritmo Ta_Te_Ti
	//Autor: MORÁN, SEBASTIÁN
	Dimension tablero[3,3] //dimensiono un arreglo bidimensional que representará el tablero de 3x3
	Definir cantJugadas, jugador, filaElegida, colElegida, jugadaCOMFila, jugadaCOMCol como entero
	Definir ganador como caracter
	cantJugadas=0
	jugador=1
	ganador="-"
	Escribir "Bienvenido al juego de Ta Te Ti"
	Escribir "Modo de juego: Jugador vs. COM"
	Para j<-0 Hasta 2 Con Paso 1 Hacer //inicializa y muestra el tablero vacío. Se necesitan dos bucles para ir recorriendo filas y columnas del arreglo
		Para i<-0 Hasta 2 Con Paso 1 Hacer
			tablero[j,i]="-"
			Escribir sin saltar tablero[j,i]
			Si i<>2
				Escribir sin saltar " | "
			FinSi
		Fin Para
		Escribir ""
	Fin Para
	
	Mientras (cantJugadas<6 y ganador=="-")
		Si (jugador==1) Entonces
			Escribir "[Turno del Jugador]"
			Hacer 
				Escribir "Elija la fila:"
				Leer filaElegida
			Hasta Que (filaElegida>0 y filaElegida<4) //verifico entrada
			Hacer 
				Escribir "Elija la columna:"
				Leer colElegida
			Hasta Que (colElegida>0 y colElegida<4) //verifico entrada
			Mientras (tablero[filaElegida-1, colElegida-1]<>"-")
				Escribir "Error: Posición ocupada"
				Hacer
					Escribir "Elija la fila:"
					Leer filaElegida
				Hasta Que (filaElegida>0 y filaElegida<4)
				Hacer
					Escribir "Elija la columna:"
					Leer colElegida
				Hasta Que (colElegida>0 y colElegida<4)
			FinMientras
			tablero[filaElegida-1, colElegida-1]="X"
			Escribir "" //salto de linea
		SiNo
			Escribir "[Turno de la COM]"
			Hacer
				jugadaCOMFila=Aleatorio(1,3) //genera un valor aleatorio para su elección de fila
				jugadaCOMCol=Aleatorio(1,3) //genera lo mismo pero para columnas
			Hasta Que (tablero[jugadaCOMFila-1, jugadaCOMCol-1]=="-") //se repite la generación de numeros hasta que haya un lugar desocupado
			Escribir "COM eligió:"
			Escribir ">Fila ", jugadaCOMFila
			Escribir ">Columna ", jugadaCOMCol
			tablero[jugadaCOMFila-1, jugadaCOMCol-1]="O"
			Escribir "" //salto de linea
		Finsi
		Si jugador==1 //cambio al jugador COM, y del COM al jugador dependiendo del turno actual
			jugador=2
		SiNo
			jugador=1
		Finsi
		cantJugadas=cantJugadas+1 //suma uno al contador de jugadas
		
		Para j<-0 Hasta 2 Con Paso 1 Hacer //muestra el tablero
			Para i<-0 Hasta 2 Con Paso 1 Hacer
				Escribir sin saltar tablero[j,i]
				Si i<>2
					Escribir sin saltar " | "
				FinSi
			Fin Para
			Escribir ""
		Fin Para
		
		Para i<-0 Hasta 2 Con Paso 1 Hacer //verifico quién ganó comparando las posiciones del tablero (viendo si coinciden filas)
			Si (tablero[i,0]==tablero[i,1] y tablero[i,1]==tablero[i,2] y tablero[i,2]<>"-")
				ganador=tablero[i,0]
			FinSi
		Fin Para
		Para j<-0 Hasta 2 Con Paso 1 Hacer //(viendo si coinciden columnas)
			Si (tablero[0,j]==tablero[1,j] y tablero[1,j]==tablero[2,j] y tablero[2,j]<>"-")
				ganador=tablero[1,0]
			FinSi
		Fin Para
		Escribir ""
		
	FinMientras
	Si ganador=="X" //muestra el ganador respectivo. Sino, muestra que hubo empate
		Escribir "El ganador es el jugador!"
	SiNo
		Si ganador=="O"
			Escribir "El ganador es COM!"
		SiNo
			Escribir "Hubo un empate"
		Finsi
	Finsi
FinAlgoritmo
