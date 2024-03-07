--crear la tabla videojuegos
drop table videojuegos
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	CONSTRAINT videojuegos_pk PRIMARY KEY(codigo) 
)

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (1, 'The Witcher 3: Wild Hunt', 'Un juego de rol de acción desarrollado por CD Projekt Red.', 9);


INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (2, 'Red Dead Redemption 2', 'Un videojuego de acción-aventura desarrollado por Rockstar Games.', 10);


INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (3, 'The Legend of Zelda: Breath of the Wild', 'Un juego de acción y aventuras desarrollado por Nintendo.', 9);


INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (4, 'Fortnite', 'Un juego de batalla real desarrollado por Epic Games.', 8);


INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (5, 'Minecraft', 'Un juego de construcción y aventuras desarrollado por Mojang Studios.', 9);

INSERT INTO videojuegos (codigo, nombre, valoracion)
VALUES (6, 'Super Mario Odyssey', 9);

INSERT INTO videojuegos (codigo, nombre, valoracion)
VALUES (7, 'God of War', 10);

INSERT INTO videojuegos (codigo, nombre, valoracion)
VALUES (8, 'The Last of Us Part II', 9);


SELECT * FROM videojuegos WHERE nombre LIKE 'C%'
SELECT * FROM videojuegos WHERE valoracion BETWEEN 9 AND 10;
SELECT * FROM videojuegos WHERE descripcion IS null 

UPDATE videojuegos SET descripcion = 'Mejor puntuado' WHERE valoracion > 9

select codigo,nombre,valoracion from videojuegos
select * from videojuegos