# CSV Query Language Description

This language is similar to SQL and is designed for manipulating CSV files.
It supports two main types of operations: `SELECT` and `INSERT`.

## `INSERT` Statement
The **INSERT** statement in your language is similar to the native SQL **INSERT** statement, but with a twist tailored for CSV files. 

It allows you to add new rows of data to a CSV file. The syntax is as follows:

```sql
INSERT INTO <file_name> [(column1, column2, ...)] VALUES (value1, value2, ...);
```

Here's a breakdown of the components:

- `<file_name>`: Specifies the name of the CSV file where you want to insert the data.
- `(column1, column2, ...)`: Lists the columns into which you want to insert data. If not defined, use list of table columns by default.
- `(value1, value2, ...)`: Provides the values to be inserted into the specified columns

## `SELECT` Statement:

The **SELECT** statement in your language resembles the native SQL **SELECT** statement, adapted for CSV file querying. 

While it lacks support for GROUP BY, HAVING, and aggregate functions, it offers other essential features like **WHERE** condition and **ORDER BY** options.

The syntax is as follows:

```sql
SELECT [* | (column1, column2, ...)]
FROM (<file_name> | (select_statement))
WHERE <condition>
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

## `<condition>` syntax rule

- A `<condition>` can be relational or logical expression.

- A relational expression have syntax rule as follows: `<col_name> (= | > | < | >= | <= | LIKE) <value>`;
- A logical expression (combination of two or more relational conditions) have syntax rule as follows: `["<relational_condition> [(AND | OR) <relational_condition>]` and can be wrapped by a pair of round brackets.

## Filename Requirements

- `<file_name>` must possess the .csv file extension

## `<value>`

A `<value>` can be:

- Text: Text is a sequence of characters enclosed in double quotes ("). For example, "This is a text." is a valid text.
- Number: A number can be an integer or a float. Integers are whole numbers, such as 1, 5, and 100. Floats are numbers that contain a decimal point, such as 3.14, -5.67, and 1.234567e8.
- Boolean: A boolean value is either true or false.
