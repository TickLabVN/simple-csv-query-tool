# CSV Query Language Description

This language is similar to SQL and is designed for manipulating CSV files.
It supports two main types of operations: `SELECT` and `INSERT`.

## `INSERT` Statement
The **INSERT** statement in your language is similar to the native SQL **INSERT** statement, but with a twist tailored for CSV files. 

It allows you to add new rows of data to a CSV file. The syntax is as follows:

```sql
INSERT INTO <file_name> [column1, column2, ...] VALUES (value1, value2, ...);
```

Here's a breakdown of the components:

- `<file_name>`: Specifies the name of the CSV file where you want to insert the data.
- `(column1, column2, ...)`: Lists the columns into which you want to insert data. If not defined, use list of table columns by default.
- `(value1, value2, ...)`: Provides the values to be inserted into the specified columns

## `SELECT` Statement:

The **SELECT** statement in your language resembles the native SQL **SELECT** statement, adapted for CSV file querying. 

While it lacks support for GROUP BY, HAVING, and aggregate functions, it offers other essential features like **WHERE** conditions and **ORDER BY** options.

The syntax is as follows:

```sql
SELECT [* | column1, column2, ...]
FROM (<file_name> | (select_statement))
WHERE <condition> [(OR | AND) <condition>]
ORDER BY column_name [ASC | DESC];
```

**SELECT** statement also can have nest one as describe above. For instance:

```sql
SELECT id, name, email, phone FROM (
  SELECT id, name, email, age, phone
  FROM member.csv
  WHERE age > 22
)
WHERE name LIKE '%Vinh%'
```

## Other syntax rules

- `<condition>` have syntax rule as follows: `<col_name> (= | > | < | >= | <= | LIKE) <value>` 
- `<file_name>` must have extension `.csv`
