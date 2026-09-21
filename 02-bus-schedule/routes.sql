CREATE TABLE routes (
    id SERIAL PRIMARY KEY,
    number VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(200) NOT NULL
);

CREATE TABLE route_stops (
    id SERIAL PRIMARY KEY,
    route_id INT NOT NULL,
    stop_id INT NOT NULL,
    stop_order INT NOT NULL,

    CONSTRAINT fk_route_stops_route
        FOREIGN KEY (route_id)
        REFERENCES routes(id),

    CONSTRAINT fk_route_stops_stop
        FOREIGN KEY (stop_id)
        REFERENCES stops(id),

    UNIQUE(route_id, stop_order)
);