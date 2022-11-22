USE db_video_locadora;

-- Retorna a data atual (função abreviada)
SELECT CURDATE() AS data_atual;

-- Função nativa de retornar a data
SELECT CURRENT_DATE() AS data_atual;

-- Funções para retornar a hora atual (abreviada e nativa, respectivamente)
SELECT CURTIME() AS hora_atual;
SELECT CURRENT_TIME() AS hora_atual;

-- Retorna a data e a hora atual do servidor
SELECT CURRENT_TIMESTAMP() AS data_hora_atual;

-- Funções para formatar a hora

/*
	%H -> Hora de 00 a 23
	%d -> Hora de 00 a 12
	%m -> Minuto
	%i -> Minuto
	%s -> Segundo
	%r -> Hora completa com AM e PM
	%T -> Hora completa
*/

SELECT TIME_FORMAT(CURTIME(), '%p');

-- Função para retornar apenas hora, minuto e segundo
SELECT HOUR(CURTIME()) AS hora;
SELECT MINUTE(CURTIME()) AS minuto;
SELECT SECOND(CURTIME()) AS segundo;

/*
	%W -> Nome do dia da semana
    %w -> Dia da semana em numero (0 = domingo... 6 = sábado)
    %a -> Nome do dia da semana abreviado
    %d -> Retorna o dia
    %D -> Retorna o dia com a abreviação cardinal
    %m -> Retorna o mês em número
    %M -> Retorna o mês por escrito
    %b -> Retorna o mês por escrito abreviado
    %y -> Retorna o ano atual
    %Y -> Retorna os últimos dois dígitos do ano
*/

-- Função para formatar a data
SELECT DATE_FORMAT(CURDATE(), '%W');

-- Funções para pegar ano, mês e data
SELECT DATE(CURDATE()) AS data_atual;
SELECT MONTH(CURDATE()) AS mes_atual;
SELECT YEAR(CURDATE()) AS ano_atual;

-- Funções para calcular a diferença entre horas
SELECT TIMEDIFF('18:00:00', '10:00:00');

-- Funções para calcular a diferença entre dias
SELECT DATEDIFF('2012-11-12', '2022-12-01');

-- EXEMPLO... (Valor a se pagar)
SELECT CONCAT('R$ ', ((DATEDIFF('2022-11-12', '2022-12-01') * 30) * -1)) AS valor_pagamento;

-- Desmembrando a função timestamp (time, date)
SELECT TIME(CURRENT_TIMESTAMP());
SELECT DATE(CURRENT_TIMESTAMP());

################################# REALIZANDO CALCULOS #################################

SELECT 10 + 10;
SELECT 10 - 10;
SELECT 10 * 10;
SELECT 10 / 10;

SELECT COUNT(*) AS qtde_filmes FROM tbl_filme;
SELECT CONCAT('Foram cadastrados ',
				COUNT(*),
                ' e isso custou R$',
                (COUNT(*) * 30.90)) FROM tbl_filme;
                
ALTER TABLE tbl_filme
	ADD COLUMN qtde int;

SELECT SUM(qtde) FROM tbl_filme;

-- ROUND permite arredondar e limitar a quantidade de casas decimais
SELECT ROUND(AVG(qtde), 2) FROM tbl_filme;

SELECT MIN(qtde) AS minimo FROM tbl_filme;
SELECT MAX(qtde) AS maximo FROM tbl_filme;
    
UPDATE tbl_filme SET qtde = 10 WHERE id = 6;

SELECT * FROM tbl_filme
	INNER JOIN tbl_classificacao ON tbl_classificacao.id = tbl_filme.id_classificacao
    ORDER BY tbl_filme.nome DESC LIMIT 1;

SELECT * FROM tbl_filme;   

-- BETWEEN -> Range de valores 
SELECT tbl_filme.id, tbl_filme.nome, tbl_filme.sinopse, tbl_filme.qtde, '4.60' AS valor_unitario, (tbl_filme.qtde * 4.60) AS valor_total, tbl_classificacao.nome, tbl_classificacao.classificacao, tbl_classificacao.caracteristicas FROM tbl_filme
    INNER JOIN tbl_classificacao ON tbl_classificacao.id = tbl_filme.id_classificacao
    WHERE qtde NOT IN(4, 6, 9);