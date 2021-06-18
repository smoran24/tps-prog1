//MORÁN, SEBASTIÁN
//TP5_EJERCICIO3
//3. Implemente un programa con subprogramas que, leyendo el nombre de tres alumnos y la nota obtenida por cada uno en una asignatura, 
//muestre por pantalla la media de las notas.

SubProceso pedirDatos(N, arreglo Por Referencia)
	Definir nombreAlumno como cadena
	Definir notaAlumno Como Entero
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del alumno ", i+1, ":"
		Leer nombreAlumno
		Hacer
			Escribir "Ingrese su nota en la materia:"
			Leer notaAlumno
		Mientras Que (notaAlumno<1 o notaAlumno>10)
		arreglo[i]=notaAlumno
	Fin Para
FinSubProceso

Funcion resultado<-promediarNotas(N, arreglo)
	Definir resultado Como Real
	Definir sumatoria Como Entero
	sumatoria=0
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		sumatoria=sumatoria+arreglo[i]
	Fin Para
	resultado=sumatoria/N
FinFuncion

Algoritmo Media_De_Notas
	Definir promedio como real
	Definir CANTALUMNOS Como Entero
	CANTALUMNOS=3
	Dimension arregloNotasAlumnos[CANTALUMNOS]
	pedirDatos(CANTALUMNOS, arregloNotasAlumnos)
	promedio=promediarNotas(CANTALUMNOS, arregloNotasAlumnos)
	Escribir "El promedio de las notas es de: ", promedio
FinAlgoritmo
