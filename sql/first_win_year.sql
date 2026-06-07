/* Identify Constructors' First Win Year
Objective: Find the first year each constructor won a race.
Hints:
Combine constructor information with race results and years.
Focus on the earliest successful race per constructor.
Present a summary showing each constructor and their first win year*/






CREATE TABLE constructor_first_win_year AS
SELECT
    c.constructorId,
    c.name AS constructor_name,
    MIN(ra.year) AS first_win_year
FROM results r
JOIN races ra
    ON r.raceId = ra.raceId
JOIN constructors c
    ON r.constructorId = c.constructorId
WHERE r.position = 1
GROUP BY
    c.constructorId,
    c.name
ORDER BY
    first_win_year;
select * from constructor_first_win_year;