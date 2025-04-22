-- lesson2.sql
-- Week 5: Indexing - Turbocharging Your Database 🚀

-- Welcome back, data enthusiasts! Today, we're diving into the world of database indexing – your secret weapon for lightning-fast queries.

-- What is Indexing?
-- Indexing creates a separate structure that allows the database to quickly locate data without scanning every row in a table.
-- It's like creating a table of contents for your data.

-- Types of Indexes
-- 1. Primary Indexes:
--    - Based on the primary key of a table.
--    - Automatically created when you define a primary key.
--    - Ensures each entry is unique.

-- Example: Creating a table with a primary index
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,  -- Primary index automatically created
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- 2. Secondary Indexes:
--    - Created on non-key columns.
--    - Useful for frequently queried columns.

-- Example: Creating a secondary index
CREATE INDEX idx_department 
ON employees (department);

-- Explanation:
-- - idx_department: The name of the index.
-- - ON employees (department): Creates an index on the "department" column of the "employees" table.

-- 3. Clustered vs. Non-clustered Indexes:
--    - Clustered Index:
--      - Determines the physical order of data in the table.
--      - Only one clustered index per table.
--    - Non-clustered Index:
--      - Separate structure from the data rows.
--      - Can have multiple non-clustered indexes.

-- Example: Creating a clustered index
CREATE CLUSTERED INDEX idx_salary 
ON employees (salary);

-- Example: Creating a non-clustered index
CREATE NONCLUSTERED INDEX idx_name 
ON employees (name);

-- When and How to Create Indexes
-- Guidelines for creating indexes:
-- 1. Index columns used frequently in WHERE clauses and JOIN conditions.
-- 2. Consider indexing foreign key columns.
-- 3. Use composite indexes for queries that filter on multiple columns.

-- Example: Creating a composite index
CREATE INDEX idx_department_salary 
ON employees (department, salary);

-- Explanation:
-- - idx_department_salary: The name of the composite index.
-- - ON employees (department, salary): Creates an index on both "department" and "salary" columns.

-- The Index Balancing Act ⚖️
-- While indexes can dramatically improve query performance, they have drawbacks:
-- 1. Indexes take up additional storage space.
-- 2. They can slow down INSERT, UPDATE, and DELETE operations.
-- 3. Over-indexing can lead to decreased performance.

-- Example: Querying with an index
SELECT * 
FROM employees 
WHERE department = 'HR';

-- Explanation:
-- - The index on the "department" column (idx_department) will speed up this query by quickly locating rows where department = 'HR'.

-- Remember:
-- Effective indexing is like tuning a race car – it can give your database queries a serious speed boost when done right!