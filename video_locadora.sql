CREATE DATABASE db_video_locadora;

USE db_video_locadora;

# MOVIE GENRE TABLE
CREATE TABLE tbl_genero (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    UNIQUE INDEX (id),
    PRIMARY KEY (id)
);

# MOVIE CLASSIFICATION TABLE
CREATE TABLE tbl_classificacao (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    classificacao VARCHAR(50),
    caracteristicas VARCHAR(80),
    
    UNIQUE INDEX (id),
    PRIMARY KEY (id)
);

# MOVIE TABLE
CREATE TABLE tbl_filme (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    duracao TIME,
    sinopse TEXT,
    data_lancamento DATE NOT NULL,
    data_relancemento DATE,
    foto_capa VARCHAR(200) NOT NULL,
    nome_original VARCHAR(50),
    id_classificacao INT NOT NULL,
    
    CONSTRAINT FK_classificacao_filme
    FOREIGN KEY(id_classificacao) REFERENCES tbl_classificacao(id),
    
    UNIQUE INDEX (id),
    PRIMARY KEY (id)
);

# MOVIE / GENRE INTERMEDIARY TABLE
CREATE TABLE tbl_filme_genero (
	id INT NOT NULL AUTO_INCREMENT,
    id_filme INT NOT NULL,
    id_genero INT NOT NULL,
    
    CONSTRAINT FK_filme_filme_genero
    FOREIGN KEY (id_filme) REFERENCES tbl_filme (id),
    
    CONSTRAINT FK_genero_filme_genero
    FOREIGN KEY (id_genero) REFERENCES tbl_genero (id),
    
    UNIQUE INDEX (id),
	PRIMARY KEY (id)
);

# ACTOR NATIONALITY TABLE
CREATE TABLE tbl_nacionalidade (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    
    UNIQUE INDEX (id),
    PRIMARY KEY (id)
);

# ACTOR GENDER TABLE
CREATE TABLE tbl_sexo (
	id INT NOT NULL AUTO_INCREMENT,
    sigla VARCHAR(6) NOT NULL,
    descricao VARCHAR(30),
    
    UNIQUE INDEX (id),
    PRIMARY KEY (id)
);

# ACTOR / DIRECTOR TABLE
CREATE TABLE tbl_ator_diretor (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    nome_artistico VARCHAR(45),
    data_nascimento DATE NOT NULL,
    data_falescimento DATE,
    foto VARCHAR(200),
    id_sexo INT NOT NULL,
    
    CONSTRAINT FK_sexo_ator_diretor
    FOREIGN KEY (id_sexo) REFERENCES tbl_sexo(id),
    
    UNIQUE INDEX (id),
    PRIMARY KEY (id)
);

CREATE TABLE tbl_ator (
	id INT NOT NULL AUTO_INCREMENT,
    quantidade_filmes INT,
    biografia TEXT,
    ano_inicio_carreira YEAR,
    id_ator_diretor INT NOT NULL,
    
    CONSTRAINT FK_ator_diretor_ator
    FOREIGN KEY (id_ator_diretor) REFERENCES tbl_ator_diretor (id),
    
    UNIQUE INDEX (id),
    PRIMARY KEY (id)
);

CREATE TABLE tbl_diretor (
	id INT NOT NULL AUTO_INCREMENT,
    quantidade_filmes INT,
    biografia TEXT,
    ano_inicio_carreira YEAR,
    id_ator_diretor INT NOT NULL,
    
    CONSTRAINT FK_ator_diretor_diretor
    FOREIGN KEY (id_ator_diretor) REFERENCES tbl_ator_diretor (id),
    
    UNIQUE INDEX (id),
    PRIMARY KEY (id)
);

# ACTOR / DIRECTOR AND NATIONALITY INTERMEDIARY TABLE
CREATE TABLE tbl_ator_diretor_nacionalidade (
	id INT NOT NULL AUTO_INCREMENT,
    id_nacionalidade INT NOT NULL,
    id_ator_diretor INT NOT NULL,
    
    CONSTRAINT FK_nacionalidade_ator_diretor_nacionalidade
    FOREIGN KEY (id_nacionalidade) REFERENCES tbl_nacionalidade (id),
    
    CONSTRAINT FK_ator_diretor_ator_diretor_nacionalidade
    FOREIGN KEY (id_ator_diretor) REFERENCES tbl_ator_diretor (id),
    
    UNIQUE INDEX (id),
    PRIMARY KEY (id)
);

CREATE TABLE tbl_filme_ator (
	id INT NOT NULL AUTO_INCREMENT,
    id_filme INT NOT NULL,
    id_ator INT NOT NULL,
    
    CONSTRAINT FK_filme_filme_ator
    FOREIGN KEY (id_filme) REFERENCES tbl_filme (id),
    
    CONSTRAINT FK_ator_filme_ator
    FOREIGN KEY (id_ator) REFERENCES tbl_ator (id),
    
    UNIQUE INDEX (id),
    PRIMARY KEY (id)
);

CREATE TABLE tbl_filme_diretor (
	id INT NOT NULL AUTO_INCREMENT,
    id_filme INT NOT NULL,
    id_diretor INT NOT NULL,
    
    CONSTRAINT FK_filme_filme_diretor
    FOREIGN KEY (id_filme) REFERENCES tbl_filme (id),
    
    CONSTRAINT FK_diretor_filme_diretor
    FOREIGN KEY (id_diretor) REFERENCES tbl_diretor (id),
    
    UNIQUE INDEX (id),
    PRIMARY KEY (id)
);

# MODIFICANDO A TABELA EXCLUINDO UMA COLUNA
ALTER TABLE tbl_sexo
	DROP COLUMN sigla;

# MODIFICANDO A TABELA ADICIONANDO UMA COLUNA    
ALTER TABLE tbl_sexo
	ADD COLUMN sigla VARCHAR(6);
    
# MODIFICANDO A TABELA MODIFICANDO UMA COLUNA SEM APAGAR O ATRIBUTO - MODIFY -> modifica a estrutura
ALTER TABLE tbl_sexo
	MODIFY COLUMN sigla VARCHAR(6) NOT NULL;

# MODIFICANDO A TABELA MODIFICANDO UMA COLUNA SEM APAGAR O ATRIBUTO - CHANGE -> renomeia e modifica a estrutura
ALTER TABLE tbl_sexo
	CHANGE sigla sigla VARCHAR(6) NOT NULL;

ALTER TABLE tbl_sexo ADD (
	UNIQUE INDEX (id)
);

SELECT id_sexo FROM tbl_ator_diretor;

# COMANDO PARA VISUALIZAR A ESTRUTURA DE UMA TABELA
DESCRIBE tbl_filme_genero;
DESC tbl_ator_diretor_nacionalidade;

DROP TABLE tbl_ator_diretor;

SHOW TABLES;