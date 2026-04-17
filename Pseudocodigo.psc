Proceso Tornillos
	Definir codigo,cantProdFallas,cantLotesPro,menorCantF,mayorCantF,totalFallas,menor,mayor,i Como Entero;
	Definir medida,medidaEspe,mayorErrorA,porcentaje Como Real;
	Escribir 'Ingrese el codigo';
	Leer codigo;
	cantProdFallas <- 0;
	mayorErrorA <- 0;
	cantLotesPro <- 0;
	totalFallas <- 0;
	menor <- 9999;
	mayor <- 0;
	Mientras (codigo<>0) Hacer
		Escribir 'Ingrese la medida esperada';
		Leer medidaEspe;
		Escribir 'Ingrese las medidas de los 10 elementos en cm';
		Para i<-1 Hasta 10 Hacer
			Leer medida;
			Si medida>(medidaEspe/10) Entonces
				cantProdFallas <- cantProdFallas+1;
				Si medida>mayorErrorA Entonces
					mayorErrorA <- medida;
				FinSi
			FinSi
		FinPara
		Escribir 'El mayor error absoluto fue el tornillo de ',mayorErrorA,'cm';
		Escribir 'El porcentaje de productos con fallas es del ',(cantProdFallas*100)/10,'%';
		cantLotesPro <- cantLotesPro+1;
		totalFallas <- totalFallas+cantProdFallas;
		Si cantProdFallas<menor Entonces
			menor <- cantProdFallas;
			menorCantF <- codigo;
		FinSi
		Si cantProdFallas>mayor Entonces
			mayor <- cantProdFallas;
			mayorCantF <- codigo;
		FinSi
		Escribir 'Ingrese el codigo';
		Leer codigo;
	FinMientras
	porcentaje <- trunc((totalFallas*100)/(cantLotesPro*10));
	Escribir 'Cantidad de lotes procesados: ',cantLotesPro;
	Escribir 'El porcentaje total de fallas fue del ',porcentaje,'%';
	Escribir 'Lote con menor cantidad de fallas: ',menorCantF,'(',menor,')';
	Escribir 'Lote con mayor cantidad de fallas: ',mayorCantF,'(',mayor,')';
FinProceso
