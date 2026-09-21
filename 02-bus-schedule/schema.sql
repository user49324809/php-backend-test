CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE stops (
    id SERIAL PRIMARY KEY,
    city_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,

    CONSTRAINT fk_stops_city
        FOREIGN KEY (city_id)
        REFERENCES cities(id)
);

INSERT INTO stops (city_id, name) VALUES
(1, 'Автовокзал Казань'),
(1, 'Центральный рынок'),
(2, 'Автовокзал Уфа'),
(3, 'Автовокзал Самара'),
(4, 'Щёлковский автовокзал'),
(5, 'Автовокзал Пермь');