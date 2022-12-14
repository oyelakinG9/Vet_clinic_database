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