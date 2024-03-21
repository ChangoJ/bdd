---CONSULTA CUENTAS

SELECT c.numero_cuenta, u.nombre
FROM cuentas c, usuario u WHERE c.cedula_propietario = u.cedula
AND c.saldo BETWEEN MONEY(100.00) AND MONEY(1000.00);

SELECT *
FROM cuentas c, usuario u
WHERE fecha_creacion BETWEEN '2022-09-21' AND '2023-09-21'
AND c.cedula_propietario = u.cedula;

--CONSULTA CLIENTES

SELECT nombre, apellido
FROM clientes  WHERE cedula like '%7%';

SELECT *
FROM clientes  WHERE cedula = '1777777777';

--CONSULTA ESTUDIANTES

SELECT p.codigo, e.nombre, e.apellido
FROM Profesores p, estudiantes e  WHERE e.apellido like '%n%';

SELECT *
FROM estudiantes e, Profesores p WHERE p.nombre like 'Francisco%';

--CONSULTA PERSONAS

SELECT per.cantidad_ahorrada, pre.monto, pre.garante
FROM personas per, prestamo pre  WHERE pre.monto BETWEEN MONEY(100) AND MONEY(1000);

SELECT *
FROM personas WHERE cedula = '1234567891'

--CONSULTA PRODUCTOS

SELECT p.nombre, p.stock, v.cantidad
FROM productos p, ventas v WHERE p.nombre like '%n%' or p.descripcion = '0';

SELECT p.nombre, p.stock
FROM productos p, ventas v WHERE v.codigo_producto = 5; 

--CONSULTA TRANSACCIONES

SELECT *
FROM transacciones WHERE tipo = 'C' and numero_cuenta BETWEEN '22001' and '22004';

SELECT *
FROM transacciones t, banco b WHERE  t.codigo= b.codigo_transaccion and b.codigo_transaccion = 1;


--CONSULTA VIDEOJUEGOS

SELECT v.nombre, v.descripcion, v.valoracion, p.nombre_plataforma
FROM videojuegos v, plataformas p WHERE (v.descripcion like '%guerra%' 
and v.valoracion > 7) or (v.nombre like 'C%' and v.valoracion >8 or v.nombre like 'D');


SELECT p.*
FROM plataformas p, videojuegos v 
WHERE v.codigo = 2;

--CONSULTA registro entrada y empleado

SELECT r.cedula_empleado, e.fecha, e.nombre
FROM empleado e, registro_entrada r
WHERE (r.fecha BETWEEN '2023-08-01' and '2023-08-31')
or (r.cedula_empleado like '17%' and r.hora BETWEEN '08:00' and '12:00')
or (r.fecha BETWEEN '2023-10-06' and '2023-10-20' and r.cedula_empleado like '08%'
and r.hora BETWEEN '09:00' and '13:00')


SELECT r.codigo_registro, e.nombre
FROM empleado e,registro_entrada r 
WHERE r.codigo_empleado = e.codigo_empleado and r.codigo_empleado = '2201';