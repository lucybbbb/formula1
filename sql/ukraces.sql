/*List Races Held on Circuits in the UK
Objective: Identify races hosted at UK circuits.
Hints:
Find circuits located in the UK.
Use this information to filter the races held there.
Include race names in your results  */

create table ukraces
select location, name as circuit_name  from circuits
where country like '%uk%';

select * from ukraces;
drop table ukraces; 



