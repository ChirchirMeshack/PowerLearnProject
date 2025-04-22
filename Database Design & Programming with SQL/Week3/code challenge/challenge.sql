-- Challenge: SQL Table Creation and Insertion

-- Step 1: Create the `student` table
CREATE TABLE student (
    name VARCHAR(100) NOT NULL,  -- Student's name (maximum length of 100 characters) 🎟️
    age INT NOT NULL,            -- Student's age (integer) 🎭
    gender VARCHAR(10) NOT NULL  -- Student's gender (maximum length of 10 characters) 🌟
);

-- Step 2: Insert records into the `student` table
INSERT INTO student (name, age, gender) VALUES
('Alice', 20, 'Female'),  -- Record 1: Alice
('Bob', 22, 'Male'),      -- Record 2: Bob
('Charlie', 19, 'Non-binary'); -- Record 3: Charlie

-- Step 3: Query the `student` table to verify the data
SELECT * FROM student;

-- Explanation:
-- - The `CREATE TABLE` statement defines the structure of the `student` table with three columns: `name`, `age`, and `gender`.
-- - The `INSERT INTO` statement adds three unique records to the table.
-- - The `SELECT` statement retrieves all records from the `student` table to verify the data.