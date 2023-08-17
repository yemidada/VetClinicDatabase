/*Queries that provide answers to the questions from all projects.*/



select a.name from animals a
left join owners o 
on o.id = a.owner_id where
o.full_name='Melody Pond';


select a.name from animals a
left join species o 
on o.id = a.species_id where
o.name ='Pokemon';


select a.name, o.full_name from animals a
left join owners o
on o.id = a.owner_id ;


select a.name 
from animals a
left join owners o 
on o.id = a.owner_id 
left join species s
on s.id = a.species_id 
where o.full_name='Jennifer Orwell';



select a.* from animals a
left join owners o 
on o.id = a.owner_id where
o.full_name='Dean Winchester' and a.escape_attempts = 0;


select o.full_name, count(*) as counter from animals a
left join owners o 
on o.id = a.owner_id 
GROUP by o.full_name order by counter desc limit 1;
 

