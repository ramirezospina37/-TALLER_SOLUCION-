Algoritmo Actividad4_Comparativa
	
	Definir registros Como Entero
	Definir i, meta, comparacionesLineal, comparacionesBinaria Como Entero
	Definir encontradoLineal, encontradoBinaria Como Logico
	Definir inicio, final, mitad Como Entero
	
	Dimension registros[8]
	registros[1] <- 1002
	registros[2] <- 1045
	registros[3] <- 2098
	registros[4] <- 3301
	registros[5] <- 3311
	registros[6] <- 4005
	registros[7] <- 5020
	registros[8] <- 6081
	
	Escribir "===== COMPARATIVA LINEAL vs BINARIA ====="
	Escribir "Ingrese el numero a buscar:"
	Leer meta
	
	// =========================
	// BUSQUEDA LINEAL (CORREGIDA)
	// =========================
	encontradoLineal <- Falso
	comparacionesLineal <- 0
	
	Para i <- 1 Hasta 8 Hacer
		Si encontradoLineal = Falso Entonces
			
			comparacionesLineal <- comparacionesLineal + 1
			
			Si registros[i] = meta Entonces
				encontradoLineal <- Verdadero
			FinSi
			
		FinSi
	FinPara
	
	// =========================
	// BUSQUEDA BINARIA
	// =========================
	encontradoBinaria <- Falso
	comparacionesBinaria <- 0
	inicio <- 1
	final <- 8
	
	Mientras inicio <= final Y encontradoBinaria = Falso Hacer
		mitad <- Trunc((inicio + final) / 2)
		comparacionesBinaria <- comparacionesBinaria + 1
		
		Si registros[mitad] = meta Entonces
			encontradoBinaria <- Verdadero
		Sino
			Si registros[mitad] < meta Entonces
				inicio <- mitad + 1
			Sino
				final <- mitad - 1
			FinSi
		FinSi
	FinMientras
	
	// =========================
	// RESULTADOS
	// =========================
	Escribir ""
	Escribir "===== RESULTADOS ====="
	
	Escribir "Busqueda Lineal:"
	Si encontradoLineal Entonces
		Escribir "Encontrado"
	Sino
		Escribir "No encontrado"
	FinSi
	Escribir "Comparaciones: ", comparacionesLineal
	
	Escribir ""
	
	Escribir "Busqueda Binaria:"
	Si encontradoBinaria Entonces
		Escribir "Encontrado"
	Sino
		Escribir "No encontrado"
	FinSi
	Escribir "Comparaciones: ", comparacionesBinaria
	
	Escribir ""
	Escribir "===== ANALISIS ====="
	
	Si comparacionesBinaria < comparacionesLineal Entonces
		Escribir "La busqueda binaria es mas eficiente"
	Sino
		Escribir "La busqueda lineal es mas eficiente"
	FinSi
	
FinAlgoritmo