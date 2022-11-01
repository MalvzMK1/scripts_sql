USE db_video_locadora;

INSERT INTO tbl_sexo (
			sigla,
			descricao
        ) VALUES (
			'M',
			'Masculino'
        );

INSERT INTO tbl_sexo (
			sigla,
            descricao
		) VALUES (
			'F',
			'Feminino'
        );            
            
SELECT * FROM tbl_classificacao;

DESC tbl_classificacao;

ALTER TABLE tbl_classificacao
	MODIFY COLUMN classificacao VARCHAR(80) NOT NULL,
	MODIFY COLUMN caracteristicas VARCHAR(150) NOT NULL;

INSERT INTO tbl_classificacao (
				nome,
                classificacao,
                caracteristicas
            ) VALUES (
				'L',
                'Livre.',
                'Não expõe crianças a conteúdo potencialmente prejudiciais.'
            ), (
				'10',
                'Não recomendado para menores de 10 anos.',
                'Conteúdo violento ou linguagem inapropriada para crianças, ainda que em menor intensidade'
            ), (
				'12',
                'Não recomendado para menores de 12 anos.',
                'As cenas podem conter agressão física, consumo de drogas e insinuação sexual'
            ), (
				'14',
                'Não recomendado para menores de 14 anos.',
                'Conteúdos mais violentos e/ou de linguagem sexual mais acentuda'
            ), (
				'16',
                'Não recomendado para menores de 16 anos.',
                'Conteúdos mais violentos ou com conteúdo sexual mais intenso, com cenas de tortura, suicídio, estupro ou nudez total.'
            ), (
				'18',
                'Não recomendado para menores de 18 anos.',
                'Conteúdos violentos e sexuais extremos. Cenas de sexo, incesto ou atos repetidos de tortura, mutilação ou abuso sexual'
            )

UPDATE tbl_classificacao SET nome = 'LI';