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

select * from estudiantes