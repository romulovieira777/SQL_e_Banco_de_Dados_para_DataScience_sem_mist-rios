-- Deixando o procedimento automatico por meio de uma trigger
CREATE OR REPLACE FUNCTION atualiza_rel()
RETURNS TRIGGER AS $$
BEGIN
INSERT INTO relatorio_locadora
SELECT
	locacao.idlocacao
  , filme.nome 		AS "Filme"
  , genero.nome 	AS "Genero"
  , locacao.data 	AS "Data"
  , locacao.dias 	AS "Dias"
  , locacao.midia 	AS "Midia"
FROM
	genero
INNER JOIN
	filme
ON
	genero.idgenero = filme.id_genero
INNER JOIN
	locacao
ON
	locacao.id_filme = filme.idfilme
WHERE
	idlocacao NOT IN(SELECT idlocacao FROM relatorio_locadora);

COPY relatorio_locadora 
TO 'path'
DELIMITER ';'
CSV HEADER;

RETURN NEW;
END;
$$
LANGUAGE PLPGSQL;


-- Comando para apagar uma trigger
DROP TRIGGER tg_relatorio ON locacao;

-- Criando uma trigger
CREATE TRIGGER tg_relatorio
AFTER INSERT ON locacao
FOR EACH ROW
	EXECUTE PROCEDURE atualiza_rel();


-- Inserindo novos registros
INSERT INTO locacao VALUES(NEXTVAL('SEQ_LOCACAO'), NOW(), 100, 7, 300);
INSERT INTO locacao VALUES(NEXTVAL('SEQ_LOCACAO'), NOW(), 500, 1, 200);
INSERT INTO locacao VALUES(NEXTVAL('SEQ_LOCACAO'), NOW(), 800, 6, 500);


SELECT * FROM locacao;
SELECT * FROM relatorio_locadora;
