-- lesson2.sql
-- Week 4: Understanding NULL Values in Databases 🌟

-- 🌟 Understanding NULL Values in Databases
-- In the realm of databases, a NULL value represents the absence of any data in a field.
-- It's crucial to understand that NULL is not the same as zero or spaces; it signifies that no value was provided for a particular field.

-- 🤔 What is a NULL Value?
-- - Definition: A field with a NULL value is essentially empty, indicating no data entry.
-- - Key Distinction: NULL is different from zero (0) or a field containing spaces.
--   While zero and spaces are actual values, NULL signifies that the field was left blank intentionally.

-- 🧪 How to Test for NULL Values
-- Testing for NULL values requires specific operators because traditional comparison operators like =, <, or <> don't work with NULLs.

-- IS NULL: Checks if a field is NULL.
-- IS NOT NULL: Checks if a field contains any value other than NULL.

-- Example: IS NULL Syntax
-- Retrieve records where a specific column has a NULL value
SELECT * 
FROM employees
WHERE department IS NULL;

-- Explanation:
-- - WHERE department IS NULL: Filters records where the "department" column has no value (NULL).

-- Example: IS NOT NULL Syntax
-- Retrieve records where a specific column has any value other than NULL
SELECT * 
FROM employees
WHERE department IS NOT NULL;

-- Explanation:
-- - WHERE department IS NOT NULL: Filters records where the "department" column contains a value.

-- 📋 Summary
-- - IS NULL Operator: Returns true if the specified value is NULL.
-- - IS NOT NULL Operator: Returns true if the specified value is not NULL.

-- Example: Combining IS NULL with other conditions
-- Retrieve employees with no department assigned and a salary greater than 50000
SELECT * 
FROM employees
WHERE department IS NULL AND salary > 50000;

-- Explanation:
-- - WHERE department IS NULL: Filters records where the "department" column is NULL.
-- - AND salary > 50000: Further filters records where the "salary" column is greater than 50000.

-- Example: Updating NULL Values
-- Assign a default department to employees with no department
UPDATE employees
SET department = 'General'
WHERE department IS NULL;

-- Explanation:
-- - SET department = 'General': Updates the "department" column to 'General'.
-- - WHERE department IS NULL: Ensures only records with NULL values in the "department" column are updated.

-- Example: Inserting NULL Values
-- Insert a new employee with no department assigned
INSERT INTO employees (name, age, department)
VALUES ('John Doe', 30, NULL);

-- Explanation:
-- - NULL: Explicitly inserts a NULL value into the "department" column.

-- Understanding and handling NULL values is essential for accurate data analysis and manipulation.
-- By mastering these techniques, you can ensure your queries return precise results, leading to better insights and decision-making in your database management tasks.
-- Keep practising these concepts to enhance your database skills! 🌟