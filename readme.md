# SQL Guide

## Data Types in SQL

- **INT**: Integer type used for whole numbers
- **VARCHAR(100)**: Variable-length string, up to 100 characters
- **ENUM**: A string object with a value chosen from a list of permitted values
    - Example: `gender ENUM('Male','Female','Other')`
- **DATE**: Stores date values
    - Example: `date_of_birth DATE`
- **TIMESTAMP**: Stores date and time, automatically set to the current timestamp when a row is created
- **BOOLEAN**: True or false values

## Constraints

- **AUTO_INCREMENT**: Automatically generates a unique number for each row
- **PRIMARY KEY**: Uniquely identifies each row in the table
- **NOT NULL**: Ensures a column cannot have NULL values
- **UNIQUE**: Ensures all values in a column are unique (different)
- **DEFAULT**: Sets a default value for a column if no value is provided
    - Example: `created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, is_active BOOLEAN DEFAULT TRUE`

## Selecting Data from a Table

select All Colums :-
SELECT * FROM users