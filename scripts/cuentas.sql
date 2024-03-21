--crear la tabla cuentas
drop table cuentas;
drop table usuario;

create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	CONSTRAINT cuentas_pk PRIMARY KEY(numero_cuenta) 
);


CREATE TABLE usuario(
	cedula char(5) NOT null,
	nombre varchar(25) NOT null,
	apellido varchar(25),
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	CONSTRAINT usuario_pk PRIMARY KEY(cedula)
);

ALTER TABLE cuentas
ADD CONSTRAINT cuentas_cedula_propietario_fk
FOREIGN KEY(cedula_propietario)
REFERENCES usuario(cedula);



select * from cuentas;
select * from usuario;

SELECT numero_cuenta,saldo from cuentas 
SELECT * FROM cuentas WHERE fecha_creacion BETWEEN NOW() - INTERVAL '2 months' AND NOW();
SELECT numero_cuenta,saldo from cuentas  WHERE fecha_creacion BETWEEN NOW() - INTERVAL '2 months' AND NOW();

UPDATE cuentas SET saldo = money(10) WHERE cedula_propietario LIKE '17%'



DELETE FROM cuentas WHERE cedula_propietario LIKE '10%'

SELECT numero_cuenta, saldo FROM cuentas
WHERE saldo > money(100) AND saldo < money(1000);

SELECT * FROM cuentas
WHERE fecha_creacion BETWEEN CURRENT_DATE - INTERVAL '1 year' AND CURRENT_DATE;

SELECT * FROM cuentas
WHERE saldo = 0 OR cedula_propietario LIKE '%2';