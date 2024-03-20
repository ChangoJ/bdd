-- Insertar  videojuegos
INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion) VALUES
(1, 'Call of Duty: Modern Warfare', 'Juego de guerra moderna', 9),
(2, 'God of War', 'Aventura épica de batallas mitológicas', 10),
(3, 'Counter-Strike: Global Offensive', 'Juego de disparos en equipo', 8),
(4, 'Civilization VI', 'Construye y gobierna tu propia civilización', 9),
(5, 'Dead Space', 'Survival horror en el espacio', 8),
(6, 'Doom Eternal', 'Combate frenético contra demonios', 9),
(7, 'Gears of War', 'Batallas contra monstruos en un mundo postapocalíptico', 8),
(8, 'Command & Conquer', 'Estrategia en tiempo real', 7),
(9, 'Crash Bandicoot', 'Aventuras de un marsupial en un mundo de plataformas', 8),
(10, 'Destiny 2', 'Combates intergalácticos contra enemigos alienígenas', 8);

-- Insertar  plataformas
INSERT INTO plataformas (id_plataforma, nombre_plataforma, codigo_videojuego) VALUES
(1, 'PlayStation 4', 2),
(2, 'Xbox One', 1),
(3, 'PC', 1),
(4, 'PlayStation 5', 2),
(5, 'Xbox Series X', 1),
(6, 'PC', 2),
(7, 'PC', 3),
(8, 'Xbox One', 4),
(9, 'PlayStation 4', 5),
(10, 'PC', 6);