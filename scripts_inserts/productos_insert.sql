--otra forma de ingresar insert
-- Inserts productos
select * from productos;
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES
(1, 'Martillo', 'Herramienta para golpear', 10.99, 50),
(2, 'Taladro', 'Herramienta para perforar', 79.99, 20),
(3, 'Destornillador', 'Herramienta para apretar tornillos', 5.99, 100),
(4, 'Llave inglesa', NULL, 8.50, 30),
(5, 'Pintura', 'Lata de pintura blanca', 15.75, 15),
(6, 'Mesa', 'Mueble para colocar objetos', 99.99, 10),
(7, 'Silla', 'Mueble para sentarse', 49.50, 25),
(8, 'Martillo neumático', 'Herramienta para trabajo pesado', 199.99, 5),
(9, 'Escalera', 'Herramienta para alcanzar alturas', 69.99, 12),
(10, 'Mango', 'Parte de herramientas manuales', 3.25, 50);

-- Inserts ventas
INSERT INTO ventas (id_venta, codigo_producto, fecha_venta, cantidad) VALUES
(6, 2, '2024-03-21', 2),
(7, 4, '2024-03-21', 1),
(8, 7, '2024-03-21', 3),
(9, 9, '2024-03-22', 2),
(10, 5, '2024-03-22', 5),
(11, 1, '2024-03-23', 3),
(12, 3, '2024-03-23', 1),
(13, 6, '2024-03-24', 4),
(14, 8, '2024-03-24', 2),
(15, 10, '2024-03-25', 3);