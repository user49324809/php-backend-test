CREATE TABLE trips (
    id SERIAL PRIMARY KEY,
    route_id INT NOT NULL,
    bus_id INT NOT NULL,
    departure_time TIMESTAMP NOT NULL,

    FOREIGN KEY (route_id) REFERENCES routes(id),
    FOREIGN KEY (bus_id) REFERENCES buses(id)
);