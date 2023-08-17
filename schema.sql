/* Database schema to keep the structure of entire database. */


CREATE TABLE animals (
    "id"  SERIAL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "date_of_birth" date NOT NULL,
    "escape_attempts" INT  NOT NULL,
    "neutered" bool  NOT NULL,
    "weight_kg" numeric  NOT NULL
);
ALTER TABLE animals
ADD COLUMN "species" varchar(100);
