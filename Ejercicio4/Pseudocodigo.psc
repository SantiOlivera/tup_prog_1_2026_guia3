Proceso SiEsPrimo
	Definir num, i Como Entero;
	Escribir 'Ingrese un valor entero';
	Leer num;
	i <- 2;
	Mientras (num % i <> 0) Hacer
		i = i + 1;
	FinMientras
	Si (num == i) Entonces
		Escribir num," Es primo";
	SiNo
		Escribir num," No es primo";
	FinSi
FinProceso
