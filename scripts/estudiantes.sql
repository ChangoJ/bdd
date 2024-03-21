--crear la tabla estudiantes
drop table estudiantes
create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50),
	email varchar(50) not null,
	fecha_nacimiento date not null,
	CONSTRAINT estudiantes_pk PRIMARY KEY(cedula) 
)

ALTER TABLE estudiantes
ADD COLUMN codigo_profesor int;

CREATE TABLE Profesores(
	codigo INT,
	nombre VARCHAR(50) NOT null,
	CONSTRAINT Profesores_pk PRIMARY KEY(codigo)
);

ALTER TABLE estudiantes
ADD CONSTRAINT estudiantes_codigo_profesor_fk
FOREIGN KEY(codigo_profesor)
REFERENCES Profesores(codigo);




SELECT * from estudiantes;
SELECT * from Profesores;

SELECT cedula,nombre from estudiantes
SELECT nombre from estudiantes WHERE cedula LIKE '17%'
SELECT nombre,apellido from estudiantes WHERE nombre LIKE 'A%'
SELECT nombre from estudiantes WHERE nombre LIKE 'A%'

UPDATE estudiantes SET apellido = 'Hernández' WHERE cedula LIKE '17%'



DELETE FROM estudiantes WHERE cedula LIKE '%10'