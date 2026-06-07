/*Calculate Average Lap Times for Drivers Who Won at Least One Race
Objective: Determine how winning drivers perform on average per lap.
Hints:
Identify drivers who have won at least one race.
Calculate the average lap time for these drivers.
Group your results per driver*/



CREATE TABLE avg_lap_time_winners AS
SELECT
    d.driverId,
   
    AVG(lt.milliseconds) AS avg_lap_time_ms
    
FROM lap_times lt
JOIN drivers d
    ON lt.driverId = d.driverId
WHERE lt.driverId IN (
    SELECT DISTINCT driverId
    FROM results
    WHERE position = 1
)
GROUP BY
    d.driverId;    

select * from avg_lap_time_winners;
drop table avg_lap_time_winners;

