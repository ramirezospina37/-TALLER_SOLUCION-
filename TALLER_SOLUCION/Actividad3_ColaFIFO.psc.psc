Algoritmo SimuladorColaFIFO
	Definir cola Como Cadena;
	Definir inicio, final, tamanio, operacion, i Como Entero;
	Definir solicitud Como Cadena;
	Definir continuar Como Caracter;
	
	Dimension cola[11];
	inicio <- 1;
	final <- 0;
	tamanio <- 0;
	continuar <- "S";
	
	Escribir "??????????????????????????????????????";
	Escribir "?   SIMULADOR DE COLA FIFO - BANCO   ?";
	Escribir "?   First In, First Out              ?";
	Escribir "??????????????????????????????????????";
	Escribir "";
	
	Mientras continuar = "S" O continuar = "s" Hacer
		Escribir "";
		Escribir "??? OPCIONES ???";
		Escribir "[1] Enqueue (Ingresar solicitud)";
		Escribir "[2] Dequeue (Atender solicitud)";
		Escribir "[3] Ver estado de la cola";
		Escribir "[4] Salir";
		Escribir "";
		Escribir "Selecciona una opci�n:";
		Leer operacion;
		
		Segun operacion Hacer
			Caso 1:
				Si tamanio < 10 Entonces
					final <- final + 1;
					Si final > 10 Entonces
						final <- 1;
					FinSi;
					Escribir "Ingresa descripci�n de la solicitud (ej: Dep�sito, Retiro):";
					Leer solicitud;
					cola[final] <- solicitud;
					tamanio <- tamanio + 1;
					Escribir "? Solicitud agregada a la cola";
					Escribir "  Posici�n: ", final;
					Escribir "  Total en cola: ", tamanio;
				Sino
					Escribir "? ERROR: Cola llena.";
				FinSi;
			Caso 2:
				Si tamanio > 0 Entonces
					Escribir "";
					Escribir "Atendiendo solicitud...";
					Escribir "? Tipo: ", cola[inicio];
					cola[inicio] <- "";
					inicio <- inicio + 1;
					Si inicio > 10 Entonces
						inicio <- 1;
					FinSi;
					tamanio <- tamanio - 1;
					Escribir "? Solicitud completada";
					Escribir "Total en cola: ", tamanio;
				Sino
					Escribir "? ERROR: Cola vac�a.";
				FinSi;
			Caso 3:
				Escribir "";
				Si tamanio > 0 Entonces
					Escribir "Estado actual de la cola:";
					Escribir "???????????????????????";
					Escribir "Total de solicitudes: ", tamanio;
					Escribir "Pr�xima a atender: ", cola[inicio];
					Escribir "";
					Escribir "Orden de atenci�n:";
					Para i <- inicio Hasta final Con Paso 1 Hacer
						Si cola[i] <> "" Entonces
							Escribir "  ", i, ". ", cola[i];
						FinSi;
					FinPara;
				Sino
					Escribir "La cola est� vac�a";
				FinSi;
			Caso 4:
				Escribir "";
				Escribir "Gracias por usar el simulador.";
				continuar <- "N";
			De Otro Modo:
				Escribir "? Opci�n inv�lida";
		FinSegun;
	FinMientras;
FinAlgoritmo
