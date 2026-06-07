/*Find Races Held at High-Altitude Circuits (Above 800 Meters)
Objective: Identify races held on circuits with challenging altitudes.
Hints:
First, determine which circuits are above a certain altitude.
Then identify races associated with those circuits.
Include relevant details for each race.*/


CREATE TABLE high_altitude_races AS
SELECT
    r.year,
    r.name AS race_name,
    c.circuitId,
    c.alt AS altitude
FROM races r
JOIN circuits c
    ON r.circuitId = c.circuitId
WHERE c.alt > 800
ORDER BY r.year, c.alt DESC;

select * from high_altitude_races;