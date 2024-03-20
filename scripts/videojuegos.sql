--crear la tabla videojuegos
drop table videojuegos;
drop table plataformas;
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	CONSTRAINT videojuegos_pk PRIMARY KEY(codigo) 
)

CREATE TABLE plataformas(
	id_plataforma INT,
	nombre_plataforma VARCHAR(50) NOT null,
	codigo_videojuego INT,
	CONSTRAINT plataformas_pk PRIMARY KEY(id_plataforma)
);

ALTER TABLE plataformas
ADD CONSTRAINT plataformas_codigo_videojuego_fk
FOREIGN KEY(codigo_videojuego)
REFERENCES videojuegos(codigo);

select * from videojuegos;
select * from plataformas;


SELECT * FROM videojuegos WHERE nombre LIKE 'C%'
SELECT * FROM videojuegos WHERE valoracion BETWEEN 9 AND 10;
SELECT * FROM videojuegos WHERE descripcion IS null 

UPDATE videojuegos SET descripcion = 'Mejor puntuado' WHERE valoracion > 9

select codigo,nombre,valoracion from videojuegos


DELETE FROM videojuegos WHERE valoracion < 7

SELECT * FROM videojuegos
WHERE nombre LIKE '%C%' OR valoracion = 7;

SELECT * FROM videojuegos
WHERE (codigo BETWEEN 3 AND 7) OR valoracion = 7;

SELECT * FROM videojuegos
WHERE (descripcion LIKE '%guerra%' AND valoracion > 7 AND nombre LIKE 'C%')
OR (valoracion > 8 AND nombre LIKE 'D%');
