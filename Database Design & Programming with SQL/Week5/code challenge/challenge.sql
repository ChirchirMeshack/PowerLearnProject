-- Step 1: Create the `student` table
CREATE TABLE student (
    name VARCHAR(100) NOT NULL,  -- Student's name (maximum length of 100 characters)
    age INT NOT NULL,            -- Student's age (integer)
    gender VARCHAR(10) NOT NULL  -- Student's gender (maximum length of 10 characters)
);

-- Step 2: Create an index named `IdxAge` on the `age` column
CREATE INDEX IdxAge 
ON student (age);

-- Explanation:
-- - The `CREATE TABLE` statement defines the structure of the `student` table with three columns: `name`, `age`, and `gender`.
-- - The `CREATE INDEX` statement creates an index named `IdxAge` on the `age` column of the `student` table.
-- - Indexing the `age` column can improve query performance for operations that filter or sort by age.