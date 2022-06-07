-- Utilizando o Case
SELECT
	nome
  , sexo
FROM
	funcionarios;


SELECT
	nome
  , cargo
  , CASE
  		WHEN cargo = 'Financial Advisor' THEN 'Condição 01'
		WHEN cargo = 'Structural Engineer' THEN 'Condição 02'
		WHEN cargo = 'Executive Secretary' THEN 'Condição 03'
		WHEN cargo = 'Sales Associative' THEN 'Condição 04'
		ELSE 'Outras Condições'
	END AS "Condicoes"
FROM
	funcionarios;


SELECT
	nome
  , CASE
  		WHEN sexo = 'Masculino' THEN 'M'
		ELSE 'F'
	END AS "Sexo"
FROM
	funcionarios;


-- Utilizando valores booleanos
SELECT
	nome
  , cargo
  , (sexo = 'Masculino') AS "Masculino"
  , (sexo = 'Feminino')  AS "Feminino"
FROM
	funcionarios;


-- Mesclando as tecnicas
SELECT
	nome
  , cargo
  , CASE
  		WHEN (sexo = 'Masculino') = true THEN 1
		ELSE 0
	END AS "Masculino"
  , CASE
  		WHEN (sexo = 'Feminino') = true THEN 1
		ELSE 0
	END AS "Feminino"
FROM
	funcionarios;
