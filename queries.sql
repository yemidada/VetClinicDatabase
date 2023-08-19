/*Queries that provide answers to the questions from all projects.*/


select a.name, vi.date_of_visit  from animals a
left join visits vi
on vi.animal_id = a.id
left join vets ve
on vi.vet_id = ve.id
where ve.name = 'William Tatcher'
order by date_of_visit desc limit 1;

select count(vi.date_of_visit)  from animals a
left join visits vi
on vi.animal_id = a.id
left join vets ve
on vi.vet_id = ve.id
where ve.name = 'Stephanie Mendez';


select ve.name, sp.name from vets ve
left JOIN specializations s ON s.vet_id = ve.id
left JOIN species sp ON s.species_id = sp.id;


select a.name  from animals a
left join visits vi
on vi.animal_id = a.id
left join vets ve
on vi.vet_id = ve.id
where ve.name = 'Stephanie Mendez' and vi.date_of_visit BETWEEN '2020-01-01' and '2020-06-30';



select a.name, count(vi.date_of_visit) as counter from animals a
left join visits vi
on vi.animal_id = a.id
GROUP by a.name
order by counter desc limit 1;


select a.name, vi.date_of_visit  from animals a
left join visits vi
on vi.animal_id = a.id
left join vets ve
on vi.vet_id = ve.id
where ve.name = 'Maisy Smith'
order by date_of_visit asc limit 1;


select a.*, ve.*, vi.date_of_visit  from animals a
left join visits vi
on vi.animal_id = a.id
left join vets ve
on vi.vet_id = ve.id
where date_of_visit is not NULL
order by vi.date_of_visit desc limit 1;



select count(ve.name) from vets ve
left JOIN specializations s ON s.vet_id = ve.id
left JOIN species sp ON s.species_id = sp.id
where sp.name is null;


select  sp.name, count(vi.date_of_visit) as counter  from animals a
left join visits vi
on vi.animal_id = a.id
left join species sp
on sp.id = a.species_id
left join vets ve
on vi.vet_id = ve.id
where ve.name = 'Maisy Smith'
GROUP by sp.name 
order by counter desc limit 1;








