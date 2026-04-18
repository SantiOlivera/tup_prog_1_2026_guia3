Proceso GenerarNumerosPrimos
	Definir num1,num2,menor,mayor,i,n Como Entero;
	Escribir 'Ingrese los dos numeros limites del rango';
	Leer num1,num2;
	Si (num1<num2) Entonces
		menor <- num1;
		mayor <- num2;
	SiNo
		menor <- num2;
		mayor <- num1;
	FinSi
	Escribir 'Los numeros primos en ese rango son:';
	Para n = menor Hasta mayor Hacer
		i <- 2;
		Mientras (n % i <> 0) Hacer
			i = i + 1;
		FinMientras
		Si (n == i) Entonces
			Escribir n;
		FinSi
	FinPara
FinProceso
