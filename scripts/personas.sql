--crear la tabla personas
drop table personas
drop table prestamo
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

CREATE TABLE prestamo(
	cedula char(10),
	monto MONEY,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	CONSTRAINT prestamo_pk PRIMARY KEY(cedula)
)


alter table prestamo
add constraint prestamo_cedula_fk
foreign key(cedula)
references personas(cedula);


SELECT * FROM personas
SELECT * FROM prestamo



ALTER TABLE personas 
add column estado_civil_codigo char(1) not null;


CREATE TABLE estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key(codigo)
	
)

alter table personas
add constraint personas_estado_civil_fk
foreign key(estado_civil_codigo)
references estado_civil(codigo);

insert into estado_civil(codigo, descripcion)
values('U', 'UNION LIBRE');

insert into estado_civil(codigo, descripcion)
values('C', 'CASADO');

insert into estado_civil(codigo, descripcion)
values('S', 'SOLTERO');


INSERT INTO personas(cedula,nombre,apellido,estado_civil_codigo)
VALUES ('1726850887', 'Santiago','Mosquera','U')

SELECT * FROM personas

SELECT * FROM estado_civil;





