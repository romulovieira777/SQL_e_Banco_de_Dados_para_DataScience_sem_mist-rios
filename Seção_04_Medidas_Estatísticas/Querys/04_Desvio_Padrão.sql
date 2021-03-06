-- Desvio padrão e variância
SELECT
  	maquina
  , ROUND(AVG(qtd), 2) 			    AS Média
  , MAX(qtd) 				      	    AS Máximo
  , MIN(qtd) 				          	AS Mínimo
  , MAX(qtd) - MIN(qtd) 		    AS Amplitude
  , ROUND(STDDEV_POP(qtd), 2) 	AS Desvio_Padarão
  , ROUND(VAR_POP(qtd), 2) 	  	AS Variância
FROM
	maquinaS
GROUP BY
	maquina
ORDER BY
	4 DESC;
