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

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (11, '10010', 300, 'D', '2024-09-05', '15:15:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (12, '10010', 300, 'D', '2024-08-05', '15:15:00');

SELECT * FROM transacciones WHERE tipo='D'
SELECT * FROM transacciones WHERE monto BETWEEN money(200) AND money(2000)
SELECT codigo,monto,tipo,fecha FROM transacciones WHERE fecha IS NOT null

select * from transacciones

UPDATE transacciones SET tipo= 'T' WHERE monto > money(100) AND monto < money(500)
AND EXTRACT(MONTH FROM fecha) = 9
AND EXTRACT(HOUR FROM hora) >= 14 AND EXTRACT(HOUR FROM hora) < 20;


DELETE FROM transacciones WHERE  EXTRACT(HOUR FROM hora) BETWEEN 14 AND 20 
AND EXTRACT(MONTH FROM fecha) = 8 
AND EXTRACT(YEAR FROM fecha) = EXTRACT(YEAR FROM CURRENT_DATE);


SELECT * FROM transacciones
WHERE tipo = 'C' AND numero_cuenta BETWEEN '22201' AND '22004';

SELECT * FROM transacciones
WHERE tipo = 'D' AND fecha = '2024-05-25' AND numero_cuenta BETWEEN '22007' AND '22010';

SELECT * FROM transacciones
WHERE codigo BETWEEN 1 AND 5 
AND (numero_cuenta = '22002' OR numero_cuenta = '22004') 
AND fecha IN ('2024-05-26', '2024-05-29');
