/*Categorize Driver Performance Tiers Based on Career Points
Objective: Rank drivers by their career points.
3
Formula 1 Data Analysis  Capstone Project Questions
Hints:
Calculate total points per driver.
Think about how to divide drivers into categories (e.g., high, medium, low).
Consider how SQL can classify values into ranges*/

create table driver_perfomance
select 
        driverId, 
        SUM(points) as career_points,
        case 
           when SUM(points) > 300 then 'High'
           when SUM(points) between 150 and 300 then 'Medium'
           else 'Low'
        end as performance_category
from results 
group by driverId;

SELECT * from driver_perfomance;