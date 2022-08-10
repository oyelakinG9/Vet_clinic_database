# VET CLINIC
> Vet clinic project based on the POSTGRE SQL DATABASE (STRUCTURED);
> It is used to store animals history profile in a vet clinic hospital;


## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**


- Open SQL Shell and perform the following query operations
SELECT * FROM animals;

> BEGIN;

> UPDATE animals SET species='unspecified';

> SELECT * FROM animals;

> ROLLBACK;

> UPDATE animals SET species='digimon' WHERE name LIKE '%mon%';

> SELECT * FROM animals;

> UPDATE animals SET species='pokemon' WHERE species IS NULL;

> BEGIN;

> DELETE FROM animals;

> ROLLBACK;

> DELETE FROM animals WHERE date_of_birth > '2022-01-01';

> BEGIN;

> SAVEPOINT savepoint_01;

> UPDATE animals SET weight_kg = weight_kg * -1;

> ROLLBACK TO SAVEPOINT savepoint_01;

> UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

> COMMIT;

/* Also query the following operations */

> SELECT COUNT(*) FROM animals;

> SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

> SELECT AVG(weight_kg) FROM animals;

> SELECT neutered, AVG(escape_attempts) AS Avg_attempt_ascape FROM animals GROUP BY neutered;

> SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;

> SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

![Annotation 2022-08-10 210335-5](https://user-images.githubusercontent.com/61976324/184010808-67602530-85b2-46f0-9906-b84aece8d566.png)


![Annotation 2022-08-10 210532-6](https://user-images.githubusercontent.com/61976324/184011014-eb763295-ad0b-47b5-9623-9ca2610b32e5.png)

![Annotation 2022-08-10 210700-7](https://user-images.githubusercontent.com/61976324/184011091-98d200d0-12a1-418c-a5c5-594ddde0f598.png)


![Annotation 2022-08-10 210811-8](https://user-images.githubusercontent.com/61976324/184011158-8c9842f1-6674-4891-bf72-8f143fa7b9ff.png)

![Annotation 2022-08-10 210910-9](https://user-images.githubusercontent.com/61976324/184011237-9c31c3b0-40b7-4bcd-a2c0-bcc4b9e92233.png)

![Annotation 2022-08-10 211022-10](https://user-images.githubusercontent.com/61976324/184011328-815d859d-a465-4016-b34a-bbed6bb5a3e1.png)



## Authors

👤 **Author1**

**Oyelakin Ridwan Adio**
- GitHub: [@oyelakin](https://github.com/oyelakinG9)
- Twitter: [@oyelakin](https://twitter.com/OyelakinG1)
- LinkedIn: [@oyelakin](https://www.linkedin.com/in/oyelakin-ridwan-4b4a02b6/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
