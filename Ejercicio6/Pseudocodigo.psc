Proceso NotasEvaluacion
	Definir nota,cantNotas,cantApro,cantNoApro,cantMB,cantB,cantR,cantI,suma Como Entero;
	Definir promedio Como Real;
	Escribir 'Ingrese las notas de los alumnos. Ingrese -1 cuando ya no queden mas notas por cargar';
	Leer nota;
	cantNotas <- 0;
	cantApro <- 0;
	cantNoApro <- 0;
	cantMB <- 0;
	cantB <- 0;
	cantR <- 0;
	cantI <- 0;
	suma <- 0;
	Mientras (nota<>-1) Hacer
		Si (nota>=6) Entonces
			cantApro <- cantApro+1;
			Si (nota>=8) Entonces
				cantMB <- cantMB+1;
			SiNo
				cantB <- cantB+1;
			FinSi
		SiNo
			cantNoApro <- cantNoApro+1;
			Si (nota>=4) Entonces
				cantR <- cantR+1;
			SiNo
				cantI <- cantI+1;
			FinSi
		FinSi
		suma <- suma+nota;
		cantNotas <- cantNotas+1;
		Leer nota;
	FinMientras
	promedio <- suma/cantNotas;
	Escribir 'Datos de la evaluacion';
	Escribir 'Cantidad de notas: ',cantNotas;
	Escribir 'Promedio: ',promedio;
	Escribir 'Cantidad de aprobados: ',cantApro,' / Cantidad de no aprobados: ',cantNoApro;
	Escribir 'Porcentaje de alumnos con';
	Escribir 'Muy Bueno: ',(cantMB*100)/cantNotas,'%';
	Escribir 'Bueno: ',(cantB*100)/cantNotas,'%';
	Escribir 'Regular: ',(cantR*100)/cantNotas,'%';
	Escribir 'Insuficiente: ',(cantI*100)/cantNotas,'%';
FinProceso
