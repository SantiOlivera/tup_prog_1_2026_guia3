Proceso DiscJockey
	Definir nom,nomMayor,nomMenor Como Caracter;
	Definir min,seg,h,mayor,menor,tiempoCancion,tiempoTotal Como Entero;
	Escribir 'Ingrese la lista de canciones';
	Escribir 'Nombre:';
	Leer nom;
	Escribir 'Minutos:';
	Leer min;
	Escribir 'Segundos:';
	Leer seg;
	mayor <- 0;
	menor <- 99999;
	tiempoTotal <- 0;
	tiempoCancion <- (min*60)+seg;
	tiempoTotal <- tiempoTotal+tiempoCancion;
	// 74min equivalen a 4440 segundos
	Mientras (tiempoTotal<=4440) Hacer
		Si (tiempoCancion>mayor) Entonces
			mayor <- tiempoCancion;
			nomMayor <- nom;
		FinSi
		Si (tiempoCancion<menor) Entonces
			menor <- tiempoCancion;
			nomMenor <- nom;
		FinSi
		Escribir 'Nombre:';
		Leer nom;
		Escribir 'Minutos:';
		Leer min;
		Escribir 'Segundos:';
		Leer seg;
		tiempoCancion <- (min*60)+seg;
		tiempoTotal <- tiempoTotal+tiempoCancion;
	FinMientras
	h <- trunc(tiempoTotal/3600);
	tiempoTotal <- tiempoTotal MOD 3600;
	min <- trunc(tiempoTotal/60);
	seg <- trunc(tiempoTotal MOD 60);
	Escribir 'Tiempo total de las canciones: ',h,':',min,':',seg;
	Escribir 'La cancion con mayor duracion fue: ',nomMayor,' con ',trunc(mayor/60),'min';
	Escribir 'La cancion con menor duracion fue: ',nomMenor,' con ',trunc(menor/60),'min';
FinProceso
