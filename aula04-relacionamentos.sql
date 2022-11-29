SELECT * FROM tbl_filme;
SELECT * FROM tbl_genero;
SELECT * FROM tbl_filme_genero;
SELECT * FROM tbl_classificacao;

-- Relacionamento com INNER JOIN
SELECT tbl_filme.nome AS nome_filme, tbl_filme.sinopse, tbl_filme.data_lancamento, tbl_genero.nome AS nome_genero, tbl_classificacao.nome AS nome_classificacao, tbl_classificacao.classificacao FROM tbl_filme
	INNER JOIN tbl_filme_genero
		ON tbl_filme_genero.id_filme = tbl_filme.id
	INNER JOIN tbl_genero
		ON tbl_genero.id = tbl_filme_genero.id_genero
	INNER JOIN tbl_classificacao
		ON tbl_classificacao.id = tbl_filme.id_classificacao
	ORDER BY tbl_filme.nome ASC;
        
-- Relacionamento no WHERE
SELECT tbl_filme.nome AS nome_filme, tbl_filme.sinopse, tbl_filme.data_lancamento, tbl_genero.nome AS nome_genero
	FROM tbl_filme, tbl_genero, tbl_filme_genero
	WHERE tbl_filme.id = tbl_filme_genero.id_filme AND
		  tbl_genero.id = tbl_filme_genero.id_genero;
          
-- Exemplo 2 de INNER JOIN
-- OBS: Existem atores que não foram relacionados com a nacionalidade, assim, o INNER JOIN não consegue trazer os dados desses atores
SELECT 
	tbl_filme.nome AS nome_filme,
	tbl_filme.sinopse, 
    tbl_genero.nome AS nome_genero,
    tbl_classificacao.nome AS nome_classificacao, 
    tbl_classificacao.classificacao, 
    tbl_classificacao.caracteristicas,
    tbl_ator_diretor.nome AS nome_ator,
    tbl_ator_diretor.nome_artistico,
    tbl_nacionalidade.nome AS nome_nacionalidade
FROM tbl_filme

	INNER JOIN tbl_filme_genero
		ON tbl_filme.id = tbl_filme_genero.id_filme
	INNER JOIN tbl_genero
		ON tbl_genero.id = tbl_filme_genero.id_genero
	INNER JOIN tbl_classificacao
		ON tbl_filme.id_classificacao = tbl_classificacao.id
	
	INNER JOIN tbl_filme_ator
		ON tbl_filme.id = tbl_filme_ator.id_filme
	INNER JOIN tbl_ator
		ON tbl_ator.id = tbl_filme_ator.id_ator
	INNER JOIN tbl_ator_diretor
		ON tbl_ator_diretor.id = tbl_ator.id_ator_diretor
	INNER JOIN tbl_ator_diretor_nacionalidade
		ON tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
	INNER JOIN tbl_nacionalidade
		ON tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade;
			
-- Exemplo de LEFT JOIN
-- OBS: Usando o LEFT JOIN conseguimos ter no resultado os atores que não tinham relação com a nacionalidade
SELECT 
	tbl_filme.nome AS nome_filme,
	tbl_filme.sinopse, 
    tbl_genero.nome AS nome_genero,
    tbl_classificacao.nome AS nome_classificacao, 
    tbl_classificacao.classificacao, 
    tbl_classificacao.caracteristicas,
    tbl_ator_diretor.nome AS nome_ator,
    tbl_ator_diretor.nome_artistico,
    tbl_nacionalidade.nome AS nome_nacionalidade
FROM tbl_filme

	INNER JOIN tbl_filme_genero
		ON tbl_filme.id = tbl_filme_genero.id_filme
	INNER JOIN tbl_genero
		ON tbl_genero.id = tbl_filme_genero.id_genero
	INNER JOIN tbl_classificacao
		ON tbl_filme.id_classificacao = tbl_classificacao.id
	
	INNER JOIN tbl_filme_ator
		ON tbl_filme.id = tbl_filme_ator.id_filme
	INNER JOIN tbl_ator
		ON tbl_ator.id = tbl_filme_ator.id_ator
	INNER JOIN tbl_ator_diretor
		ON tbl_ator_diretor.id = tbl_ator.id_ator_diretor
	LEFT JOIN tbl_ator_diretor_nacionalidade
		ON tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
	LEFT JOIN tbl_nacionalidade
		ON tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade;
        
SELECT 
	tbl_filme.nome AS nome_filme,
	tbl_filme.sinopse, 
    tbl_genero.nome AS nome_genero,
    tbl_classificacao.nome AS nome_classificacao, 
    tbl_classificacao.classificacao, 
    tbl_classificacao.caracteristicas,
    tbl_ator_diretor.nome AS nome_ator,
    tbl_ator_diretor.nome_artistico,
    tbl_nacionalidade.nome AS nome_nacionalidade
FROM tbl_filme

	INNER JOIN tbl_filme_genero
		ON tbl_filme.id = tbl_filme_genero.id_filme
	INNER JOIN tbl_genero
		ON tbl_genero.id = tbl_filme_genero.id_genero
	INNER JOIN tbl_classificacao
		ON tbl_filme.id_classificacao = tbl_classificacao.id
	
	INNER JOIN tbl_filme_ator
		ON tbl_filme.id = tbl_filme_ator.id_filme
	INNER JOIN tbl_ator
		ON tbl_ator.id = tbl_filme_ator.id_ator
	INNER JOIN tbl_ator_diretor
		ON tbl_ator_diretor.id = tbl_ator.id_ator_diretor
	LEFT JOIN tbl_ator_diretor_nacionalidade
		ON tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
	LEFT JOIN tbl_nacionalidade
		ON tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade;
        
SELECT tbl_ator_diretor.nome AS nome_ator, tbl_ator_diretor.nome_artistico, tbl_nacionalidade.nome AS nacionalidade
FROM tbl_ator_diretor
	LEFT JOIN tbl_ator_diretor_nacionalidade
		ON tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
	LEFT JOIN tbl_nacionalidade
		ON tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade
        
UNION
        
SELECT tbl_ator_diretor.nome AS nome_ator, tbl_ator_diretor.nome_artistico, tbl_nacionalidade.nome AS nacionalidade
FROM tbl_ator_diretor
	RIGHT JOIN tbl_ator_diretor_nacionalidade
		ON tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
	RIGHT JOIN tbl_nacionalidade
		ON tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade;
		