# VET CLINIC
> Vet clinic project based on the POSTGRE SQL DATABASE (STRUCTURED);
> It is used to store animals history profile in a vet clinic hospital;


## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**


- Open SQL Shell and perform the following query operations
> SELECT * FROM animals;
> SELECT * FROM animals WHERE date_of_birth BETWEEN '2016/01/01' AND '2019/12/31';
> SELECT * FROM animals WHERE neutered=true AND escape_attempts < 3;
> SELECT * FROM animals WHERE name='Agumon' OR name='Pikachu';
> SELECT date_of_birth FROM animals WHERE name='Agumon' OR name='Pikachu';
> SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
> SELECT * FROM animals WHERE neutered=true;
> SELECT * FROM animals WHERE name='Gabumon';
> SELECT * FROM animals WHERE NOT name='Gabumon';
> SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

![Annotation 2022-08-10 001535-1](https://user-images.githubusercontent.com/61976324/183778464-d3488467-1450-4945-a78e-b57cdcf1449f.png)

![Annotation 2022-08-10 001649-2](https://user-images.githubusercontent.com/61976324/183778511-755b0688-ead4-49a8-8e4f-f9629e3e410b.png)

![Annotation 2022-08-10 001807-3](https://user-images.githubusercontent.com/61976324/183778551-64e1f084-c4e4-40d3-b9b4-a2ccb0a6308b.png)


![Annotation 2022-08-10 001904-4](https://user-images.githubusercontent.com/61976324/183778625-2e38608f-9c8a-4b25-9af5-c22a304bf06e.png)



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
