SELECT
    r.number,
    r.name,
    b.number AS bus_number,
    t.departure_time
FROM trips t
JOIN routes r
    ON r.id = t.route_id
JOIN buses b
    ON b.id = t.bus_id
JOIN route_stops rs
    ON rs.route_id = r.id
WHERE rs.stop_id = 1
AND t.departure_time > NOW()
ORDER BY t.departure_time
LIMIT 15;