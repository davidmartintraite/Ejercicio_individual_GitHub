DROP DATABASE IF EXISTS BBDDejemplo;
CREATE DATABASE BBDDejemplo;

USE BBDDejemplo;

CREATE TABLE jugador (
		id INT not null,
		PRIMARY KEY(id),
		username VARCHAR(60),
		password VARCHAR(60)
)ENGINE=InnoDB;

CREATE TABLE partida (
		id INT not null,
		PRIMARY KEY(id),
		fecha_hora VARCHAR(40),
		duracion INT,
		ganador VARCHAR(60)
)ENGINE=InnoDB;

CREATE TABLE participacion (
		idJ INT,
		idP INT,
		puntos INT,
		FOREIGN KEY (idP) REFERENCE partida(id),
		FOREIGN KEY (idJ) REFERENCE jugador(id)
)ENGINE=InnoDB;


INSERT INTO jugador VALUES (1,"David","1234");
INSERT INTO jugador VALUES (2,"Angel","2222");
INSERT INTO jugador VALUES (3,"Chaohao","1111");
INSERT INTO jugador VALUES (4,"Adrià","3333");

INSERT INTO partida VALUES (1,"29/03/2020 15:30",10,"David");
INSERT INTO partida VALUES (2,"22/11/2023 20:44",30,"Angel");
INSERT INTO partida VALUES (3,"19/12/2023 15:38",40,"David");

INSERT INTO participacion(idJ, idP, puntos) VALUES (1,1,20);
INSERT INTO participacion(idJ, idP, puntos) VALUES (1,2,60);
INSERT INTO participacion(idJ, idP, puntos) VALUES (2,3,20);
INSERT INTO participacion(idJ, idP, puntos) VALUES (2,4,20);
INSERT INTO participacion(idJ, idP, puntos) VALUES (3,4,20);
INSERT INTO participacion(idJ, idP, puntos) VALUES (1,3,20);




