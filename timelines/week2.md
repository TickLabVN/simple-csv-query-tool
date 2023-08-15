# Week 2

In this week, we will implement:

- Command-Line Interface
- Query Parsing (For INSERT statement only)

## Command-Line Interface

Below is a basic "Hello World" program in C++:

```c++
#include <iostream>

int main() {
    std::cout << "Hello World!" << std::endl;
    return 0;
}
```

To execute this code, we need to compile it into an executable binary file (let's assume its name is `hello`) and then run it from the terminal:

```bash
./hello
```

However, our goal is to enhance this CLI to print customized messages, not limited to "Hello, World!". For instance:

Now, I need to print any words whatever I want, not just "Hello world !". For examples:

```bash
> ./hello "Hello!"
Hello!
> ./hello "We are at TickLab!"
We are at TickLab!
```

Let's explore how to achieve this functionality !

## Query Parsing

### Why query strings ?

Why do we use query strings (or more broadly, programming languages)? Imagine you're communicating with your program, instructing it to:

- Retrieve specific data for you
- Recognize that you only require the age and name columns
- Retrieve this data from a file named abc.csv

However, your program might struggle to comprehend human language. Amidst all your words, it only needs key information and keywords like "read," "age," "name," and "abc.csv." Consequently, you could distill crucial details into something like exql "read", "age", "name", "abc.csv". But from a human perspective, this command might be challenging to grasp.

> Programming/scripting languages emerged to facilitate mutual understanding between humans and computers.

Thanks to tools such as compilers and interpreters that act as translators, we are spared from manually translating our code into machine language. So, **please code for human reading, not computer reading**.

### Validating and Analyzing Queries

Let's consider an example command line instruction:

```bash
exql "SELECT id, first_name, last_name, email FROM personnel.csv"
```

The structure of the query string resembles SQL, which makes it relatively easy to discern that we're instructing the program to:

- Retrieve personnel data from a file named personnel.csv
- Extract specific attributes: IDs, first names, last names, and emails
From computer point of view, important information include:

From the computer's perspective, the pertinent details consist of:

- `SELECT`
- `id`, `first_name`, `last_name`, `email`
- `personnel.csv`

The term "FROM" doesn't carry meaning for the computer, so we should focus on extracting only the relevant information within our program. However, consider the query string "ABCDEF SELECT 123 id, first_name Hello world abcd.txt." How can we extract crucial information from an unstructured string like this?

This is where query validation becomes important.

Query validation serves as a way to ensure that the provided query adheres to a specific syntax or pattern that the program can understand. It aids in distinguishing valuable components from noise in the query string. By validating the query, we can reliably extract essential elements.

## Goals

- Implement a CLI (command-line interface) that receive query string as parameter and then print it to console
- Validate and extract data from `INSERT` statement
