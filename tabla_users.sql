CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL
);

-- Ejemplo para insertar un usuario (la clave es 'maestro123')
-- Nota: En PHP usarías password_hash() para generar esto.
INSERT INTO users (username, password_hash) 
VALUES ('admin', '$2y$10$eImiTXuWVxfM37uY4JANjOL.oMkzgn5vbgRjSlnznv.p.yZuzS962');
