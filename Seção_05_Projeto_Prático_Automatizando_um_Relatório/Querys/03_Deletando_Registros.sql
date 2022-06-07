-- Sincronizando com registros deletados
CREATE OR REPLACE FUNCTION delete_locacao()
RETURNS TRIGGER AS
$$
BEGIN

DELETE FROM
	relatorio_locadora
WHERE
	idlocacao = OLD.idlocacao;

COPY
	relatorio_locadora
TO
	'D:\WorkSpace\Github\SQL_e_Banco_de_Dados_para_DataScience_sem_mist-rios\relatorio_locadora.csv'
CSV HEADER;

RETURN OLD;
END;
$$
LANGUAGE PLPGSQL;


-- Criando a trigger
CREATE TRIGGER
		delete_reg
	BEFORE DELETE ON
		locacao
	FOR EACH ROW
	EXECUTE PROCEDURE
		delete_locacao();
		
-- Selecionando dados
SELECT
	*
FROM
	locacao;

SELECT
	*
FROM
	relatorio_locadora;

-- Deletando registro
DELETE FROM
	locacao
WHERE
	idlocacao = 1;
