# W4D1 - Lecture

## Content

- Databases
- Data Modeling
- SQL

## Databases

### Context

- Lines between frontend and backend are becoming more blurry
- Moving towards more fullstack

Full stack developers are among the most in-demand by employers right now in terms of open job postings, according to data from job search site Indeed.

> "Some companies are moving away from siloed back-end and front-end development teams, which requires hiring developers who can work on all levels of the application stack," said Paul Wallenberg, head of technology recruiting services at staffing and recruiting firm LaSalle Network. - Source: [Tech Republic](https://www.techrepublic.com/article/the-10-most-in-demand-tech-jobs-of-2019/)

- Using and building APIs
- Having a good understanding of both frontend and backend helps understand how to improve performance

### What is a database

- Third tier of the web development architecture (Client - Application - Data)
- Organized collection of persisted data
- Information being written to be used at a later time

#### Types of Databases

- Relational databases
  - MySQL, Postgresql, SQLite
- Key-value stores (like Javascript objects)
  - Redis
- Column stores
  - Cassandran
  - HBase
- Graph databases
- Document databases (JSON like format)
  - MongoDB
- Real-Time Database
  - Firebase

### Data Modeling

#### The goal of data modeling

    1) Better organize data and avoid data duplication
    2) Avoid data inconsistencies

- In a relational database, information is divided into different entities
- Relationships are established between the entities
- To divide the data, a formal process called _Normalization_ is performed
- Normalization is a process used to optimally design a database to reduce redundant data (3 normal forms)

  - Benefits:
    - Greater overall database organization
    - Reduction of redundant data
    - Data consistency within the database

Ex.:

```
+--------------------------------------+
| students                             |
+--------------------------------------+
| id | name              | cohort_name |
+--------------------------------------+
| 1  | Sam Billings      | FEB12       |
| 2  | Susan Hudson      | MAR12       |
| 3  | Malloy Jenkins    | APR09       |
| 4  | Maximilian Alesio | APR09       |
| 5  | Pegasus Larue     | APR09       |
+--------------------------------------+
```

- We would consider this denormalized because the cohort name is repeated for 3 of the students. In order to normalize this database we would split the data into two related tables.

```
+------------------------------------+   +------------+
| students                           |   | cohorts    |
+------------------------------------+   +------------+
| id | name              | cohort_id |   | id | name  |
+------------------------------------+   +------------+
| 1  | Sam Billings      | 1         |   | 1  | FEB12 |
| 2  | Susan Hudson      | 2         |   | 2  | MAR12 |
| 3  | Malloy Jenkins    | 3         |   | 3  | APR09 |
| 4  | Maximilian Alesio | 3         |   +------------+
| 5  | Pegasus Larue     | 3         |
+------------------------------------+
```

We show that each student belongs to a cohort. The details of the cohort are stored separately. When we need to gather this information together we use a query to ask the database for it in the structure that we want.

If we needed to change the name of a cohort for any reason we only need to change the one field in the `cohorts` table.

#### Entity Relationship Diagram

> We model data with an ERD

- Entities and attributes
- Primary keys / foreign keys
- Cardinality of relationships: one-to-one, one-to-many, many-to-many
  _many-to-many relationships need to be transformed into 2 one-to-many relationships at the physcial level_

### Naming Convention

We use naming conventions to increase consistency which provides us with some level of predictability. We can write queries faster if we don't have to look up column names constantly. Follow these rules to start with:

- Use `snake_case` for table and column names.
- Pluralize tables names, column names should be singular.
- Call your primary key `id`.
- For most foreign keys use `<table>_id`.

```
+----------------+
|    students    |  <-- Plural
+----------------+
| PK | id        |  <-- Primary Key
|    | name      |  <-- Singular
| FK | cohort_id |  <-- <table>_id
+----------------+
```

Here is an example [SQL Style Guide](http://www.sqlstyle.guide/). I'm not recomending the style specifically, it provides an example of how a style guide would be defined.

### Data Types

When defining columns for the tables you will need to specify the data type. `INTEGER, VARCHAR, TEXT, BOOLEAN, DATE` are common examples.

- Primary key column. Use the name `id` and then `SERIAL PRIMARY KEY NOT NULL`.
- Names, emails, usernames and passwords can all be stored as `VARCHAR(255)`.
- Foreign key columns. Add `_id` to the singular name of the column you are referencing. Students to cohorts would be `cohort_id`. The type would be `INTEGER` but you also should create the foreign key with `REFERENCES cohorts(id) ON DELETE CASCADE`.
- Dates would use the `DATE` type. If you needed [date and time](https://www.postgresql.org/docs/current/static/datatype-datetime.html) you would use `TIMESTAMP`.

You will use `INTEGER` to represent most [numbers](https://www.postgresql.org/docs/current/static/datatype-numeric.html). There are other _sizes_ of integers as well.

- **SMALLINT** -32,768 to 32,767 (thirty-two thousand)
- **INTEGER** -2,147,483,648 to 2,147,483,647 (two billion)
- **BIGINT** -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 (nine quintillion)
- **SERIAL** 1 to 2,147,483,647 (auto incrementing)

### Dates, Phone Numbers & Currency

- Become familiar with the [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date formatting standard. The string `'2018-02-12'` uses this format to represent 'February 12th, 2018'. Year, month and then day. Dates should be stored consistently. Apply timezones and formatting when displayed to the user.
- Store phone numbers as `VARCHAR`, there are so many possible formats. The number `214 748 3647` hits our `INTEGER` limit.
- Store currency as an integer representing cents. Use a `BIGINT` if you need values over \$21 million dollars.
- Read up on assumptions made by people with regard to peoples names. [Falsehoods Programmers Believe About Names](https://www.kalzumeus.com/2010/06/17/falsehoods-programmers-believe-about-names/)

There is a [list](https://github.com/kdeldycke/awesome-falsehood) of other resources discussing falsehoods. Gender is no longer considered binary. Addresses, language and units of measurement are all poorly understood by most of us. The good news is that there is a collection of information out there that we previously did not have access to. The Internet.

##### Database Table Structure

> Data in a database can be represented with the following:

- Table (relation) contains rows (tuples)
- Elements of a row have a data type

Ex.:

| id  | firstname | lastname | email | password |
| :-- | :-------- | :------- | :---- | :------- |
|     |           |          |       |          |

## SQL

> Structured Query Language

- Declarative language
- We state only what we need
- We do not worry about how to get it

### Data Definition Language (DDL)

- Creating a database (createdb name)
- Deleting a database (dropdb name)

### Data Manipulation Language (DML)

- INSERT
- UPDATE
- DELETE
- SELECT

  `SELECT * FROM users;`

| SELECT     | \*      | FROM | users;           |
| :--------- | :------ | :--- | :--------------- |
| Result set | Columns |      | Table (Relation) |

- Returns a result set
- Filter out the desired columns of a table
- `FROM` specifies the table we want results from

  `SELECT id, firstname, lastname FROM users;`

Get the same rows but only with these columns;

- WHERE

  `WHERE id = 123`

  - Filter the rows with a condition

### Queries

Full Syntax of an SQL Query

```sql
SELECT column list, function(), function(), ...
FROM table1
INNER JOIN table2
...
ON table1.col1 = table2.col2
...
WHERE criteria for row selection
[AND criteria for row selection]
[OR criteria for row selection]
GROUP BY column list
HAVING criteria for function results
ORDER BY column list;
```

### Alias

```sql
SELECT usr.firstname AS fn, usr.lastname AS ln
FROM users AS usr;
```

#### JOINS

- When we need data from several tables, tables are joined together
- inner join or outer join

## References

[PostgreSQL](https://postgres.cz/wiki/Introduction_to_PostgreSQL_SQL)
[PostgreSQL Sample Database
](http://www.postgresqltutorial.com/postgresql-sample-database/)
[ERM](http://www.ccs.neu.edu/home/kathleen/classes/cs3200/2-ERM2014.pdf)

[Database Normalization](https://www.studytonight.com/dbms/database-normalization.php)
