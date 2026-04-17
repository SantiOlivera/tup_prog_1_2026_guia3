Proceso CompraProductos
	Definir cantProd,cantTotal Como Entero;
	Definir precio,pagar Como Real;
	Escribir 'Ingrese la cantidad comprada de este producto (-1 si desea terminar la carga)';
	Leer cantProd;
	pagar <- 0;
	cantTotal <- 0;
	Mientras (cantProd<>-1) Hacer
		Escribir 'Ingrese el precio unitario del producto';
		Leer precio;
		pagar <- pagar+(cantProd*precio);
		cantTotal <- cantTotal+cantProd;
		Escribir 'Ingrese la cantidad comprada de este producto (-1 si desea terminar la carga)';
		Leer cantProd;
	FinMientras
	Escribir 'El monto a pagar por la compra es de $',pagar;
	Escribir 'La cantidad total de productos adquiridos es de: ',cantTotal;
FinProceso
