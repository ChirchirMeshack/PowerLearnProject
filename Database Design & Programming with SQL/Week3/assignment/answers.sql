-- Question 1: Write an SQL statement to create a table named student
--             with the following columns: id (integer, primary key),
--             fullName (text field, max 100 characters), age (integer).

CREATE TABLE student (
    id INT PRIMARY KEY,             -- Integer type and designated as the primary key
    fullName VARCHAR(100) NOT NULL, -- Variable character string with a max length of 100, cannot be null
    age INT                         -- Integer type for age
);

-- Explanation: This DDL (Data Definition Language) statement creates a new table
-- named 'student'. It defines three columns:
-- 'id' as an integer and the primary key for unique identification.
-- 'fullName' as a variable character string capable of storing up to 100 characters.
--            Marked as NOT NULL assuming a student must have a name.
-- 'age' as an integer to store the student's age.


-- Question 2: Write an SQL statement to insert at least 3 records into the student table.

-- Inserting multiple records using a single INSERT statement with multiple value sets.
INSERT INTO student (id, fullName, age) VALUES
(1, 'Kipchirchir', 21),
(2, 'Wanjala', 19),
(3, 'Aoko', 22);

-- Explanation: This DML (Data Manipulation Language) statement inserts three rows
-- into the 'student' table. Each row provides values for the 'id', 'fullName',
-- and 'age' columns, corresponding to the column order specified.


-- Question 3: Write an SQL statement to update the age of the student with ID 2 to 20
--             in the student table.

UPDATE student
SET age = 20        -- Set the 'age' column to the new value 20
WHERE id = 2;       -- Specify the condition: only update the row where 'id' is 2

-- Explanation: This DML statement modifies existing data in the 'student' table.
-- The SET clause specifies that the 'age' column should be updated to 20.
-- The WHERE clause is crucial; it restricts the update operation to only affect
-- the row(s) where the 'id' column has a value of 2. Without a WHERE clause,
-- the age of *all* students would be updated.