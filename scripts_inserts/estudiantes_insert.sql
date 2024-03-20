-- Inserciones Profesores
INSERT INTO Profesores (codigo, nombre)
VALUES (1, 'Francisco García');

INSERT INTO Profesores (codigo, nombre)
VALUES (2, 'Miguel Ángel');

INSERT INTO Profesores (codigo, nombre)
VALUES (3, 'Francisco Martínez');

INSERT INTO Profesores (codigo, nombre)
VALUES (4, 'Elena González');

INSERT INTO Profesores (codigo, nombre)
VALUES (5, 'Francisca López');

-- Inserciones estudiantes
INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES ('6789012345', 'Luisa', 'González', 'luisa@example.com', '2000-08-18', 1);

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES ('7890123456', 'Roberto', 'Hernández', 'roberto@example.com', '2001-02-27', 2);

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES ('8901234567', 'Sofía', 'Jiménez', 'sofia@example.com', '2002-11-13', 3);

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES ('9012345678', 'Diego', 'Luna', 'diego@example.com', '2003-06-30', 4);

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES ('0123456789', 'Carolina', 'Martínez', 'carolina@example.com', '2004-04-05', 5);

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES ('1122334455', 'Lucía', 'Navarro', 'lucia@example.com', '2000-09-22', 1);

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES ('2233445566', 'Fernando', 'Rodríguez', 'fernando@example.com', '1999-07-17', 2);

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES ('3344556677', 'Marta', 'Sánchez', 'marta@example.com', '2001-03-14', 3);

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES ('4455667788', 'Daniel', 'Nuñez', 'daniel@example.com', '2002-10-09', 4);

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES ('5566778899', 'Alejandra', 'Gómez', 'alejandra@example.com', '2003-12-28', 5);