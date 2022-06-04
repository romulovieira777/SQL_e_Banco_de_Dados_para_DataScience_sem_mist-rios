-- Moda do dataset inteiro
SELECT
	qtd
  , COUNT(*) AS Moda
FROM
	maquinas
GROUP BY
	qtd
ORDER BY
	2 DESC;

-- Qual o máximo e mínimo e ampplitude de cada máquina?
SELECT
	maquina
  , MAX(qtd) 			AS Máximo
  , MIN(qtd) 			AS Mínimo
  , MAX(qtd) - MIN(qtd) AS Amplitude
FROM
	maquinas
GROUP BY
	maquina
ORDER BY
	4 DESC;

-- Acrescente a média ao relatório
SELECT
	ROUND(AVG(qtd), 2) 	AS Média
  , MAX(qtd) 			AS Máximo
  , MIN(qtd) 			AS Mínimo
  , MAX(qtd) - MIN(qtd) AS Amplitude
FROM
	maquinas
GROUP BY
	maquina
ORDER BY
	4 DESC;
