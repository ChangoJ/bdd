--crear la tabla registro_entrada
drop table registro_entrada
create table registro_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	CONSTRAINT registro_entrada_pk PRIMARY KEY(codigo_registro) 
)


INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (1, '1234567890', '2024-03-05', '08:00:00');


INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (2, '2345678901', '2024-03-05', '08:15:00');


INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (3, '3456789012', '2024-03-05', '08:30:00');


INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (4, '4567890123', '2024-03-05', '08:45:00');

INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (5, '5678901234', '2024-03-05', '09:00:00');


INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (6, '6789012345', '2024-03-05', '09:15:00');


INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (7, '7890123456', '2024-03-05', '09:30:00');


INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (8, '8901234567', '2024-03-05', '09:45:00');


INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (9, '9012345678', '2024-03-05', '10:00:00');


INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (10, '0123456789', '2024-03-05', '10:15:00');

INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (11, '0123456789', '2024-08-05', '10:15:00');


SELECT cedula_empleado,fecha,hora FROM registro_entrada
SELECT * FROM registro_entrada WHERE hora BETWEEN '7:00' AND '14:00'
SELECT * FROM registro_entrada WHERE hora > '8:00'

UPDATE registro_entrada SET cedula_empleado = '082345679' WHERE DATE_PART('month', fecha) = 8;

select * from registro_entrada