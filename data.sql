/* Populate database with sample data. */

INSERT INTO "public"."animals" ("id", "name", "date_of_birth", "escape_attempts", "neutered", "weight_kg", "owner_id", "species_id") VALUES
(1, 'Agumon', '2020-02-03', 0, 't', 10.23, NULL, NULL),
(2, 'Gabumon', '2018-11-15', 2, 't', 8, NULL, NULL),
(3, 'Pikachu', '2021-01-07', 1, 'f', 15.04, NULL, NULL),
(4, 'Devimon', '2017-05-12', 5, 't', 11, NULL, NULL),
(5, 'Charmander', '2020-02-08', 0, 'f', -11, NULL, NULL),
(6, 'Plantmon', '2021-11-15', 2, 't', -5.7, NULL, NULL),
(7, 'Squirtle', '1993-04-02', 3, 'f', -12.13, NULL, NULL),
(8, 'Angemon', '2005-06-12', 1, 't', -45, NULL, NULL),
(9, 'Boarmon', '2005-06-07', 7, 't', 20.4, NULL, NULL),
(10, 'Blossom', '1998-10-13', 3, 't', 17, NULL, NULL),
(11, 'Ditto', '2022-05-14', 4, 't', 22, NULL, NULL);


INSERT INTO owners ("full_name", "age") VALUES ('Sam Smith', 34);
INSERT INTO owners ("full_name", "age") VALUES ('Jennifer Orwell ', 19);
INSERT INTO owners ("full_name", "age") VALUES ('Bob', 45);
INSERT INTO owners ("full_name", "age") VALUES ('Melody Pond', 77);
INSERT INTO owners ("full_name", "age") VALUES ('Dean Winchester', 14);
INSERT INTO owners ("full_name", "age") VALUES ('Jodie Whittaker', 38);

INSERT INTO species ("name") VALUES ('Pokemon');
INSERT INTO species ("name") VALUES ('Digimon');



-- Modify your inserted animals to include owner information 


UPDATE animals set species_id = (select id from species where name = 'Digimon') where name like '%mon';

UPDATE animals set species_id = (select id from species where name = 'Pokemon') where species_id is null;
UPDATE animals set owner_id = (select id from owners where full_name = 'Sam Smith') where name = 'Agumon';

UPDATE animals set owner_id = (select id from owners where full_name = 'Jennifer Orwell') where name = 'Gabumon' or  name = 'Pikachu';
UPDATE animals set owner_id = (select id from owners where full_name = 'Bob') where name = 'Devimon' or  name = 'Plantmon';
UPDATE animals set owner_id = (select id from owners where full_name = 'Melody Pond') where name = 'Charmander' or  name = 'Squirtle'  or  name = 'Blossom';
UPDATE animals set owner_id = (select id from owners where full_name = 'Dean Winchester') where name = 'Angemon' or  name = 'Boarmon' ;



