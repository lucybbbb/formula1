/*Calculate Average Points Per Race for Top Drivers
Objective: Determine which drivers perform best on average per race.
Hints:
Compute the total points and the number of races per driver.
Consider only drivers with substantial participation.
Calculate average points and rank drivers accordingly*/

create table avg_points as
select 
d.driverId, d.forename, d.surname, 
avg(r.points) as avg_points_per_race, 
count(r.raceId) as total_races
from drivers d 
join results r on d.driverId = r.driverId
group by 
d.driverId,
d.forename, 
d.surname;

select * from avg_points;
