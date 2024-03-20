--crear la tabla productos
drop table productos
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	CONSTRAINT productos_pk PRIMARY KEY(codigo) 
)

CREATE TABLE ventas(
	id_venta INT,
	codigo_producto INT NOT null,
	fecha_venta DATE NOT null,
	cantidad INT,
	CONSTRAINT ventas_pk PRIMARY KEY(id_venta)
);

ALTER TABLE ventas
ADD CONSTRAINT ventas_codigo_producto_fk
FOREIGN KEY(codigo_producto)
REFERENCES productos(codigo);



select * from ventas;
select * from productos;



SELECT * from productos WHERE nombre LIKE 'Q%'
SELECT * from productos WHERE descripcion IS null
SELECT * from productos WHERE precio BETWEEN money(2) AND money(3)

select codigo,nombre,precio,stock from productos
select * from productos

UPDATE productos SET stock = 0 WHERE descripcion IS NULL;

DELETE FROM productos WHERE descripcion IS null;

SELECT * FROM productos
WHERE stock = 10 AND precio < money(10);

SELECT nombre, stock FROM productos
WHERE nombre LIKE '%m%' OR descripcion LIKE '% %';

SELECT nombre FROM productos
WHERE descripcion IS NULL OR stock = 0;

