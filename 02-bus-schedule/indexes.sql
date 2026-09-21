CREATE INDEX idx_route_stops_stop_id
ON route_stops(stop_id);

CREATE INDEX idx_trips_departure_time
ON trips(departure_time);

CREATE INDEX idx_trips_route_id
ON trips(route_id);