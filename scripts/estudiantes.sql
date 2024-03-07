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


INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('1234567890', 'Juan', 'Pérez', 'juan@example.com', '2000-05-15');


INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('2345678901', 'María', 'González', 'maria@example.com', '2001-08-20');


INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('3456789012', 'Luis', 'Martínez', 'luis@example.com', '1999-11-10');


INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('4567890123', 'Ana', 'Rodríguez', 'ana@example.com', '2002-03-25');


INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('5678901234', 'Carlos', 'López', 'carlos@example.com', '2003-06-30');


INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('6789012345', 'Laura', 'Sánchez', 'laura@example.com', '2000-09-05');


INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('7890123456', 'Pedro', 'Fernández', 'pedro@example.com', '1998-12-15');


INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('8901234567', 'Sofía', 'Díaz', 'sofia@example.com', '2001-02-10');


SELECT cedula,nombre from estudiantes
SELECT nombre from estudiantes WHERE cedula LIKE '17%'
SELECT nombre,apellido from estudiantes WHERE nombre LIKE 'A%'
SELECT nombre from estudiantes WHERE nombre LIKE 'A%'

UPDATE estudiantes SET apellido = 'Hernández' WHERE cedula LIKE '17%'

SELECT * from estudiantes