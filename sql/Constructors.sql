/*Identify F1 Powerhouses – Constructors with 100+ Wins
Objective: Find constructors with more than 100 race wins.
Hints:
Wins are determined by race outcomes.
Consider how to combine constructor details with race results.
Aggregate the total wins per constructor and filter for high performers*/

select constructorId, wins from constructor_standings;
select constructorId, sum(wins) as total_wins
from constructor_standings 
group by constructorId
order by total_wins desc; 

/*join the tables*/

SELECT COUNT(*) FROM constructor_standings;

select 
count(*) 
from constructor_standings cs
join constructors c
on cs.constructorId= c.constructorId;

/*no connection between these tables*/
DESCRIBE constructor_standings;
DESCRIBE constructors;

ALTER TABLE constructor_standings
DROP PRIMARY KEY;
ALTER TABLE constructors
DROP PRIMARY KEY;
describe constructor_summary; 
select count(*) from constructor_summary;
select * from constructor_summary;
-- IDs in standings
SELECT DISTINCT constructorId FROM constructor_standings ORDER BY constructorId;
SELECT DISTINCT constructorId FROM constructors;


CREATE TABLE constructors_desc AS
SELECT 
    c.name AS constructor_name, 
    SUM(cs.wins) AS total_wins
FROM constructor_standings cs
JOIN constructors c ON cs.constructorId = c.constructorId
GROUP BY c.constructorId, c.name
ORDER BY total_wins DESC;
select * from constructors_desc;

/*filter the first 100 results into a new table*/

CREATE TABLE top_20_constructors AS
SELECT *
FROM (
    SELECT
        c.name AS constructor_name,
        SUM(cs.wins) AS total_wins
    FROM constructor_standings cs
    JOIN constructors c
        ON cs.constructorId = c.constructorId
    GROUP BY c.constructorId, c.name
    ORDER BY total_wins DESC
    LIMIT 20
) AS sub;

select * from top_20_constructors;