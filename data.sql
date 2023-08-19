/* Populate database with sample data. */

INSERT INTO vets ("name", "age", "date_of_graduation") VALUES ('William Tatcher', 45, '2000-04-23');
INSERT INTO vets ("name", "age", "date_of_graduation") VALUES ('Maisy Smith', 26, '2019-01-17');
INSERT INTO vets ("name", "age", "date_of_graduation") VALUES ('Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets ("name", "age", "date_of_graduation") VALUES ('Jack Harkness', 38, '2008-06-8');



-- Insert the following data for specializations: 


INSERT INTO specializations ("vet_id", "species_id")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'William Tatcher'), ( SELECT DISTINCT
					id FROM species
				WHERE
					name = 'Pokemon'));

INSERT INTO specializations ("vet_id", "species_id")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Stephanie Mendez'), ( SELECT DISTINCT
					id FROM species
				WHERE
					name = 'Pokemon'));

INSERT INTO specializations ("vet_id", "species_id")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Stephanie Mendez'), ( SELECT DISTINCT
					id FROM species
				WHERE
					name = 'Digimon'));

INSERT INTO specializations ("vet_id", "species_id")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Jack Harkness'), ( SELECT DISTINCT
					id FROM species
				WHERE
					name = 'Digimon'));



-- insert the following data for visits: 

INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'William Tatcher'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Agumon'),
					'2020-05-24'
					);


INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Stephanie Mendez'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Agumon'),
					'2020-07-22'
					);

INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Jack Harkness'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Gabumon'),
					'2021-02-02'
					);

INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Maisy Smith'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Pikachu'),
					'2020-01-05'
					);

INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Maisy Smith'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Pikachu'),
					'2020-03-08'
					);
				
INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Maisy Smith'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Pikachu'),
					'2020-05-14'
					);



INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Stephanie Mendez'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Devimon'),
					'2021-05-04'
					);


INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Jack Harkness'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Charmander'),
					'2021-02-24'
					);


INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Maisy Smith'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Plantmon'),
					'2019-12-21'
					);


INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'William Tatcher'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Plantmon'),
					'2020-08-10'
					);


INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Maisy Smith'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Plantmon'),
					'2021-04-07'
					);



INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Stephanie Mendez'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Squirtle'),
					'2019-09-29'
					);



INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Jack Harkness'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Angemon'),
					'2020-10-03'
					);

INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Jack Harkness'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Angemon'),
					'2020-11-04'
					);


INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Maisy Smith'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Boarmon'),
					'2019-01-24'
					);


INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Maisy Smith'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Boarmon'),
					'2019-05-15'
					);



INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Maisy Smith'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Boarmon'),
					'2020-02-27'
					);



INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Maisy Smith'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Boarmon'),
					'2020-08-03'
					);



INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'Stephanie Mendez'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Blossom'),
					'2020-05-24'
					);



INSERT INTO visits ("vet_id", "animal_id", "date_of_visit")
		VALUES(( SELECT DISTINCT
				id FROM vets
			WHERE
				name = 'William Tatcher'), ( SELECT DISTINCT
					id FROM animals
				WHERE
					name = 'Blossom'),
					'2021-01-11'
					);