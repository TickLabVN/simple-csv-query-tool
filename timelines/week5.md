# Week 5

> This week's challenge: Write a program to validate query commands against a file definition.

In previous weeks, we constructed query commands from raw query strings and checked their syntactic rules. However, we did not check whether the query commands were valid for the target CSV file, including whether they violated any constraints.

## File definition

A CSV file has its definition, which is specified in the first row of the file. The file definition specifies the column names, data types and not N/A constraints. A column definition has syntax like this `<col_name>:<datatype>[!]`.

- `<col_name>` has [`snake_case`](https://en.wikipedia.org/wiki/Snake_case) format and no whitespaces
- `<datatype>` can be `text`, `number`, `bool`
- `!` indicates that the column is required (no N/A values on it)

For example, the file definition for the `BKStudent.csv` file is as follows:

| stid:number! | first_name:text! | last_name:text | age:number | major:text | graduated:bool
|---|---|---|--|--|--|
| 1 | Vinh | Nguyen Phuc | 22 | Computer Science | true |
| 2 | Quan |  | 20 | Computer Engineering | false |
| 3 | Phu  |  |  | Mechanical Engineering | true |

From this definition, we know the `BKStudent.csv` file has six columns: `stid`, `first_name`, `last_name`, `age`, `major`, and `graduated`. The `stid` and `first_name` columns are required, and the `stid` column must be a number ...

Now we can check a query command is valid or not. For instances:

- `SELECT name FROM BKStudent.csv` is not valid because there is no column named `name`.
- `INSERT INTO BKStudent.csv (stid, first_name, last_name) VALUES ("abcd", "John", "Doe")` is not valid because `stid`'s datatype is number.
- `INSERT INTO BKStudent.csv (first_name, age) VALUES ("John", 22)` is not valid because `stid` is required.
- ...

## Validate query command

To validate a query command against a file's definition, you need to check the following:

- Does the target CSV file exist?
- Does the query command specify all of the required columns?
- Are the data types of the columns in the query command the same as the data types of the columns in the table definition?
- Keep in mind that query target can be a subquery.

If any of these checks fail, the query command is invalid. In this case, print an appropriate error message to the console and terminate the program.

## Testing

Because we haven't a DDL (data definition language) yet, you can create CSV files manually for testing. For example, you could create a file named `BKStudentTest.csv` with the following contents:

| stid:number! | first_name:text! | last_name:text | age:number | major:text | graduated:bool
|---|---|---|---|--|--|
| 1 | Vinh | Nguyen Phuc | 22 | Computer Science | true |
| 2 | Quan |  | 20 | Computer Engineering | false |
| 3 | Phu  |  |  | Mechanical Engineering | true |

You could then test your program with the following queries:

```sql
-- Valid query command
SELECT name FROM BKStudentTest.csv

-- Invalid query command (column `name` does not exist)
SELECT name FROM BKStudentTest.csv

-- Invalid query command (stid's data type is number)
INSERT INTO BKStudentTest.csv (stid, first_name, last_name) VALUES ("abcd", "John", "Doe")

- Invalid query command (stid is required)
INSERT INTO BKStudentTest.csv (first_name, age) VALUES ("John", 22)
```

If your program is working correctly, it should print the following error messages for the invalid query commands:

```
$ Column "name" does not exist
$ stid's data type is number
$ stid is required
```

Good luck!

## Data Definition Language (Optional)

To create and delete CSV file, we can use SQL-liked DDL. For example, the `BKStudent.csv` file can be create by this command:

```sql
CREATE FILE BKStudent.csv (
    stid NUMBER NOT NULL
    first_name TEXT NOT NULL
    last_name TEXT
    age NUMBER
    major TEXT
    graduated BOOLEAN
);
```

To delete `BKStudent.csv` file, just use:

```sql
DROP FILE BKStudent.csv;
```

This part is not compulsory, so try if you want.