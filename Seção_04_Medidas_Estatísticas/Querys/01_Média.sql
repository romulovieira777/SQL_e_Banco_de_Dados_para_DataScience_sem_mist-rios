-- Estatísticas

-- Mostrando uma quantidade limitada de linhas
SELECT
	*
FROM
	funcionarios
LIMIT 10

-- Qual o gasto total de salário pago pela empresa?
SELECT
	SUM(salario) AS Total_Salario
FROM
	funcionarios;

-- Qual o montante total que cada departamento recebe de salário?
SELECT
	departamento
  , SUM(salario) AS Total_Salario
FROM
	funcionarios
GROUP BY
	departamento;
-- Por departamento, qual o total e a média paga para os funcionários?
SELECT
	departamento
  , SUM(salario) AS Total_Salario
  , AVG(salario) AS Media_Salarial
FROM
	funcionarios
GROUP BY
	departamento;

-- Ordenação
SELECT
	departamento
  , SUM(salario) AS "Salário Total"
  , AVG(salario) AS "Média Salarial"
FROM
	funcionarios
GROUP BY
	departamento
ORDER BY
	3;

SELECT
	departamento
  , SUM (salario) AS "Salário Total"
  , AVG(salario)  AS "Média Salarial"
FROM
	funcionarios
GROUP BY
	departamento
ORDER BY
	3 ASC;

SELECT
	departamento
  , SUM(salario) AS "Salário Total"
  , AVG(salario) AS "Média Salarial"
FROM
	funcionarios
GROUP BY
	departamento
ORDER BY
	3 DESC;


