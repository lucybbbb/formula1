/*Identify Packed F1 Seasons – Years with Over 20 Races
Objective: Determine which seasons had the most races.
Hints:
Summarize the number of races per year.
Filter years where the total count exceeds a certain threshold*/



SELECT
    year,
    COUNT(*) AS total_races
FROM races
GROUP BY year
ORDER BY total_races DESC;


CREATE TABLE seasons_over_20_races AS
SELECT
    year, 
    
    COUNT(*) AS total_races
FROM races
GROUP BY year
HAVING COUNT(*) > 20;

select * from seasons_over_20_races;
drop table seasons_over_20_races; 
