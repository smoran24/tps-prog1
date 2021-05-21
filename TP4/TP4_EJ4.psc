Algoritmo Generador_Contraseña
	//Autor: SANCHEZ, JOAQUÍN
	Dimension arrayPassword[8]
	Definir digito Como Entero
	Definir contraseña como cadena
	Escribir "[Generador de Contraseñas Numéricas]"
	Escribir "Creando contraseña de 8 dígitos..."
	Para i<-0 Hasta 7 Con Paso 1 Hacer //bucle que guarda cada numero entero generado aleatoriamente en el arreglo que contendrá la contraseña
		digito=Aleatorio(0,9)
		arrayPassword[i]=digito
	Fin Para
	Para i<-0 Hasta 7 Con Paso 1 Hacer //bucle que recorre el array y construye la contraseña (cadena), donde cada digito numérico es convertido a texto para poder concatenarlos en tal cadena
		contraseña=concatenar(contraseña, convertirATexto(arrayPassword[i]))
	Fin Para
	Escribir contraseña //muestro la cadena de digitos (guardados en la cadena resultante) en una sola línea
FinAlgoritmo
