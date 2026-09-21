CREATE TABLE buses (
    id SERIAL PRIMARY KEY,
    number VARCHAR(50) NOT NULL UNIQUE,
    model VARCHAR(100),
    capacity INT NOT NULL
);