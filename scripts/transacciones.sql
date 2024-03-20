--crear la tabla transacciones
drop table transacciones
drop table banco
create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	CONSTRAINT transacciones_pk PRIMARY KEY(codigo) 
)


CREATE TABLE banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key(codigo_banco)
)

ALTER TABLE banco
ADD CONSTRAINT banco_codigo_transaccion_fk
FOREIGN KEY(codigo_transaccion)
REFERENCES transacciones(codigo);

SELECT * FROM transacciones
SELECT * FROM banco

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
