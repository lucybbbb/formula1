/*Identify Drivers Who Never Raced for Ferrari
Objective: Find drivers who participated in races but never drove for a specific constructor.
Hints:
Determine all drivers who participated in any race.
Exclude drivers associated with the specific constructor.
Return the names of drivers meeting these criteria*/
create table drivers_no_ferrari

SELECT
    d.driverId,
    d.forename,
    d.surname
FROM drivers d
WHERE NOT EXISTS (
    SELECT 1
    FROM results r
    JOIN constructors c
        ON r.constructorId = c.constructorId
    WHERE r.driverId = d.driverId
      AND c.name = 'Ferrari'
);

select * from drivers_no_ferrari;





