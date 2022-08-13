/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';

SELECT * FROM animals WHERE date_of_birth BETWEEN '2016/01/01' AND '2019/12/31';

SELECT * FROM animals WHERE neutered=true AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name='Agumon' OR name='Pikachu';

SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

SELECT * FROM animals WHERE neutered=true;

SELECT * FROM animals WHERE NOT name='Gabumon';

SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

SELECT * FROM animals;

BEGIN;

UPDATE animals SET species='unspecified';

SELECT * FROM animals;

ROLLBACK;

UPDATE animals SET species='digimon' WHERE name LIKE '%mon%';

SELECT * FROM animals;

UPDATE animals SET species='pokemon' WHERE species IS NULL;

BEGIN;

DELETE FROM animals;

ROLLBACK;

DELETE FROM animals WHERE date_of_birth > '2022-01-01';

BEGIN;

SAVEPOINT savepoint_01;

UPDATE animals SET weight_kg = weight_kg * -1;

ROLLBACK TO SAVEPOINT savepoint_01;

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT;

/* Also query the following operations */

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT neutered, AVG(escape_attempts) AS Avg_attempt_ascape FROM animals GROUP BY neutered;

SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;

SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Digimon') WHERE name LIKE '%mon%';
UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Pokemon') WHERE species_id IS NULL;

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith') WHERE name = 'Agumon';
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell') WHERE name IN ('Gabumon', 'Pikachu');
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob') WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond') WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester') WHERE name IN ('Angemon', 'Boarmon');

/* Join tables queries*/
SELECT animals.name, vets.name, visits.visit_date FROM animals JOIN visits on (animals.id = visits.animals_id) JOIN vets on (vets.id = visits.vets_id) WHERE vets.name = 'William Tatcher' AND visits.visit_date = (SELECT MAX(visits.visit_date) FROM visits JOIN vets on (vets.id = visits.vets_id) GROUP BY vets.name HAVING vets.name = 'William Tatcher');

SELECT COUNT(animals.name) FROM animals JOIN visits ON (animals.id = visits.animals_id) JOIN vets on (vets.id = visits.vets_id) WHERE vets.name = 'Stephanie Mendez';

SELECT vets.name, species.name FROM vets LEFT JOIN specializations ON vets.id = specializations.vets_id LEFT JOIN species ON species.id = specializations.species_id;
    
SELECT animals.name, vets.name, visits.visit_date FROM animals JOIN visits ON visits.animals_id = animals.id JOIN vets ON vets.id = visits.vets_id WHERE vets.name = 'Stephanie Mendez' AND visits.visit_date BETWEEN '2020-04-01' AND '2020-08-30';

SELECT animals.name, COUNT(animals.name) FROM animals JOIN visits ON animals.id = visits.animals_id GROUP BY animals.name HAVING COUNT (animals_id) = ( SELECT MAX(mycount) FROM ( SELECT COUNT(animals_id) mycount FROM visits GROUP BY animals_id ) AS animals_count);

SELECT animals.name, vets.name, visits.visit_date FROM animals JOIN visits on (animals.id = visits.animals_id) JOIN vets on (vets.id = visits.vets_id) WHERE vets.name = 'Maisy Smith' AND visits.visit_date = (SELECT MIN(visits.visit_date) FROM visits JOIN vets on (vets.id = visits.vets_id) GROUP BY vets.name HAVING vets.name = 'Maisy Smith');

SELECT animals.name, vets.name, visits.visit_date FROM animals JOIN visits on (animals.id = visits.animals_id) JOIN vets on (vets.id = visits.vets_id) WHERE visits.visit_date = (SELECT MAX(visits.visit_date) FROM visits);

SELECT COUNT(visits.visit_date) FROM vets JOIN visits ON visits.vets_id = vets.id JOIN animals ON animals.id = visits.animals_id JOIN specializations ON vets.id = specializations.vets_id JOIN species ON specializations.species_id = species.id WHERE animals.species_id <> specializations.species_id;

SELECT species.name, COUNT(species.name) as visits FROM animals JOIN visits ON visits.animals_id = animals.id
JOIN vets ON visits.vets_id = vets.id JOIN species ON species.id = animals.species_id WHERE vets.name = 'Maisy Smith' GROUP BY species.name ORDER BY visits DESC LIMIT 1;