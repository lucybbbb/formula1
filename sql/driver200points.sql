/*. Identify Drivers with Over 200 Career Points
Objective: List drivers who accumulated more than 200 points in their careers.
Hints:
Sum points for each driver across all races.
Focus on drivers who meet the threshold*/
CREATE TABLE driver_200_points 
    select driverId,
    sum (points) as total_points
from results 
group by driverId
having sum(points) > 200
order by total_points desc;


select * from driver_200_points;


