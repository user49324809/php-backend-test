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