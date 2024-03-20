
-- Inserciones para usuarios

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
VALUES ('11111', 'Juan', 'Pérez', 'Ahorros', 5000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
VALUES ('22222', 'María', 'González', 'Corriente', 10000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
VALUES ('33333', 'Pedro', 'Martínez', 'Ahorros', 3000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
VALUES ('44444', 'Ana', 'López', 'Corriente', 8000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
VALUES ('55555', 'Carlos', 'Sánchez', 'Ahorros', 2000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
VALUES ('66666', 'Laura', 'Hernández', 'Corriente', 7000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
VALUES ('77777', 'Daniel', 'Díaz', 'Ahorros', 4000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
VALUES ('88888', 'Elena', 'Vega', 'Corriente', 6000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
VALUES ('99999', 'Sofía', 'Ruiz', 'Ahorros', 4500.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
VALUES ('10101', 'Pablo', 'Ramírez', 'Corriente', 7500.00);


-- Inserciones para cuentas

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
VALUES ('001', '11111', '2022-08-25', 500.00);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
VALUES ('002', '22222', '2023-01-10', 800.00);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
VALUES ('003', '33333', '2022-10-02', 450.00);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
VALUES ('004', '44444', '2023-05-15', 700.00);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
VALUES ('005', '55555', '2023-09-21', 200.00);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
VALUES ('006', '66666', '2023-03-08', 300.00);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
VALUES ('007', '77777', '2023-07-30', 600.00);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
VALUES ('008', '88888', '2022-09-10', 150.00);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
VALUES ('009', '99999', '2023-08-21', 950.00);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
VALUES ('010', '10101', '2023-06-05', 400.00);