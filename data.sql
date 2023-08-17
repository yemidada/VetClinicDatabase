/* Populate database with sample data. */

INSERT INTO animals ("name", "date_of_birth", "escape_attempts", "neutered", "weight_kg") VALUES ('Charmander', '2020-02-08', 0, 'f', -11);
INSERT INTO animals ("name", "date_of_birth", "escape_attempts", "neutered", "weight_kg") VALUES ('Plantmon', '2021-11-15', 2, 't', -5.7);
INSERT INTO animals ("name", "date_of_birth", "escape_attempts", "neutered", "weight_kg") VALUES ('Squirtle', '1993-04-02', 3, 'f', -12.13);
INSERT INTO animals ("name", "date_of_birth", "escape_attempts", "neutered", "weight_kg") VALUES ('Angemon', '2005-06-12', 1, 't', -45);
INSERT INTO animals ("name", "date_of_birth", "escape_attempts", "neutered", "weight_kg") VALUES ('Boarmon', '2005-06-07', 7, 't', 20.4);
INSERT INTO animals ("name", "date_of_birth", "escape_attempts", "neutered", "weight_kg") VALUES ('Blossom', '1998-10-13', 3, 't', 17);
INSERT INTO animals ("name", "date_of_birth", "escape_attempts", "neutered", "weight_kg") VALUES ('Ditto', '2022-05-14', 4, 't', 22);


INSERT INTO animals ("id", "name", "date_of_birth", "escape_attempts", "neutered", "weight_kg", "species") VALUES
(1, 'Charmander', '2020-02-08', 0, 'f', -11, NULL),
(2, 'Plantmon', '2021-11-15', 2, 't', -5.7, NULL),
(3, 'Squirtle', '1993-04-02', 3, 'f', -12.13, NULL),
(4, 'Angemon', '2005-06-12', 1, 't', -45, NULL),
(5, 'Boarmon', '2005-06-07', 7, 't', 20.4, NULL),
(6, 'Blossom', '1998-10-13', 3, 't', 17, NULL),
(7, 'Ditto', '2022-05-14', 4, 't', 22, NULL);
