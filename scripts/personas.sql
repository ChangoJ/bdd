--crear la tabla personas
drop table personas
create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time ,
	cantidad_ahorrada money,
	numero_hijos int,
	CONSTRAINT personas_pk PRIMARY KEY(cedula) 
)

INSERT INTO personas(cedula,nombre,apellido)
VALUES ('1726850887', 'Santiago','Mosquera')

SELECT * FROM personas

