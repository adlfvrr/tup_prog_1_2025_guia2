Proceso sin_titulo
	Definir j1, j21, j2, j22, j3, j23, set1, set2, prob Como Entero;
	Definir nomb1, nomb2 Como Cadena;
	Escribir 'Ingrese nombre del jugador 1: ';
	Leer nomb1;
	Escribir 'Ingrese nombre del jugador 2: ';
	Leer nomb2;
	// SET 1
	Escribir 'Ingrese juego del jugador 1: ';
	Leer j1;
	Escribir 'Ingrese juego del jugador 2: ';
	Leer j21;
	Si j1>=4 Entonces
		Si j1>=j21+2 Entonces
			Escribir 'Ganador del set: ', nomb1;
			set1 <- 1;
		SiNo
			Si j21>=j1+2 Entonces
				Escribir 'Ganador del set: ', nomb2;
				set2 <- 1;
			SiNo
				Escribir 'No hay diferencia de 2 necesaria para ganar el set.';
				prob <- 1;
			FinSi
		FinSi
	SiNo
		Si j21>=4 Entonces
			Si j21>=j1+2 Entonces
				Escribir 'Ganador del set: ', nomb2;
				set2 <- 1;
			SiNo
				Si j1>=j21+2 Entonces
					Escribir 'Ganador del set: ', nomb1;
					set1 <- 1;
				SiNo
					Escribir 'No hay diferencia de 2 necesaria para ganar el set.';
					prob <- 1;
				FinSi
			FinSi
		SiNo
			Escribir 'La puntuacion minima necesaria para ganar un set es de 4 puntos.';
			prob <- 1;
		FinSi
	FinSi
	// SET 2
	Si prob<1 Entonces
		Escribir 'Ingrese juego del jugador 1: ';
		Leer j2;
		Escribir 'Ingrese juego del jugador 2: ';
		Leer j22;
		Si j2>=4 Entonces
			Si j2>=j22+2 Entonces
				Escribir 'Ganador del set: ', nomb1;
				Si set1==1 Entonces
					Escribir 'Ganador del partido: ', nomb1;
				SiNo
					set1 <- 1;
				FinSi
			SiNo
				Si j22>=j2+2 Entonces
					Escribir 'Ganador del set: ', nomb2;
					Si set2==1 Entonces
						Escribir 'Ganador del partido: ', nomb2;
					SiNo
						set2 <- 1;
					FinSi
				SiNo
					Escribir 'No hay diferencia de 2 necesaria para ganar el set.';
					prob <- 1;
				FinSi
			FinSi
		SiNo
			Si j22>=4 Entonces
				Si j22>=j2+2 Entonces
					Escribir 'Ganador del set: ', nomb2;
					Si set2==1 Entonces
						Escribir 'Ganador del partido: ', nomb2;
					SiNo
						set2 <- 1;
					FinSi
				SiNo
					Si j2>=j22+2 Entonces
						Escribir 'Ganador del set: ', nomb1;
						Si set1==1 Entonces
							Escribir 'Ganador del partido: ', nomb1;
						SiNo
							set1 <- 1;
						FinSi
					SiNo
						Escribir 'No hay diferencia de 2 necesaria para ganar el set.';
						prob <- 1;
					FinSi
				FinSi
			SiNo
				Escribir 'La puntuacion minima necesaria para ganar un set es de 4 puntos.';
				prob <- 1;
			FinSi
		FinSi
	FinSi
	// SET 3
	Si prob<1 Entonces
		Si set1==1 Y set2==1 Entonces
			Escribir 'Ingrese juego del jugador 1: ';
			Leer j3;
			Escribir 'Ingrese juego del jugador 2: ';
			Leer j23;
			Si j3>=4 Entonces
				Si j3>=j23+2 Entonces
					Escribir 'Ganador del partido: ', nomb1;
				SiNo
					Si j23>=j3+2 Entonces
						Escribir 'Ganador del partido: ', nomb2;
					SiNo
						Escribir 'No hay diferencia de 2 necesaria para ganar el set.';
					FinSi
				FinSi
			SiNo
				Si j23>=4 Entonces
					Si j23>=j3+2 Entonces
						Escribir 'Ganador del partido: ', nomb2;
					SiNo
						Si j3>=j23+2 Entonces
							Escribir 'Ganador del partido: ', nomb1;
						SiNo
							Escribir 'No hay diferencia de 2 necesaria para ganar el set.';
						FinSi
					FinSi
				SiNo
					Escribir 'La puntuacion minima necesaria para ganar un set es de 4 puntos.';
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso
