-- Filtros de grupo

-- Filtros baseados em valores numericos
SELECT
	nome
  , departamento
  , salario
FROM
	funcionarios
WHERE
	salario > 100000;

-- Filtros baseados em strings
SELECT
	nome
  , departamento
  , salario
FROM
	funcionarios
WHERE
	departamento = 'Ferramentas';

-- O filtro é case sensitive
SELECT
	nome
  , departamento
  , salario
FROM
	funcionarios
WHERE
	departamento = 'FERRAMENTAS';
	
-- Filtros baseados em multiplos tipos e colunas - considerar or e and
SELECT
	nome
  , departamento
  , salario
FROM
	funcionarios
WHERE
	departamento = 'Ferramentas' 
AND
	salario > 100000;
	
-- Filtro baseado em um unico tipo e coluna - atencao para a regra do AND e OR - em relacionamentos 1 x 1
-- o filtro and tratando de uma unica coluna sempre dara falso
SELECT
	nome
  , departamento
  , salario
FROM
	funcionarios
WHERE
	departamento = 'Ferramentas'
AND
	departamento = 'Books';

-- Filtros baseados em padrao de caracteres
SELECT
	departamento
  , SUM(salario) AS "Total"
FROM
	funcionarios
WHERE
	departamento LIKE 'B%'
GROUP BY
	departamento;

-- Filtros baseados empadrao de caracteres com mais letras
SELECT
	departamento
  , SUM(salario) AS "Total"
FROM
	funcionarios
WHERE
	departamento LIKE 'Be%'
GROUP BY
	departamento;

-- Utilizando o caracter coringa no meio da palavra
SELECT
	departamento
  , SUM(salario) AS "Total"
FROM
	funcionarios
WHERE
	departamento LIKE 'B%s'
GROUP BY
	departamento;

-- Filtros para agrupamento pelo salario
-- Colunas não agregadas - WHERE
-- Colunas agregadas HAVING
SELECT
	departamento
  , SUM(salario) AS "Total"
FROM
	funcionarios
WHERE
	departamento LIKE 'B%'
GROUP BY
	departamento
HAVING
	SUM(salario) > 4000000;
