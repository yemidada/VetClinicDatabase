/* Database schema to keep the structure of entire database. */

CREATE TABLE vets (
    "id"  SERIAL PRIMARY KEY,
    "name" varchar(200),
    "age" INT,
    "date_of_graduation" date
);


CREATE TABLE specializations (
    "id"  SERIAL PRIMARY KEY,
    "vet_id" INT,
    "species_id" INT,
    CONSTRAINT "specializations_species_id_fkey" FOREIGN KEY ("species_id") REFERENCES species("id"),
    CONSTRAINT "specializations_vet_id_fkey" FOREIGN KEY ("vet_id") REFERENCES vets("id")
);


CREATE TABLE visits (
    "id"  SERIAL PRIMARY KEY,
    "vet_id" INT,
    "animal_id" INT,
    "date_of_visit" date,
    CONSTRAINT "visits_vet_id_fkey" FOREIGN KEY ("vet_id") REFERENCES "public"."vets"("id"),
    CONSTRAINT "visits_animal_id_fkey" FOREIGN KEY ("animal_id") REFERENCES "public"."animals"("id")
);