-- Caculando a mediana
SELECT
	median(qtd) AS Mediana
FROM
	maquinas;


SELECT
	median(qtd) AS Mediana
FROM
	maquinas
WHERE
	maquina = 'Maquina 01';


SELECT
	median(qtd) AS Mediana
FROM
	maquinas
WHERE
	maquina = 'Maquina 02';


SELECT
	median(qtd) AS Mediana
FROM
	maquinas
WHERE
	maquina = 'Maquina 03';