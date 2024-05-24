-- Drop table if exists
DROP TABLE fauna_vertabrate;

CREATE TABLE animals_all (
  id SERIAL PRIMARY KEY,
  animal_species VARCHAR(30) NOT NULL,
  owner_name VARCHAR(30) NOT NULL
);

CREATE TABLE animals_location (
  id SERIAL PRIMARY KEY,
  location VARCHAR(30) NOT NULL,
  animal_id INTEGER NOT NULL,
  FOREIGN KEY (animal_id) REFERENCES animals_all(id)
);
