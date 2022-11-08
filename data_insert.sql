-- Active: 1667303442798@@localhost@3306@db_video_locadora

USE db_video_locadora;

INSERT INTO
    tbl_sexo (sigla, descricao)
VALUES ('M', 'Masculino');

INSERT INTO tbl_sexo (sigla, descricao) VALUES ('F', 'Feminino');

SELECT * FROM tbl_filme;

DESC tbl_classificacao;

ALTER TABLE
    tbl_classificacao MODIFY COLUMN classificacao VARCHAR(80) NOT NULL,
    MODIFY COLUMN caracteristicas VARCHAR(150) NOT NULL;

INSERT INTO
    tbl_classificacao (
        nome,
        classificacao,
        caracteristicas
    )
VALUES (
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
    );

INSERT INTO
    tbl_filme (
        nome,
        duracao,
        sinopse,
        data_lancamento,
        data_relancamento,
        foto_capa,
        nome_original,
        id_classificacao
    )
VALUES (
        'O PODEROSO CHEFÃO',
        '02:55:00',
        'Don Vito Corleone (Marlon Brando) é o chefe de uma "família" de Nova York que está feliz, pois Connie (Talia Shire), sua filha, se casou com Carlo (Gianni Russo). Porém, durante a festa, Bonasera (Salvatore Corsitto) é visto no escritório de Don Corleone pedindo "justiça", vingança na verdade contra membros de uma quadrilha, que espancaram barbaramente sua filha por ela ter se recusado a fazer sexo para preservar a honra. Vito discute, mas os argumentos de Bonasera o sensibilizam e ele promete que os homens, que maltrataram a filha de Bonasera não serão mortos, pois ela também não foi, mas serão severamente castigados. Vito porém deixa claro que ele pode chamar Bonasera algum dia para devolver o "favor". Do lado de fora, no meio da festa, está o terceiro filho de Vito, Michael (Al Pacino), um capitão da marinha muito decorado que há pouco voltou da 2ª Guerra Mundial. Universitário educado, sensível e perceptivo, ele quase não é notado pela maioria dos presentes, com exceção de uma namorada da faculdade, Kay Adams (Diane Keaton), que não tem descendência italiana mas que ele ama. Em contrapartida há alguém que é bem notado, Johnny Fontane (Al Martino), um cantor de baladas românticas que provoca gritos entre as jovens que beiram a histeria. Don Corleone já o tinha ajudado, quando Johnny ainda estava em começo de carreira e estava preso por um contrato com o líder de uma grande banda, mas a carreira de Johnny deslanchou e ele queria fazer uma carreira solo. Por ser seu padrinho Vito foi procurar o líder da banda e ofereceu 10 mil dólares para deixar Johnny sair, mas teve o pedido recusado. Assim, no dia seguinte Vito voltou acompanhado por Luca Brasi (Lenny Montana), um capanga, e após uma hora ele assinou a liberação por apenas mil dólares, mas havia um detalhe: nas "negociações" Luca colocou uma arma na cabeça do líder da banda. Agora, no meio da alegria da festa, Johnny quer falar algo sério com Vito, pois precisa conseguir o principal papel em um filme para levantar sua carreira, mas o chefe do estúdio, Jack Woltz (John Marley), nem pensa em contratá-lo. Nervoso, Johnny começa a chorar e Vito, irritado, o esbofeteia, mas promete que ele conseguirá o almejado papel. Enquanto a festa continua acontecendo, Don Corleone comunica a Tom Hagen (Robert Duvall), seu filho adotivo que atua como conselheiro, que Carlo terá um emprego mas nada muito importante, e que os "negócios" não devem ser discutidos na sua frente. Os verdadeiros problemas começam para Vito quando Sollozzo (Al Lettieri), um gângster que tem apoio de uma família rival, encabeçada por Phillip Tattaglia (Victor Rendina) e seu filho Bruno (Tony Giorgio). Sollozzo, em uma reunião com Vito, Sonny e outros, conta para a família que ele pretende estabelecer um grande esquema de vendas de narcóticos em Nova York, mas exige permissão e proteção política de Vito para agir. Don Corleone odeia esta idéia, pois está satisfeito em operar com jogo, mulheres e proteção, mas isto será apenas a ponta do iceberg de uma mortal luta entre as "famílias".',
        '1972-03-24',
        '2022-02-24',
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/90/93/20/20120876.jpg',
        'The Godfather',
        16
    ), (
        'O REI LEÃO',
        '01:29:00',
        'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.',
        '1994-07-08',
        '2011-08-26',
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/84/28/19962110.jpg',
        'The Lion King',
        13
    ), (
        'FORREST GUMP - O CONTADOR DE HISTÓRIAS',
        '02:20:00',
        'Quarenta anos da história dos Estados Unidos, vistos pelos olhos de Forrest Gump (Tom Hanks), um rapaz com QI abaixo da média e boas intenções. Por obra do acaso, ele consegue participar de momentos cruciais, como a Guerra do Vietnã e Watergate, mas continua pensando no seu amor de infância, Jenny Curran.',
        '1994-12-07',
        null,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/30/21/19874092.jpg',
        'Forrest Gump',
        16
    ), (
        'À ESPERA DE UM MILAGRE',
        '03:09:00',
        '1935, no corredor da morte de uma prisão sulista. Paul Edgecomb (Tom Hanks) é o chefe de guarda da prisão, que temJohn Coffey (Michael Clarke Duncan) como um de seus prisioneiros. Aos poucos, desenvolve-se entre eles uma relação incomum, baseada na descoberta de que o prisioneiro possui um dom mágico que é, ao mesmo tempo, misterioso e milagroso.',
        '2000-03-10',
        null,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/91/66/66/20156966.jpg',
        'The Green Mile',
        16
    ), (
        'VINGADORES: ULTIMATO',
        '03:01:00',
        'Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.',
        '2019-04-25',
        null,
        'https://br.web.img2.acsta.net/c_310_420/pictures/19/04/26/17/30/2428965.jpg',
        'Avengers: Endgame',
        15
    ), (
        'BATMAN - O CAVALEIRO DAS TREVAS',
        '02:32:00',
        'Após dois anos desde o surgimento do Batman (Christian Bale), os criminosos de Gotham City têm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman) e do promotor público Harvey Dent (Aaron Eckhart), Batman luta contra o crime organizado. Acuados com o combate, os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.',
        '2008-07-18',
        null,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/86/98/32/19870786.jpg',
        'The Dark Knight',
        15
    );

INSERT INTO
    tbl_ator_diretor (
        nome,
        nome_artistico,
        data_nascimento,
        data_falescimento,
        foto,
        id_sexo
    )
VALUES (
        'Christopher Edward Nolan',
        NULL,
        '1970-07-30',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/15/02/26/15/33/118611.jpg',
        3
    ), (
        'Christian Charles Philip Bale',
        NULL,
        '1974-01-30',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/15/02/24/18/43/126776.jpg',
        3
    ), (
        'Heathcliff Andrew Ledger',
        'Heath Ledger',
        '1979-04-04',
        '2008-01-22',
        'https://br.web.img2.acsta.net/c_310_420/pictures/18/08/16/19/43/2593099.jpg',
        3
    ), (
        'Aaron Edward Eckhart',
        NULL,
        '1968-03-12',
        NULL,
        'https://br.web.img2.acsta.net/c_310_420/pictures/16/01/28/10/38/041658.jpg',
        3
    ), (
        'Joseph Vincent Russo',
        'Joe Russo',
        '1971-07-08',
        NULL,
        'https://br.web.img2.acsta.net/c_310_420/pictures/15/11/24/17/01/231901.jpg',
        3
    ), (
        'Anthony J. Russo',
        NULL,
        '1970-02-03',
        NULL,
        'https://br.web.img2.acsta.net/c_310_420/pictures/15/11/24/16/59/250993.jpg',
        3
    ), (
        'Robert John Downey Jr.',
        NULL,
        '1965-04-04',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/18/06/29/00/35/0101925.jpg',
        3
    ), (
        'Christopher Robert Evans',
        'Chris Evans',
        '1981-06-13',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/19/04/22/19/59/2129500.jpg',
        3
    ), (
        'Mark Alan Ruffalo',
        NULL,
        '1967-11-22',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/19/04/22/20/02/3083743.jpg',
        3
    ), (
        'Ferenc Árpád Darabont',
        'Frank Darabont',
        '1959-01-28',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/90/95/95/20122149.jpg',
        3
    ), (
        'Thomas Jeffrey Hanks',
        'Tom Hanks',
        '1956-07-09',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/18/08/08/18/47/1167635.jpg',
        3
    ), (
        'Michael Clarcke Duncan',
        'Michael Duncan',
        '1957-12-10',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/14/09/06/19/41/147683.jpg',
        3
    ), (
        'David Bowditch Morse',
        'David Morse',
        '1953-10-11',
        NULL,
        'https://br.web.img2.acsta.net/c_310_420/pictures/15/02/25/18/50/212119.jpg',
        3
    ), (
        'Robert Lee Zemeckis',
        'Robert Zemeckis',
        '1952-05-14',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/57/81/20030814.jpg',
        3
    ), (
        'Gary Alan Sinise',
        NULL,
        '1955-03-17',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/92/45/36/20200745.jpg',
        3
    ), (
        'Robin Virginia Gayle Wright',
        'Robin Wright Penn',
        '1966-04-08',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/19/11/05/01/50/2018682.jpg',
        2
    ), (
        'Roger Allers',
        NULL,
        '1949-06-29',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/91/54/06/20150846.jpg',
        3
    ), (
        'Robert Ralph Minkoff',
        'Rob Minkoff',
        '1962-08-11',
        NULL,
        'https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/91/54/07/20150847.jpg',
        3
    ), (
        'Garcia Júnior',
        NULL,
        '1967-03-02',
        NULL,
        'https://br.web.img2.acsta.net/c_310_420/pictures/14/01/16/13/52/556410.jpg',
        3
    ), (
        'Matthew Broderick',
        NULL,
        '1967-03-02',
        NULL,
        'https://br.web.img2.acsta.net/c_310_420/pictures/14/01/16/13/52/556410.jpg',
        3
    ), (
        'Todd Jones',
        'James Earl Jones',
        '1931-01-17',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/55/34/20040970.jpg',
        3
    ), (
        'Francis Ford Coppola',
        'Francis F. Coppola',
        '1939-04-07',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/35/21/99/19187501.jpg',
        3
    ), (
        'Marlon Brando',
        NULL,
        '1924-04-03',
        '2004-07-01',
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/51/54/20040663.jpg',
        3
    ), (
        'Alfredo James Pacino',
        'Al Pacino',
        '1940-04-25',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/19/03/19/18/33/1337912.jpg',
        3
    ), (
        'James Edmund Caan',
        NULL,
        '1940-03-26',
        '2022-07-06',
        'https://br.web.img3.acsta.net/c_310_420/pictures/15/06/09/21/29/576102.jpg',
        3
    );

INSERT INTO
    tbl_ator (
        quantidade_filmes,
        biografia,
        ano_inicio_carreira,
        id_ator_diretor
    )
VALUES (
        48,
        'Caçula de três irmãs mais velhas, filho de um piloto de aviação comercial e de uma dançarina de circo, Bale começou a atuar por influência de uma delas. Pouca gente recorda que este ator inglês é o menino Jim, que tocou corações em Império do Sol (1987), de Steven Spielberg. Para ganhar o papel, derrotou cerca de quatro mil candidatos e sua atuação ainda rendeu prêmios. Mesmo tendo começado cedo (aos 9 anos fez seu primeiro comercial de cereais), foi somente com Psicopata Americano (2000) que ganhou mais notoriedade no papel de Patrick Bateman, que seria, incialmente, de Leonardo DiCaprio. Sua dedicação ao trabalho é reconhecida e sua "entrega" para viver Trevor em O Operário (2004), quando emagreceu cerca de 30 kg, foi considerada chocante demais. Famoso por sua aversão a entrevistas, Bale é capaz de concedê-las com seu bom sotaque americano apenas para não confundir o público, caso o filme em questão seja de um personagem americano. Curiosamente, dois personagens famosos de sua galeria começam com a primeira letra de seu sobrenome: Bateman e Batman. Ao lado de Michael Keaton, foi o segundo ator a viver mais de uma vez o personagem no cinema, o primeiro não americano e o mais jovem. Em 2011, com O Vencedor (2010) tornou-se o segundo intérprete do homem-morcego a faturar o Oscar. O outro tinha sido George Clooney, por Syriana - A Indústria do Petróleo (2005). Reservado sobre sua vida pessoal, Bale é casado desde 2000 e tem uma filha, Emmaline Bale, nascida em 2005. Chegou a ser vegetariano, mas voltou a comer carne. Adora ler, é fã do jogo Mario Bros., apaixonado  por animais e defensor de causas sociais, constuma se envolver em organizações como Greenpeace e Dian Fossey Gorilla Fun, entre outros.' '1986' 2
    ), (
        17,
        'Extremamente tímido, este australiano descendente de irlandeses e escoceses optou por atuar desde cedo. Mesmo com a rápida fama conquistada, em parte por sua beleza, ele procurou interpretar papéis que não explorassem este aspecto e conseguiu atuações marcantes em sua curta carreira. Premiado após sua morte pela atuação como Coringa, Ledger tem seu lugar marcado para sempre na história do cinema mundial. (RC)',
        '1988',
        3
    ), (34, NULL, '1996', 4), (
        69,
        'Do céu ao inferno e ao céu novamente. Se alguém pensou no mito do pássaro fênix que renasce das cinzas, até que a comparação poderia se encaixar para definir este brilhante ator que já deu vida para personagens tão distantes em tempo e estilo, como Charles Chaplin (Chaplin - 1992) e Tony Stark (Homem de Ferro - 2008). Na ativa por mais de quatro décadas e dono de uma voz grave, afinada, Downey já dublou desenho animado (God, the Devil and Bob - 2000), se aventurou no mundo da música, em 2004, com o disco The Futurist (Sony) e fez bonito na televisão, onde faturou o Globo de Ouro, além de outros prêmios e indicações por Larry Paul, personagem do seriado Ally McBeal (2000 - 2002). Mas é no cinema que sua estrela parece brilhar mais intensamente. Tendo estreado aos cinco anos de idade, em 1970, dirigido pelo pai em Pound e repetido a experiência outras vezes, como aconteceu em Hugo Pool (1997), o reconhecimento e ápice do sucesso veio em 2008 na pele do herói metálico e em Trovão Tropical, pelo qual foi indicado ao Oscar, entre outros prêmios. Descendente de irlandeses, escoceses, judeus e alemães, esse filho de pais separados (aos 11 anos) perdeu boa parte de sua infância devido ao trabalho de cineasta independente exercido por seu pai, que o fazia ficar para lá e para cá, entre Estados Unidos, Paris, Londres etc. Aos 17 anos, largou os estudos e se mudou para Nova York para se tornar ator, tendo trabalhado por lá em restaurantes, lojas de sapatos e fazendo performances artísticas nos inferninhos do SohHo. Casado de 1992 até 2004 com Deborah Falconer, eles atuaram juntos em Short Cuts - Cenas da Vida (1993) e com ela teve um filho chamado Indio Falconer Downey, nascido em 1993. Em 2005, casou-se com a produtora Susan Downey, que conheceu nos bastidores do suspense Na Companhia do Medo (2003), e o primeiro filho do casal nasce em 2012. Sting e Billy Idol cantaram na cerimônia de casamento. Do passado que prefere esquecer, ficam as passagens pela prisão (violência, posse de drogas, armas) e visitas a clínicas de reabilitação no final dos anos 90, momentos que culminaram com sua demissão do seriado Ally McBeal, quase derrubaram de vez a sua carreira, mas foram devidamente superados para a alegria dos fãs. Do Oriente, tradicional celeiro das artes marciais, encontrou um dos caminhos para abandonar as drogas e ter uma vida mais saudável, praticando o Wing Chun, em 2003, e anos mais tarde, seu mestre da arte marcial chinesa serviria com consultor para Guy Ritchie realizar Sherlock Holmes (2009). No Japão, porém, seu passado o impediu de entrar no país para divulgar Homem de Ferro, algo que só aconteceu horas de interrogatório e conversações. Curiosamente, antes de brilhar como o herói Homem de Ferro, ele trabalhou com três outros parceiros, que já tinham dado vida a heróis dos quadrinhos: George Clooney em Boa Noite e Boa Sorte (2005), Val Kilmer em Beijos e Tiros (2005) e Michael Keaton em Game 6 (2005). Além disso, ele foi o primeiro ator que fez parte do elenco regular do programa humorístico Saturday Night Live a ser indicado ao Oscar mna categoria Melhor Ator. Ele é também o único ator a receber um Globo de Ouro interpretando Sherlock Holmes. Eleito em 2008 como uma das 100 pessoas mais influentes do mundo pela tradicional revista Time, Downey Jr. mantém entre suas marcas registradas o humor sarcástico e um jeito peculiar de interpretar personagens "ego-excêntricos". Em 2010, este fã de Peter O\'Toole (Lawrence da Arábia), ex-namorado de Sarah Jessica Parker (por sete anos) e colega de quarto de Kiefer Sutherland nos anos 80, ganhou sua estrela na tradicional Calçada da Fama, em Los Angeles. diante do Grauman\'s Chinese, nos Estados Unidos. A homenagem é mais do que merecida para alguém que soube cair e se levantar, sem nunca deixar de lado o talento para entreter o espectador ao redor do planeta. Para os brasileiros, o ator deu o ar da graça em uma preimère realizada no Rio de Janeiro, em 9 de janeiro de 2012, para lançar Sherlock Holmes - O Jogo de Sombras (2011).',
        '1980',
        7
    ), (
        36,
        'Depois de uma infância e estudos ​​em Boston, Chris Evans decidiu ir para Nova York para tentar a sorte na comédia. Ele rapidamente consegue entrar na profissão, principalmente participando em séries de televisão (Boston Public). Sua carreira no cinema começou em 2001, em uma comédia para adolescentes (Não é Mais um Besteirol Americano). Mas sem ficar preso a apenas um gênero de filme, o ator vai para outras produções: trapaceia nas provas com Scarlett Johansson na comédia policial Nota Máxima (2004), interpreta o papel de Kim Basinger no thriller Celular - Um Grito de Socorro (2004) e seduz Jessica Biel em London (2005). O destino de Chris Evans como o conhecemos hoje começou em 2005, quando ele conseguiu seu primeiro papel como super-herói. Em Quarteto Fantástico, um sucesso de bilheteria adaptado dos quadrinhos da Marvel, ele interpreta Johnny Storm, também conhecido como Tocha Humana. O filme é um sucesso e tem uma sequência dois anos depois (O Quarteto Fantástico e o Surfista Prateado). Para se manter na mesm a linha de superheróis, ele empresta sua voz no filme das Tartarugas Ninja (2007), descobre habilidades sobre-humanas em Heróis (2009) e luta no delirante Scott Pilgrim contra o Mundo (2010). No mesmo ano, ele assume a pele de um ex-agente renegado da CIA para Os Perdedores, também adaptação de um quadrinho. Em 2007, faz parte da equipe Sunshine - Alerta Solar de Danny Boyle, engajado em uma expedição para reviver o sol. Não cansando de ficar longe de Scarlett Johansson, ambos atuam em O Diário de uma Babá. Com Capitão América (2011), ele tomou a decisão de sua carreira e assinou um contrato de seis filmes com a Marvel Studios. Ao aceitar o papel de Steve Rogers. Depois de Capitão América, o longa que apresenta o herói ao público , o personagem que ele encarna se junta aos Vingadores, fazendo no total 7 filmes para o MCU e algumas participações especiais em filmes como Thor: O Mundo Sombrio. No entanto, ele não se esquece de sair de seu traje de vez em quando com filmes como O Expresso do Amanhã, O Homem de Gelo, Before We Go, Um Laço de Amor e o sucesso Entre Facas e Segredos. Após se aposentar do super-soldado da Marvel, Evans vai para outras produções como Não Olhe Para Cima, Missão no Mar Vermelho e substitui a voz original de Buzz Lightyear, Tim Allen, no novo filme do personagem, Lightyear. Evans ainda assina outro contrato com a Netflix para atuar, ao lado de Ryan Gosling, no filme Agente Oculto.',
        '2000',
        8
    ), (
        49,
        'Apesar de ter um pequeno papel em Ride With The Devil (1999), a primeira participação de destaque de Mark Ruffalo no cinema vem com o premiado drama Conte Comigo (2000). Ele conquista papéis importantes no thriller erótico Em Carne Viva (2003) e no drama Brilho Eterno de uma Mente Sem Lembranças (2004), antes de se lançar em comédias românticas como De Repente 30 (2004) e Dizem Por Aí... (2005). Ele retoma os dramas e suspenses com Zodíaco (2007) e Ensaio Sobre a Cegueira (2008). Em 2010, Martin Scorsese convida-o a atuar em Ilha do Medo, ao lado de Leonardo DiCaprio. Ele recebe sua primeira indicação ao Oscar como ator coadjuvante no drama Minhas Mães e Meu Pai (2010). Um grande passo para o reconhecimento popular vem com o papel de Hulk no grande sucesso Os Vingadores - The Avengers (2012), abrindo a porta para novas produções no papel do monstro gigantesco.',
        '1994',
        9
    ), (23, NULL, '1990', 10), (
        97,
        'Tom Hanks iniciou a carreira no cinema aos 24 anos, com um papel no filme de baixo orçamento Trilha de Corpos. Logo migrou para a TV, onde estrelou por dois anos a série Bosom Buddies. Nela passou a trabalhar com comédia, algo com o qual não estava habituado, rendendo convites para pequenas participações nas séries Táxi, Caras & Caretas e Happy Days. Em 1984, veio seu primeiro sucesso no cinema: a comédia Splash - Uma Sereia em Minha Vida, na qual era dirigido por Ron Howard e contracenava com Daryl Hannah. Em seguida vieram várias comédias, entre elas A Última Festa de Solteiro (1984), Um Dia a Casa Cai (1986) e Dragnet - Desafiando o Perigo (1987), tornando-o conhecido do grande público. Com Quero Ser Grande (1988) Hanks obteve sua primeira indicação ao Oscar de melhor ator. Apesar de consagrado como comediante, aos poucos passou a experimentar outros gêneros. Em 1993 surpreendeu em Filadélfia como um advogado homossexual que luta na justiça contra sua demissão, motivada por preconceito devido a ele ser portador do vírus da AIDS. Pelo papel conquistou seu primeiro Oscar. Já no ano seguinte Hanks ganharia sua segunda estatueta dourada, repetindo um feito apenas obtido por Spencer Tracy, quase 60 anos antes. Forrest Gump - O Contador de Histórias foi sucesso de público e crítica, ganhando seis Oscar. Estabelecido como um dos maiores astros de Hollywood, Hanks passou a emendar um sucesso atrás do outro: Apollo 13 - Do Desastre ao Triunfo (1995), Toy Story (1995), O Resgate do Soldado Ryan (1998), Mens@gem Para Você (1998), Toy Story 2 (1999), À Espera de um Milagre (1999), Náufrago (2000), Prenda-me Se For Capaz (2002) e Estrada para Perdição (2002). Em 1996, resolveu se dedicar à sua estreia na direção. O resultado foi The Wonders - O Sonho Não Acabou, divertida comédia que rendeu a contagiante música "That Thing You Do!". Hanks voltaria a trabalhar como diretor em episódios das séries de TV Da Terra à Lua (1998) e Band of Brothers (2001) e também na comédia romântica Larry Crowne - O Amor Está de Volta (2011). Em 2004, o ator encampou a ideia de interpretar vários personagens na animação O Expresso Polar, dirigida pelo colega Robert Zemeckis. Usando o método de captura de movimento, Hanks interpretou seis personagens de idades variadas. Um de seus personagens mais famosos é o simbologista Robert Langdon, criado pelo autor Dan Brown. Hanks o interpretou em dois filmes, O Código Da Vinci (2006) e Anjos e Demônios (2009).',
        '1980',
        11
    ), (
        44,
        'Michael Clarke Duncan é conhecido pela atuação em À Espera de um Milagre, que lhe rendeu indicações ao Oscar e ao Globo de Ouro de Melhor Ator Coadjuvante. Fez sua estreia nos cinemas em 1995, com um papel não creditado em Sexta-Feira em Apuros. O primeiro trabalho de destaque viria três anos depois com Armageddon. Agradou tanto que Bruce Willis recomendou que Frank Darabont contratasse ele para À Espera de um Milagre, em 1999. Muitas vezes tratado como Big Mike, por causa da altura de 1,96 m, o ator se destacou ainda em Meu Vizinho Mafioso, Planeta dos Macacos, O Escorpião Rei e A Ilha. Participou também de três adaptações dos quadrinhos: O Demolidor, Sin City - A Cidade do Pecado e Lanterna Verde. Robert Rodriguez contava com o retorno dele para Sin City 2: A Dame to Kill For, algo que infelizmente não irá mais acontecer. Na TV, Clarke Duncan contou com participações em importantes seriados, como Um Maluco no Pedaço, Bones, Chuck e Two and a Half Men. Faleceu em setembro de 2012, aos 54 anos, após passar dois meses hospitalizado em Los Angeles.',
        '1994',
        12
    ), (50, NULL, '1982', 13), (35, NULL, '1979', 15), (
        45,
        'Robin Wright nasceu em Dallas, Texas, filha de Gayle Gaston, uma vendedora de cosméticos, e Freddie Wright, funcionário de uma empresa farmacêutica. A atriz ficou famosa por seus papeis em House of Cards, Mulher-Maravilha, Corpo Fechado e Forrest Gump - O Contador de Histórias. Wright foi criada em San Diego, Califórnia. Quando jovem, frequentou a La Jolla High School, em La Jolla, e a Taft High School em Woodland Hills, em Los Angeles. A atriz começou sua carreira como modelo quando tinha 14 anos. Aos 18, interpretou Kelly Capwell na novela Santa Barbara (1984), da NBC Daytime, recebendo diversas indicações ao Daytime Emmy e voltando os olhos do público para seu trabalho. Das telas da TV para o cinema, Wright conseguiu um papel em Hollywood Vice Squad (1986) e protagonizou uma princesa em A Princesa Prometida, em 1987. Alguns anos mais tarde, a atriz foi aclamada pela crítica em seu papel como Jenny Curran, em Forrest Gump (1994), recebendo indicações ao Golden Globe Award e Screen Actors Guild de Melhor Atriz Coadjuvante. Em 1996, ela protagonizou a adaptação cinematográfica de Moll Flanders, do diretor Daniel Defoe, recebendo uma indicação ao Satellite Award de Melhor Atriz em Drama. No ano seguinte, Wright foi indicada ao Screen Actors Guild Award de Melhor Atriz por seu papel em Loucos de Amor, filme no qual ela co-estrelou com seu então marido, Sean Penn. Contracenando com Bruce Willis e Samuel L. Jackson, a atriz atuou no suspense Corpo Fechado, dirigido por M. Night Shyamalan, em 2000. Em 2013, Wright apareceu na série da Netflix, House of Cards, interpretando a implacável Claire Underwood, esposa do político Frank Underwood (Kevin Spacey). Em 2014, ela ganhou um Globo de Ouro pelo papel, tornando-se a primeira atriz a ganhar o prêmio por uma série de televisão com transmissão apenas online. A atriz foi indicada para o mesmo prêmio no ano seguinte e também recebeu indicações para o Primetime Emmy Award em 2013 e 2014, pelo mesmo papel. Após a saída de Spacey por conta das acusações de má conduta sexual, Wright foi definida como a nova protagonista do show, continuando a ser indicada a diversos prêmios. Em 2017, a atriz interpretou a General Antíope em Mulher-Maravilha, ao lado de Gal Gadot e Chris Pine. No mesmo ano, ela apareceu na superprodução sequência de Blade Runner, Blade Runner 2049, ao lado de Ryan Gosling, Harrison Ford e Jared Leto. O longa foi altamente aclamado pela crítica. Wright é porta-voz honorária da Fundação Gordie, sem fins lucrativos, com sede no Texas. Em 2014, a atriz fez parceria com duas empresas sediadas na Califórnia; Pour Les Femmes e The SunnyLion. Essa última doa uma parte de seus lucros ao movimento Raise Hope For Congo. A atriz é ativista dos direitos humanos na República Democrática do Congo. Ela é a narradora e produtora executiva do documentário When Elephants Fight, que destaca como corporações multinacionais de mineração e políticos ameaçam os direitos humanos e perpetuam conflitos na região.',
        '1984',
        16
    ), ();

DESC tbl_ator;

UPDATE tbl_classificacao SET nome = 'LI';

DELETE FROM tbl_classificacao;

SHOW TABLES;

# Formatar o retorno do tipo DATE
SELECT
    DATE_FORMAT (data_lancamento, '%d/%m/%Y') AS data_lancamento
FROM tbl_filme;

SELECT * FROM tbl_genero;

-- https://www.adorocinema.com/filmes/melhores/

SELECT *
FROM tbl_filme
WHERE (
        nome LIKE 'a%'
        OR nome_original LIKE 'a%'
        OR nome LIKE 'o%'
        OR nome_original LIKE 'o%'
    )
    AND data_lancamento < '2010-12-31';

# filmes que começam com a letra vasco e terminam com a letra gremio 