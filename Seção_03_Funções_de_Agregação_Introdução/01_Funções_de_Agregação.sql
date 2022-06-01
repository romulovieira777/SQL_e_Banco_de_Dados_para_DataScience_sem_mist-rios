-- Funções de Agregação

-- Query Simples
SELECT
	*
FROM
	funcionarios;

SELECT
	*
FROM
	departamentos;

-- Contando o número de ocorrências
SELECT
	COUNT(*)
FROM
	funcionarios;

SELECT
	COUNT(*)
FROM
	departamentos;
	
SELECT
	COUNT(*)
FROM
	localizacao;


-- Agrupando por sexo com group by
SELECT
	COUNT(*)
FROM
	funcionarios
GROUP BY
	sexo;


-- Colocando o nome da coluna
SELECT
	sexo
  , COUNT(*) AS Quantidade
FROM
	funcionarios
GROUP BY
	sexo;


-- Mostrando o sexo de funcionarios em cada departamento
SELECT
	departamento
  , COUNT(*)
FROM
	funcionarios
GROUP BY
	departamento;


-- Exibindo o máximo de salários
SELECT
	MAX(salario) AS "Salário_Máximo"
FROM
	funcionarios;


-- Exibindo o mínimo de salário
SELECT
	MIN(salario) AS "Salário_Mínimo"
FROM
	funcionarios;


-- Exibindo o máximo e o mínimo juntos
SELECT
	MAX(salario) AS Salario_Maximo
  , MIN(salario) AS Salario_Minino
FROM
	funcionarios;


-- Exibindo o máximo e o mínimo de cada departamento
SELECT
	departamento
  , MIN(salario) AS Salario_Minimo
  , MAX(salario) AS Salario_Maximo
FROM
	funcionarios
GROUP BY
	departamento;


-- eXIBINDO O MÁXIMO E O MÍNIMO POR SEXO
SELECT
	sexo
  , MIN(salario) AS Salario_Minimo
  , MAX(salario) AS Salario_Maximo
FROM
	funcionarios
GROUP BY
	sexo;