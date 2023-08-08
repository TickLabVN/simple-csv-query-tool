# Building the `exql` CSV Data Query Tool

## Introduction

Greetings, collaborators! Welcome to an engaging programming challenge that will introduce you to the creation of a program capable of querying data from CSV files using the SQL query language. This task will not only enhance your programming skills but also provide insights into structured data manipulation.

## Key Concepts

Before we delve into the details, let's cover some important concepts:

- **CSV (Comma-Separated Values)**: CSV is a simple file format used to store tabular data. Each row in the file corresponds to a row in the table, and data fields within each row are separated by commas.
- **SQL (Structured Query Language)**: SQL is a powerful language used for managing and manipulating structured data in databases. It enables various operations like querying, inserting, updating, and deleting data.

## Your tasks

Your task is to develop a program named `exql` that can read CSV files and execute **SQL-like** queries on the data within. When executed with a specific query and CSV file name as parameters, the program should display the queried data on the screen. Here's an example of usage:

```bash
exql "SELECT * FROM data.csv"
```

In this example, the `exql` program will read the `data.csv` file and execute the `SELECT *` query, fetching all data from the file. The program will then display the retrieved data on the terminal.

To make it easier, we can assume that CSV files is always a table `M`x`N + 1`, with the first row contains column names, `M` is number of columns and `N` rows of data. All column names have [`snake_case`](https://en.wikipedia.org/wiki/Snake_case) format. For instance:

| id | first_name | last_name | age | major |
|---|---|---|--|--|
| #1 | Vinh | Nguyen Phuc | 22 | Computer Science |
| #2 | Quan | Nguyen Hong | 20 | Computer Engineering |
| #1 | Phu  | Nguyen Ngoc | 20 | Mechanical Engineering |

## Requirements

Your program should have these components:

- **Command-line interface**: The program should be run from the command line, accepting the CSV file name and SQL-like query as parameters.
- **Query parsing**: Implement a mechanism to parse the provided query parameter. The program should understand basic SQL-like syntax, including `SELECT`/`INSERT` statements. `DELETE`/`UPDATE` statements are not required.
- **CSV Reading**: Design the program to read and interpret CSV files. Assume that the CSV files are properly formatted and include header rows.
- **Query Execution**: Process the query and retrieve appropriate data from the CSV file.

The executable file `exql` must be:

- Run and compiled on Linux operating system
- Use C++ standard 17
- NO MEMORY LEAKS after program exit
- Pass all test cases

## Learning Objectives

Through this challenge, you will:

- Learn the fundamentals of SQL and its application for data querying.
- Enhance your programming skills by building a data manipulation tool.
- Gain practical experience with I/O operations for reading and processing CSV files.
- This assignment is designed to gradually introduce you to these concepts. If you are new to SQL or databases, don't worry - you'll have access to various resources and guidance to help you successfully complete the task.

Furthermore, you will have ideas with:

- The difference between high level programming languages (`C#`, `Java`, `Javascript`, `Python` ...) and low level ones (`C/C++`, `Rust` ...)
- How computers understand programming/scripting languages


## Timelines

The challenge will last for 8 weeks but may extend or conclude sooner based on your ability.

- [Week 1](./timelines/week1.md): Set up working environment and find out more about this challenges
- [Week 2](./timelines/week2.md): Comming soon ...
- [Week 3](./timelines/week3.md): Comming soon ...
- [Week 4](./timelines/week4.md): Comming soon ...
- [Week 5](./timelines/week5.md): Comming soon ...
- [Week 6](./timelines/week6.md): Comming soon ...
- [Week 7](./timelines/week7.md): Comming soon ...
- [Week 8](./timelines/week8.md): Comming soon ...

> You should report your work in each week by a document (can be [Notion](https://www.notion.so/) notes, markdown, PDF or MS Word files ...).

Feel free to raise any questions in **Discord**. Best of luck, and enjoy building your `exql` CSV data query tool!

## Documents / Keywords

- Learn CPP: <https://www.learncpp.com/>
- CPP Roadmap for developers (advanced): <https://roadmap.sh/cpp>
- RAII 
- Rule of zero, rules of three, rules of five
- Cpp Core Guidelines: <https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#main>
