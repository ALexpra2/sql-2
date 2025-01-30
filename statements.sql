

INSERT INTO usuarios (nombre, apellido, email, edad) VALUES
('Juan', 'Gomez', 'juan.gomez@example.com', 28),
('Maria', 'Lopez', 'maria.lopez@example.com', 32),
('Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', 25),
('Laura', 'Fernandez', 'laura.fernandez@example.com', 30),
('Pedro', 'Martinez', 'pedro.martinez@example.com', 22),
('Ana', 'Hernandez', 'ana.hernandez@example.com', 35),
('Miguel', 'Perez', 'miguel.perez@example.com', 28),
('Sofia', 'Garcia', 'sofia.garcia@example.com', 26),
('Javier', 'Diaz', 'javier.diaz@example.com', 31),
('Luis', 'Sanchez', 'luis.sanchez@example.com', 27),
('Elena', 'Moreno', 'elena.moreno@example.com', 29),
('Daniel', 'Romero', 'daniel.romero@example.com', 33),
('Paula', 'Torres', 'paula.torres@example.com', 24),
('Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', 28),
('Carmen', 'Vega', 'carmen.vega@example.com', 29),
('Adrian', 'Molina', 'adrian.molina@example.com', 34),
('Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', 26),
('Hector', 'Ortega', 'hector.ortega@example.com', 30),
('Raquel', 'Serrano', 'raquel.serrano@example.com', 32),
('Alberto', 'Reyes', 'alberto.reyes@example.com', 28);

SELECT * FROM usuarios;






/* Relación tipo 1:1 */
-- PASO 1

CREATE TABLE sql2.usuarios (
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
edad INT
);

INSERT INTO usuarios (nombre, apellido, email, edad) VALUES
('Juan', 'Gomez', 'juan.gomez@example.com', 28),
('Maria', 'Lopez', 'maria.lopez@example.com', 32),
('Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', 25),
('Laura', 'Fernandez', 'laura.fernandez@example.com', 30),
('Pedro', 'Martinez', 'pedro.martinez@example.com', 22),
('Ana', 'Hernandez', 'ana.hernandez@example.com', 35),
('Miguel', 'Perez', 'miguel.perez@example.com', 28),
('Sofia', 'Garcia', 'sofia.garcia@example.com', 26),
('Javier', 'Diaz', 'javier.diaz@example.com', 31),
('Luis', 'Sanchez', 'luis.sanchez@example.com', 27),
('Elena', 'Moreno', 'elena.moreno@example.com', 29),
('Daniel', 'Romero', 'daniel.romero@example.com', 33),
('Paula', 'Torres', 'paula.torres@example.com', 24),
('Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', 28),
('Carmen', 'Vega', 'carmen.vega@example.com', 29),
('Adrian', 'Molina', 'adrian.molina@example.com', 34),
('Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', 26),
('Hector', 'Ortega', 'hector.ortega@example.com', 30),
('Raquel', 'Serrano', 'raquel.serrano@example.com', 32),
('Alberto', 'Reyes', 'alberto.reyes@example.com', 28);

SELECT * FROM usuarios;

-- PASO 2

CREATE TABLE roles (
id_rol INT AUTO_INCREMENT PRIMARY KEY,
nombre_rol VARCHAR(50) NOT NULL
);

-- Insertar datos de roles
INSERT INTO roles (nombre_rol) VALUES
('Bronce'),
('Plata'),
('Oro'),
('Platino');

SELECT * FROM roles;

-- PASO 3

ALTER TABLE usuarios ADD COLUMN id_rol INT;
ALTER TABLE usuarios ADD FOREIGN KEY (id_rol) REFERENCES roles(id_rol);

UPDATE usuarios SET id_rol = 1 WHERE (id_usuario = 1);
UPDATE usuarios SET id_rol = 2 WHERE (id_usuario = 2);
UPDATE usuarios SET id_rol = 3 WHERE (id_usuario = 3);
UPDATE usuarios SET id_rol = 3 WHERE (id_usuario = 4);
UPDATE usuarios SET id_rol = 4 WHERE (id_usuario = 5);
UPDATE usuarios SET id_rol = 2 WHERE (id_usuario = 6);
UPDATE usuarios SET id_rol = 3 WHERE (id_usuario = 7);
UPDATE usuarios SET id_rol = 1 WHERE (id_usuario = 8);
UPDATE usuarios SET id_rol = 1 WHERE (id_usuario = 9);
UPDATE usuarios SET id_rol = 2 WHERE (id_usuario = 10);
UPDATE usuarios SET id_rol = 3 WHERE (id_usuario = 11);
UPDATE usuarios SET id_rol = 4 WHERE (id_usuario = 12);
UPDATE usuarios SET id_rol = 3 WHERE (id_usuario = 13);
UPDATE usuarios SET id_rol = 4 WHERE (id_usuario = 14);
UPDATE usuarios SET id_rol = 2 WHERE (id_usuario = 15);
UPDATE usuarios SET id_rol = 1 WHERE (id_usuario = 16);
UPDATE usuarios SET id_rol = 2 WHERE (id_usuario = 17);
UPDATE usuarios SET id_rol = 4 WHERE (id_usuario = 18);
UPDATE usuarios SET id_rol = 3 WHERE (id_usuario = 19);
UPDATE usuarios SET id_rol = 2 WHERE (id_usuario = 20);

SELECT * FROM usuarios;

-- PASO 4

SELECT usuarios.id_usuario, usuarios.nombre, usuarios.apellido, usuarios.email, usuarios.edad, roles.nombre_rol FROM usuarios 
JOIN roles ON usuarios.id_rol = roles.id_rol; 

/* Relación tipo 1:N */
-- PASO 1

CREATE TABLE categorias (
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nombre_categoria VARCHAR(100) NOT NULL
);

INSERT INTO categorias (nombre_categoria) VALUES
('Electrónicos'),
('Ropa y Accesorios'),
('Libros'),
('Hogar y Cocina'),
('Deportes y aire libre'),
('Salud y cuidado personal'),
('Herramientas y mejoras para el hogar'),
('Juguetes y juegos'),
('Automotriz'),
('Música y Películas');

SELECT * FROM categorias;

-- PASO 2

ALTER TABLE usuarios ADD COLUMN id_categoria INT;

-- PASO 3

UPDATE usuarios SET id_categoria = 1 WHERE id_usuario IN (1, 5);
UPDATE usuarios SET id_categoria = 2 WHERE id_usuario IN (2, 6);
UPDATE usuarios SET id_categoria = 3 WHERE id_usuario IN (3, 7);
UPDATE usuarios SET id_categoria = 4 WHERE id_usuario IN (4, 8);
UPDATE usuarios SET id_categoria = 5 WHERE id_usuario IN (13, 17);
UPDATE usuarios SET id_categoria = 6 WHERE id_usuario IN (14, 18);
UPDATE usuarios SET id_categoria = 7 WHERE id_usuario IN (15, 19);
UPDATE usuarios SET id_categoria = 8 WHERE id_usuario IN (16, 20);
UPDATE usuarios SET id_categoria = 9 WHERE id_usuario IN (11, 12);
UPDATE usuarios SET id_categoria = 9 WHERE id_usuario IN (9, 10);

SELECT * FROM usuarios;

-- PASO 4

SELECT usuarios.id_usuario, usuarios.nombre, usuarios.apellido, usuarios.email, usuarios.edad, roles.nombre_rol, categorias.nombre_categoria
FROM usuarios 
JOIN roles ON usuarios.id_rol = roles.id_rol 
JOIN categorias ON usuarios.id_categoria = categorias.id_categoria;

/* Relación tipo N:M */
-- PASO 1

CREATE TABLE usuarios_categorias (
id_usuario_categoria INT PRIMARY KEY AUTO_INCREMENT,
id_usuario INT,
id_categoria INT,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- PASO 2

INSERT INTO usuarios_categorias (id_usuario, id_categoria) VALUES
(1, 1), (1, 2), (1, 3),
(2, 4), (2, 5),
(3, 6), (3, 7),
(4, 8), (4, 9), (4, 10),
(5, 1), (5,2),
(6, 1), (6, 2), (6, 3),
(7, 4), (7, 5),
(8, 6), (8, 7),
(9, 8), (9, 9), (9, 10),
(10, 4), (10, 5),
(11, 1), (11, 2), (11, 3),
(12, 4), (12, 5),
(13, 6), (13, 7),
(14, 8), (14, 9), (14, 10),
(15, 1), (15,2),
(16, 1), (16, 2), (16, 3),
(17, 4), (17, 5),
(18, 6), (18, 7),
(19, 8), (19, 9), (19, 10),
(20, 4), (20, 5);


SELECT * FROM usuarios_categorias;
SELECT * FROM usuarios;
SELECT * FROM categorias; 
SELECT * FROM roles;

-- PASO 3

SELECT usuarios.id_usuario, usuarios.nombre, usuarios.apellido, usuarios.email, usuarios.edad, roles.nombre_rol, categorias.nombre_categoria
FROM usuarios
JOIN roles ON usuarios.id_rol = roles.id_rol
JOIN usuarios_categorias ON usuarios.id_usuario = usuarios_categorias.id_usuario
JOIN categorias ON usuarios_categorias.id_categoria = categorias.id_categoria;
