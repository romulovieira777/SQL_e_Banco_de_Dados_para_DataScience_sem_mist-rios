-- Multiplos contadores
SELECT
	COUNT(*) AS "Total"
FROM
	funcionarios;


SELECT
	sexo
  , COUNT(*)
FROM
	funcionarios
WHERE
	sexo = 'Masculino'
GROUP BY
	sexo;


SELECT
	COUNT(*) AS "Quantidade Total"
  , (SELECT COUNT(*)
	 FROM
		funcionarios
	 WHERE
		sexo = 'Masculino'
	 GROUP BY
		sexo) AS "Masculino"
FROM
	funcionarios;


SELECT
	COUNT(*) AS "Quantidade Total"
  , COUNT(*) FILTER(WHERE sexo = 'Masculino')
FROM
	funcionarios;


SELECT
	COUNT(*) AS "Quantidade Total"
  ,	COUNT(*) FILTER(WHERE sexo = 'Masculino') 		AS "Masculino"
  , COUNT(*) FILTER(WHERE departamento = 'Books') 	AS "Books"
FROM
	funcionarios;


SELECT
	COUNT(*) AS "Quantidade Total"
  , COUNT(*) FILTER(WHERE sexo = 'Masculino') 		AS "Masculino"
  , COUNT(*) FILTER(WHERE departamento = 'Books')	AS "Books"
  , COUNT(*) FILTER(WHERE salario > 140000) 		AS "Salario > 140k"
FROM
	funcionarios;
