Algoritmo BusquedaLineal
	Definir registros Como Entero
	Definir i, meta, comparaciones Como Entero
	Definir encontrado Como Logico
	
	Dimension registros[8]
	registros[1] <- 1002
	registros[2] <- 1045
	registros[3] <- 2098
	registros[4] <- 3301
	registros[5] <- 3311
	registros[6] <- 4005
	registros[7] <- 5020
	registros[8] <- 6081
	
	encontrado <- Falso;
	comparaciones <- 0;
	i=9
	
	Escribir "=== B�SQUEDA LINEAL - O(n) ===";
	Escribir "Ingresa el registro a buscar:";
	Leer meta;
	
	Para i <- 1 Hasta 8 Con Paso 1 Hacer
		comparaciones <- comparaciones + 1;
		Escribir "Comparaci�n ", comparaciones, ": registros[", i, "] = ", registros[i];
		
		Si registros[i] = meta Entonces
			Escribir "";
			Escribir "? ENCONTRADO en posici�n ", i;
			Escribir "Total de comparaciones: ", comparaciones;
			encontrado <- Verdadero;
			
		FinSi;
	FinPara;
	
	Si encontrado = Falso Entonces
		Escribir "";
		Escribir "? NO ENCONTRADO";
		Escribir "Total de comparaciones: ", comparaciones;
	FinSi;
FinAlgoritmo