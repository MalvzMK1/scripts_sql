SELECT * FROM tbl_filme;
SELECT * FROM tbl_genero;
SELECT * FROM tbl_filme_genero;
SELECT * FROM tbl_classificacao;

-- Relacionamento com INNER JOIN
SELECT tbl_filme.nome AS nome_filme, tbl_filme.sinopse, tbl_filme.data_lancamento, tbl_genero.nome AS nome_genero FROM tbl_filme
	INNER JOIN tbl_filme_genero
		ON tbl_filme_genero.id_filme = tbl_filme.id
	INNER JOIN tbl_genero
		ON tbl_genero.id = tbl_filme_genero.id_genero
	ORDER BY tbl_filme.nome ASC;
        
-- Relacionamento no WHERE
SELECT tbl_filme.nome AS nome_filme, tbl_filme.sinopse, tbl_filme.data_lancamento, tbl_genero.nome AS nome_genero
	FROM tbl_filme, tbl_genero, tbl_filme_genero
	WHERE tbl_filme.id = tbl_filme_genero.id_filme AND
		  tbl_genero.id = tbl_filme_genero.id_genero;