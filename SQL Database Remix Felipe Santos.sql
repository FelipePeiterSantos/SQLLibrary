--CREATE DATABASE remix;
CREATE SCHEMA remix;
CREATE TABLE remix.jogador
(
	nome text NOT NULL,
	tempo float,
	id_jogador integer PRIMARY KEY
);
CREATE TABLE remix.fases
(
	nome text NOT NULL,
	tempoInicial float,
	id_fase integer PRIMARY KEY
);
CREATE TABLE remix.musica
(
	nome text NOT NULL,
	id_musica integer PRIMARY KEY
);
CREATE TABLE remix.itens
(
	nome text NOT NULL,
	id_itens integer,
	id_musica integer,
	CONSTRAINT PK_itens PRIMARY KEY (id_itens),
	CONSTRAINT FK_musica FOREIGN KEY (id_musica)
		REFERENCES remix.musica (id_musica)
);
CREATE TABLE remix.personagem
(
	nome text NOT NULL,
	id_personagem integer,
	id_jogador integer,
	id_itens integer,
	id_fase integer,
	CONSTRAINT PK_personagem PRIMARY KEY (id_personagem),
	CONSTRAINT FK_jogador FOREIGN KEY (id_jogador)
		REFERENCES remix.jogador (id_jogador),
	CONSTRAINT FK_itens FOREIGN KEY (id_itens)
		REFERENCES remix.itens (id_itens),
	CONSTRAINT FK_fase FOREIGN KEY (id_fase)
		REFERENCES remix.fases (id_fase)
);

INSERT INTO remix.jogador(nome,tempo,id_jogador)VALUES('Epaminondas',0,1);
INSERT INTO remix.jogador(nome,tempo,id_jogador)VALUES('Bernadino',0,2);
INSERT INTO remix.jogador(nome,tempo,id_jogador)VALUES('Thiago',0,3);
INSERT INTO remix.jogador(nome,tempo,id_jogador)VALUES('Nota6',0,4);

INSERT INTO remix.fases(nome,tempoInicial,id_fase)VALUES('Cyprian',180,1);
INSERT INTO remix.fases(nome,tempoInicial,id_fase)VALUES('Zoroaster',240,2);

INSERT INTO remix.musica(nome,id_musica)VALUES('Dubstep',1);
INSERT INTO remix.musica(nome,id_musica)VALUES('HipHop',2);
INSERT INTO remix.musica(nome,id_musica)VALUES('Rock And Roll',3);
INSERT INTO remix.musica(nome,id_musica)VALUES('Electro',4);
INSERT INTO remix.musica(nome,id_musica)VALUES('Reggae',5);

INSERT INTO remix.itens(nome,id_itens,id_musica)VALUES('Dubstep',1,1);
INSERT INTO remix.itens(nome,id_itens,id_musica)VALUES('HipHop',2,2);
INSERT INTO remix.itens(nome,id_itens,id_musica)VALUES('Rock And Roll',3,3);
INSERT INTO remix.itens(nome,id_itens,id_musica)VALUES('Electro',4,4);
INSERT INTO remix.itens(nome,id_itens,id_musica)VALUES('Reggae',5,5);

INSERT INTO remix.personagem(nome,id_personagem,id_jogador,id_itens,id_fase)VALUES('Camaro Amarelo',1,1,4,1);
INSERT INTO remix.personagem(nome,id_personagem,id_jogador,id_itens,id_fase)VALUES('Camaro Branco',2,2,1,2);
INSERT INTO remix.personagem(nome,id_personagem,id_jogador,id_itens,id_fase)VALUES('Corvette Azul',3,2,2,2);
INSERT INTO remix.personagem(nome,id_personagem,id_jogador,id_itens,id_fase)VALUES('Corvette Vermelho',4,3,3,1);