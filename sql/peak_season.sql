/*Identify Peak Performance Seasons
Objective: Determine the seasons with the highest points scored by any constructor.
Hints:
Calculate total points for each constructor per season.
Determine the maximum points achieved in each season.
Identify the top-performing seasons*/
CREATE TABLE constructor_season_points AS
SELECT
    ra.year AS season,
    r.constructorId,
    c.name AS constructor_name,
    SUM(r.points) AS total_points
FROM results r
JOIN races ra
    ON r.raceId = ra.raceId
JOIN constructors c
    ON r.constructorId = c.constructorId
GROUP BY
    ra.year,
    r.constructorId,
    c.name;

select * from constructor_season_points;