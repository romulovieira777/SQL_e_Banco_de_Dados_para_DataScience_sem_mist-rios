-- Moda
SELECT
	MODE() WITHIN GROUP(ORDER BY qtd) AS "Moda"
FROM
	maquinas;


SELECT
	maquina
  , MODE() WITHIN GROUP(ORDER BY qtd) AS "Moda"
FROM
	maquinas
GROUP BY
	maquina;


SELECT
	*
FROM
	maquinas;


SELECT
	COUNT(qtd) 										AS "Quantidade"
  , SUM(qtd) 										AS "Total"
  , ROUND(AVG(qtd)) 								AS "Média"
  , MAX(qtd) 										AS "Máximo"
  , MIN(qtd) 										AS "Mínimo"
  , MAX(qtd) - MIN(qtd) 							AS "Amplitude Total"
  , ROUND(VAR_POP(qtd)) 							AS "Variância"
  , ROUND(STDDEV_POP(qtd)) 							AS "Desvio Padrão"
  , ROUND(MEDIAN(qtd)) 								AS "Mediana"
  , ROUND((STDDEV_POP(qtd) / AVG(qtd)) * 100, 2)  	AS "Coeficiente de Variação"
  , MODE() WITHIN GROUP(ORDER BY qtd) 				AS "Moda"
FROM
	maquinas
GROUP BY
	maquina
ORDER BY
	1;