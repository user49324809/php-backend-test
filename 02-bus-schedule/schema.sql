CREATE TABLE cities(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);
INSERT INTO cities(name) VALUES
('Казань'),
('Уфа'),
('Самара'),
('Москва'),
('Пермь');