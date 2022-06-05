-- Função e análise da mediana no arquivo 02 - Função_de_Mediana.sql

/*
	Quantidade
	Total
	Media
	Maximo
	Minimo
	Amplitude
	Variância
	Desvio Padrão
	Mediana
	Coeficiente de Variância
*/

SELECT
	maquina
  , COUNT(qtd) 										AS "Quantidade"
  , SUM(qtd) 										AS "Total"
  , ROUND(AVG(qtd), 2) 								AS "Média"
  , MAX(qtd) 										AS "Máximo"
  , MIN(qtd) 										AS "Mínimo"
  , MAX(qtd) - MIN(qtd) 							AS "Amplitude Total"
  , ROUND(VAR_POP(qtd), 2) 							AS "Variância"
  , ROUND(STDDEV_POP(qtd), 2) 						AS "Desvio Padrão"
  , ROUND(MEDIAN(qtd), 2) 							AS "Mediana"
  , ROUND((STDDEV_POP(qtd) / AVG(qtd)) * 100, 2) 	AS "Coeficiente de Variação"
FROM
	maquinas
GROUP BY
	maquina
ORDER BY
	1;