Proceso Loteria
	Definir promedio,cantImpares,mayor,menor,cantPares,num,i Como Entero;
	Escribir 'Ingrese los 20 numeros de la loteria en orden';
	cantImpares <- 0;
	cantPares <- 0;
	mayor <- 0;
	menor <- 10000;
	Para i<-1 Hasta 20 Hacer
		Leer num;
		Si (num>mayor) Entonces
			mayor <- num;
		FinSi
		Si (num<menor) Entonces
			menor <- num;
		FinSi
		Si (num MOD 2==0) Entonces
			cantPares <- cantPares+1;
		SiNo
			cantImpares <- cantImpares+1;
		FinSi
	FinPara
	promedio <- (cantImpares*100)/20;
	Escribir 'Lo datos de la loteria son';
	Escribir 'Promedio de impares: %',promedio;
	Escribir 'Mayor: ',mayor;
	Escribir 'Menor: ',menor;
	Escribir 'Cantidad de pares: ',cantPares;
FinProceso
