CREATE DATABASE IF NOT EXISTS php_login_example
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE php_login_example;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (name, email, password, created_at)
VALUES (
    'Demo User',
    'demo@example.com',
    '$2y$12$mHniVQT8D68K86NWilO7Hu0lnAYhxmhtp974yv5FirkQdj81Xwfgq',
    NOW()
);
