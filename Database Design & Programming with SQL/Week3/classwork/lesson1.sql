-- lesson1.sql
-- Week 3: Data Manipulation Language (DML) 💾

-- In SQL, Data Manipulation Language (DML) is used to manage and manipulate data stored in the database.
-- DML statements allow you to perform various operations like inserting new data, updating existing data, or deleting unwanted data.
-- It provides a way to interact with the actual data in the database.

-- The INSERT Statement
-- The INSERT statement allows you to insert one or more rows into a table.

-- Syntax:
-- INSERT INTO table_name(column1, column2,...) 
-- VALUES (value1, value2,...);

-- Example: Inserting data into a table
INSERT INTO employees (employee_id, first_name, last_name, department, salary)
VALUES (1, 'John', 'Doe', 'HR', 50000);

-- Explanation:
-- - INSERT INTO employees: Specifies the table where the data will be inserted.
-- - (employee_id, first_name, last_name, department, salary): Lists the columns to insert data into.
-- - VALUES (1, 'John', 'Doe', 'HR', 50000): Provides the corresponding values for the columns.

-- The UPDATE Statement
-- The UPDATE statement updates data in a table. It allows you to change the values in one or more columns of a single row or multiple rows.

-- Syntax:
-- UPDATE table_name 
-- SET 
--     column_name1 = expr1,
--     column_name2 = expr2,
-- [WHERE condition];

-- Example: Updating data in a table
UPDATE employees
SET salary = 55000
WHERE employee_id = 1;

-- Explanation:
-- - UPDATE employees: Specifies the table where the data will be updated.
-- - SET salary = 55000: Updates the "salary" column to a new value of 55000.
-- - WHERE employee_id = 1: Ensures that only the row with employee_id = 1 is updated.

-- The DELETE Statement
-- The DELETE command is used to delete data from a table.

-- Syntax:
-- DELETE FROM table_name WHERE condition;

-- Example: Deleting data from a table
DELETE FROM employees
WHERE employee_id = 1;

-- Explanation:
-- - DELETE FROM employees: Specifies the table where the data will be deleted.
-- - WHERE employee_id = 1: Ensures that only the row with employee_id = 1 is deleted.

-- Important Notes:
-- 1. Always use the WHERE clause with UPDATE and DELETE statements to avoid accidentally modifying or deleting all rows in the table.
-- 2. DML statements directly affect the data in the database, so use them carefully.

-- Keep practicing to master DML operations! 🌟