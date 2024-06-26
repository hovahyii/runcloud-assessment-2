CREATE DATABASE IF NOT EXISTS mywall;
USE mywall;

CREATE TABLE IF NOT EXISTS messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    avatar VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS likes (
    id INT PRIMARY KEY,
    count INT DEFAULT 0
);

INSERT INTO likes (id, count) VALUES (1, 0) ON DUPLICATE KEY UPDATE id=id;
