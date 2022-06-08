-- Reformatando Strings

-- Listando
SELECT
	departamento
FROM
	funcionarios;


-- Distinct
SELECT
	DISTINCT(departamento) AS "Departamento"
FROM
	funcionarios;


-- Upper case
SELECT
	DISTINCT(UPPER(departamento)) AS "Departamento"
FROM
	funcionarios;


-- Lower case
SELECT
	DISTINCT(LOWER(departamento)) AS "Departamento"
FROM
	funcionarios;


-- Concatenando strings
SELECT
	cargo || ' - ' || departamento
FROM
	funcionarios;


SELECT
	UPPER(cargo || ' - ' || departamento) AS "Cargo Completo"
FROM
	funcionarios;


-- Remover espacos
SELECT '        UNIDADOS    ';


-- Contando caracteres
SELECT LENGTH('    UNIDADOS    ');


-- Aplicando TRIM
SELECT TRIM('    UNIDADOS    ');

SELECT LENGTH(TRIM('    UNIDADOS    '));


-- Desafio - Criar uma coluna ao lado da coluna cargo que diga se a pessoa é assistente ou não
SELECT
	nome
 , (cargo LIKE '%Assistent%') AS "Assistente"
FROM
	funcionarios;


SELECT
	nome
  , CASE
  		WHEN (cargo LIKE '%Assistent%') = True THEN 1
		ELSE 0
	END AS "Assistente"
FROM
	funcionarios;
