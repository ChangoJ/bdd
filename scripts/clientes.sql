drop table clientes;


CREATE TABLE clientes(
	cedula char(10),
	nombre varchar(50) NOT null,
	apellido varchar(50) NOT null,
	CONSTRAINT clientes_pk PRIMARY KEY(cedula)
);

CREATE TABLE compras(
	id_compra int,
	cedula char(10) NOT null,
	fecha_compra DATE not null,
	monto decimal(10,2) NOT null,
	CONSTRAINT id_compra PRIMARY KEY(id_compra)
);

select * from compras;

ALTER TABLE compras
ADD CONSTRAINT compras_cedula_fk
FOREIGN KEY(cedula)
REFERENCES clientes(cedula);


