--crear la tabla cuentas
drop table cuentas
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	descripcion varchar(200),
	fecha_creacion date not null,
	saldo money not null,
	CONSTRAINT cuentas_pk PRIMARY KEY(numero_cuenta) 
)

select * from cuentas