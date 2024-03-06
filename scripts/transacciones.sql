--crear la tabla transacciones
drop table transacciones
create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	CONSTRAINT transacciones_pk PRIMARY KEY(codigo) 
)


INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (1, '10001', 500.00, 'C', '2024-03-05', '09:00:00');


INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (2, '10002', 100.50, 'D', '2024-03-05', '10:15:00');


INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (3, '10003', 3000.25, 'C', '2024-03-05', '11:30:00');


INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (4, '10004', 50.75, 'D', '2024-03-05', '12:45:00');


INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (5, '10005', 200.00, 'C', '2024-03-05', '14:00:00');


INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (6, '10006', 75.25, 'D', '2024-03-05', '15:15:00');


INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (7, '10007', 1000.50, 'C', '2024-03-05', '16:30:00');


INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (8, '10008', 75.80, 'D', '2024-03-05', '17:45:00');


INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (9, '10009', 600.00, 'C', '2024-03-05', '18:00:00');


INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (10, '10010', 800.75, 'D', '2024-03-05', '19:15:00');

select * from transacciones