--crear la tabla registro_entrada
drop table registro_entrada
create table registro_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	CONSTRAINT registro_entrada_pk PRIMARY KEY(codigo_registro) 
)

ALTER TABLE registro_entrada
ADD COLUMN codigo_empleado int NOT null;

CREATE TABLE empleado(
	codigo_empleado INT NOT NULL,
	nombre VARCHAR(25) NOT null,
	fecha DATE NOT null,
	hora TIME NOT null,
	CONSTRAINT empleado_pk PRIMARY KEY(codigo_empleado)
);

ALTER TABLE registro_entrada
ADD CONSTRAINT registro_entrada_codigo_empleado_fk
FOREIGN KEY(codigo_empleado)
REFERENCES empleado(codigo_empleado);


select * from registro_entrada;
select * from empleado;


SELECT cedula_empleado,fecha,hora FROM registro_entrada
SELECT * FROM registro_entrada WHERE hora BETWEEN '7:00' AND '14:00'
SELECT * FROM registro_entrada WHERE hora > '8:00'

UPDATE registro_entrada SET cedula_empleado = '082345679' WHERE DATE_PART('month', fecha) = 8;



DELETE FROM registro_entrada WHERE EXTRACT(MONTH FROM fecha) = 6

SELECT * FROM registro_entrada
WHERE EXTRACT(MONTH FROM fecha) = 9 OR cedula_empleado LIKE '17%';

SELECT * FROM registro_entrada
WHERE EXTRACT(MONTH FROM fecha) = 8 
AND cedula_empleado LIKE '17%' 
AND hora BETWEEN '08:00:00' AND '12:00:00';

SELECT * FROM registro_entrada
WHERE (EXTRACT(MONTH FROM fecha) = 8 AND cedula_empleado LIKE '17%' AND hora BETWEEN '08:00:00' AND '12:00:00')
OR (EXTRACT(MONTH FROM fecha) = 9 AND cedula_empleado LIKE '08%' AND hora BETWEEN '09:00:00' AND '13:00:00');