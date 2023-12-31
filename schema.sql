/* Database schema to keep the structure of entire database. */

CREATE TABLE owners (
    "id"  SERIAL PRIMARY KEY,
    "full_name" varchar(200),
    "age" int, 
);


CREATE TABLE species (
    "id"  SERIAL PRIMARY KEY,
    "name" varchar(200)
);


ALTER TABLE animals
DROP COLUMN "species";

ALTER TABLE animals
ADD COLUMN species_id INT;

ALTER TABLE animals ADD FOREIGN KEY ("species_id") REFERENCES species("id");

ALTER TABLE animals
ADD COLUMN owner_id INT;

ALTER TABLE animals ADD FOREIGN KEY ("owner_id") REFERENCES owners("id");
