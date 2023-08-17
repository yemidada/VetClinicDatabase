/*Queries that provide answers to the questions from all projects.*/

select count(*) from animals;

select count(*) from animals where escape_attempts = 0;

select  SUM(weight_kg)/count(*) as average from animals;


select neutered from animals order by escape_attempts  desc limit 1;


SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight
FROM animals
GROUP BY species;

SELECT species, SUM(weight_kg)/count(*) as average
FROM animals WHERE date_part('year', date_of_birth) BETWEEN '1990' and '2000'
GROUP BY species;
 

