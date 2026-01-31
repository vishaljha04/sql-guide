# SQL Constraints Guide

## Overview
SQL constraints are rules applied to table columns to enforce data integrity and reliability.

## Types of Constraints

### 1. NOT NULL
Ensures a column always contains a value.
```sql
CREATE TABLE Users (
    UserID INT NOT NULL,
    Name VARCHAR(100) NOT NULL
);
```

### 2. UNIQUE
Ensures all values in a column are different.
```sql
CREATE TABLE Users (
    Email VARCHAR(100) UNIQUE
);
```

### 3. PRIMARY KEY
Uniquely identifies each row (NOT NULL + UNIQUE).
```sql
CREATE TABLE Users (
    UserID INT PRIMARY KEY
);
```

### 4. FOREIGN KEY
Links to a primary key in another table.
```sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
```

### 5. CHECK
Ensures values meet a specific condition.
```sql
CREATE TABLE Users (
    Age INT CHECK (Age >= 18)
);
```

### 6. DEFAULT
Sets a default value if none is provided.
```sql
CREATE TABLE Users (
    Status VARCHAR(20) DEFAULT 'Active'
);
```

### 7. INDEX
Speeds up data retrieval.
```sql
CREATE INDEX idx_email ON Users(Email);
```

## Summary
SQL constraints are essential for maintaining data quality and integrity. They prevent errors and ensure valid relationships between tables. The main types of constraints include:

- **NOT NULL**: Ensures a column always contains a value.
- **UNIQUE**: Ensures all values in a column are different.
- **PRIMARY KEY**: Uniquely identifies each row, combining NOT NULL and UNIQUE.
- **FOREIGN KEY**: Establishes a link to a primary key in another table.
- **CHECK**: Validates that values meet specific conditions.
- **DEFAULT**: Assigns a default value if none is provided.
- **INDEX**: Enhances data retrieval speed.

These constraints collectively help in enforcing data integrity and reliability across SQL databases.
