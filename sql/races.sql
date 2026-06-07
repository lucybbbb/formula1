/*How many races were held in each decade*/
/*Hints:
Consider grouping years into ranges representing decades.
Think about how to label years that donʼt fall into standard decades.
You will need to summarize counts per group*/

select 
(year div 10)*10 as decade, 
count (*) as total_races
from races
group by decade
order by decade;

/*group them by decade, orders the result*/

select 
concat((year div 10) *10, '-', (year div 10)*10 +9) as decade_range, 
count(*) as total_races
from races
group by decade_range
order by decade_range;
