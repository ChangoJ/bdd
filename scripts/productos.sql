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

INSERT INTO productos (codigo, nombre, descripcion, precio, stock)
VALUES (101, 'Camiseta Roja', 'Camiseta de algodón en color rojo', 19.99, 50);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock)
VALUES (102, 'Jeans Azules', 'Jeans de mezclilla en tono azul', 39.99, 30);


INSERT INTO productos (codigo, nombre, descripcion, precio, stock)
VALUES (103, 'Zapatos de Cuero', 'Zapatos formales de cuero genuino', 69.99, 20);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock)
VALUES (104, 'Mochila Negra', 'Mochila resistente en color negro', 29.99, 40);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock)
VALUES (105, 'Reloj Digital', 'Reloj digital con alarma y cronómetro', 15.99, 60);

INSERT INTO productos (codigo, nombre, precio, stock)
VALUES (106, 'Camiseta Verde', 14.99, 70);

INSERT INTO productos (codigo, nombre, precio, stock)
VALUES (107, 'Pantalones Cortos', 24.99, 40);

INSERT INTO productos (codigo, nombre, precio, stock)
VALUES (108, 'Calcetines Deportivos', 9.99, 100);

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

