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

INSERT INTO cuentas (numero_cuenta, cedula_propietario, descripcion, fecha_creacion, saldo)
VALUES ('10001', '12345', 'Cuenta de ahorros', '2024-01-01', 1000.00);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, descripcion, fecha_creacion, saldo)
VALUES ('10002', '23456', 'Cuenta corriente', '2024-01-02', 1500.50);


INSERT INTO cuentas (numero_cuenta, cedula_propietario, descripcion, fecha_creacion, saldo)
VALUES ('10003', '34567', 'Cuenta de inversión', '2024-01-03', 20000.25);


INSERT INTO cuentas (numero_cuenta, cedula_propietario, descripcion, fecha_creacion, saldo)
VALUES ('10004', '45678', 'Cuenta de nómina', '2024-01-04', 500.75);


INSERT INTO cuentas (numero_cuenta, cedula_propietario, descripcion, fecha_creacion, saldo)
VALUES ('10005', '56789', 'Cuenta de ahorros', '2024-01-05', 3000.00);


INSERT INTO cuentas (numero_cuenta, cedula_propietario, descripcion, fecha_creacion, saldo)
VALUES ('10006', '67890', 'Cuenta corriente', '2024-01-06', 4500.25);


INSERT INTO cuentas (numero_cuenta, cedula_propietario, descripcion, fecha_creacion, saldo)
VALUES ('10007', '78901', 'Cuenta de inversión', '2024-01-07', 10000.50);


INSERT INTO cuentas (numero_cuenta, cedula_propietario, descripcion, fecha_creacion, saldo)
VALUES ('10008', '89012', 'Cuenta de nómina', '2024-01-08', 750.80);


INSERT INTO cuentas (numero_cuenta, cedula_propietario, descripcion, fecha_creacion, saldo)
VALUES ('10009', '90123', 'Cuenta de ahorros', '2024-01-09', 6000.00);


INSERT INTO cuentas (numero_cuenta, cedula_propietario, descripcion, fecha_creacion, saldo)
VALUES ('10010', '01234', 'Cuenta corriente', '2024-0-10', 8000.75);


SELECT numero_cuenta,saldo from cuentas 
SELECT * FROM cuentas WHERE fecha_creacion BETWEEN NOW() - INTERVAL '2 months' AND NOW();
SELECT numero_cuenta,saldo from cuentas  WHERE fecha_creacion BETWEEN NOW() - INTERVAL '2 months' AND NOW();

UPDATE cuentas SET saldo = money(10) WHERE cedula_propietario LIKE '17%'

select * from cuentas