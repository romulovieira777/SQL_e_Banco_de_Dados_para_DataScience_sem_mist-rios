/*
	O Servidor de máquinas gerou im arquivo de log CSV.
	Vamos importá-lo e analisa-lo dentro do nosso banco de dados
*/

-- Importando CSV
CREATE TABLE MAQUINAS
(
	MAQUINA VARCHAR(20)
  , DIA INT
  , QTD NUMERIC(10, 2)
)

COPY MAQUINAS
FROM 'C:\Users\Romulo Vieira\Downloads\LogMaquinas.csv'
DELIMITER ','
CSV HEADER;

SELECT
	*
FROM
	maquinas;

-- Qual a metada de cada máquina?
SELECT
	maquina
  , AVG(qtd) AS Media_Qtd
FROM
	maquinas
GROUP BY
	maquina
ORDER BY
	2 DESC;

-- Arredondando
SELECT
	maquina
  , ROUND(AVG(qtd), 2) AS Media_Qtd
FROM
	maquinas
GROUP BY
	maquina
ORDER BY
	2 DESC;

-- Qual a moda das quantidade?
SELECT
	maquina
  , qtd
  , COUNT(*) AS Moda
FROM
	maquinas
GROUP BY
	maquina
  , qtd
ORDER BY
	3 DESC;

-- Qual a moda das quantidades de cada máquina?
SELECT
	maquina
  , qtd
  , COUNT(*)
FROM
	maquinas
WHERE
	maquina = 'Maquina 01'
GROUP BY
	maquina
	, qtd
ORDER BY
	3 DESC
LIMIT
	1;

SELECT
	maquina
  , qtd
  , COUNT(*)
FROM
	maquinas
WHERE
	maquina = 'Maquina 02'
GROUP BY
	maquina
	, qtd
ORDER BY
	3 DESC
LIMIT
	1;

SELECT
	maquina
  , qtd
  , COUNT(*)
FROM
	maquinas
WHERE
	maquina = 'Maquina 03'
GROUP BY
	maquina
	, qtd
ORDER BY
	3 DESC
LIMIT
	1;
