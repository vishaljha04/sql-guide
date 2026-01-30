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
```sql
-- Selecting specific columns
SELECT first_name, last_name FROM users;

-- Filtering results with WHERE clause
SELECT * FROM users WHERE age > 18;

-- Sorting results with ORDER BY
SELECT * FROM users ORDER BY created_at DESC;

-- Limiting results with LIMIT
SELECT * FROM users LIMIT 10;

-- Joining tables
SELECT users.first_name, orders.order_date 
FROM users 
JOIN orders ON users.id = orders.user_id;

-- Grouping results with GROUP BY
SELECT COUNT(*) AS user_count, country 
FROM users 
GROUP BY country;

-- Using aggregate functions
SELECT AVG(age) AS average_age FROM users;

-- Inserting new data
INSERT INTO users (first_name, last_name, age) 
VALUES ('John', 'Doe', 30);

-- Updating existing data
UPDATE users 
SET age = 31 
WHERE first_name = 'John' AND last_name = 'Doe';

-- Deleting data
DELETE FROM users WHERE id = 1;

-- Creating a new table
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
```
## SQL Functions

- **Aggregate Functions**: Functions that operate on a set of values and return a single value.
    - Example: 
    ```sql
    SELECT COUNT(*) FROM users; -- Counts the number of users
    SELECT SUM(age) FROM users; -- Sums the ages of all users
    ```

- **String Functions**: Functions that perform operations on string values.
    - Example:
    ```sql
    SELECT UPPER(first_name) FROM users; -- Converts first_name to uppercase
    SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM users; -- Concatenates first and last names
    ```

- **Date Functions**: Functions that manipulate date values.
    - Example:
    ```sql
    SELECT NOW(); -- Returns the current date and time
    SELECT DATE_FORMAT(order_date, '%Y-%m-%d') FROM orders; -- Formats the order_date
    ```

## Indexes

- **INDEX**: A performance optimization feature that allows faster retrieval of records.
    - Example:
    ```sql
    CREATE INDEX idx_last_name ON users(last_name); -- Creates an index on the last_name column
    ```

## Transactions

- **BEGIN**: Starts a transaction.
- **COMMIT**: Saves all changes made during the transaction.
- **ROLLBACK**: Undoes changes made during the transaction.
    - Example:
    ```sql
    BEGIN;
    UPDATE users SET age = 32 WHERE first_name = 'John' AND last_name = 'Doe';
    COMMIT; -- or ROLLBACK; to undo
    ```

## Views

- **VIEW**: A virtual table based on the result set of a SELECT query.
    - Example:
    ```sql
    CREATE VIEW active_users AS 
    SELECT * FROM users WHERE is_active = TRUE;
    ```

## Stored Procedures

- **Stored Procedure**: A set of SQL statements that can be stored and executed as a single unit.
    - Example:
    ```sql
    CREATE PROCEDURE GetUserCount()
    BEGIN
        SELECT COUNT(*) FROM users;
    END;
    ```

## Triggers

- **TRIGGER**: A set of instructions that are automatically executed in response to certain events on a particular table.
    - Example:
    ```sql
    CREATE TRIGGER before_insert_users 
    BEFORE INSERT ON users 
    FOR EACH ROW 
    SET NEW.created_at = NOW();
    ```

## Normalization

- **Normalization**: The process of organizing data to reduce redundancy.
    - Example: Splitting a user table into separate tables for users and their addresses.

## Common SQL Errors

- **Syntax Error**: Mistakes in SQL syntax.
- **Data Type Mismatch**: Trying to insert a value that does not match the column's data type.
- **Foreign Key Violation**: Attempting to insert a value in a foreign key column that does not exist in the referenced table.

## Best Practices

- Use meaningful names for tables and columns.
- Always back up your database before making significant changes.
- Regularly update your database management system to the latest version for security and performance improvements.
- Use comments in your SQL code for better readability.
- Optimize queries for performance, especially with large datasets.
