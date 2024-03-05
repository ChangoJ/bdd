--crear la tabla registro_entrada
drop table registro_entrada
create table registro_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	CONSTRAINT registro_entrada_pk PRIMARY KEY(codigo_registro) 
)

select * from registro_entrada