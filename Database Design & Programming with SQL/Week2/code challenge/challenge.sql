-- answers.sql
-- Week 2: Movie Database Challenge 🎬

-- Step 1: Create the Actors Table 🌟
CREATE TABLE Actors (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique ID for each actor 🎭
    name VARCHAR(100) NOT NULL,         -- The actor's name ✨
    age INT                             -- The actor's age 🎂
);

-- Step 2: Create the Movies Table 🎥
CREATE TABLE Movies (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique ID for each movie 🎟️
    title VARCHAR(255) NOT NULL,        -- The name of the movie 🎬
    year INT                            -- The release year of the movie 📅
);

-- Step 3: Insert Sample Data into Actors Table 🌟
INSERT INTO Actors (name, age) VALUES
('Leonardo DiCaprio', 48),  -- Actor 1
('Meryl Streep', 74),       -- Actor 2
('Denzel Washington', 68),  -- Actor 3
('Scarlett Johansson', 38); -- Actor 4

-- Step 4: Insert Sample Data into Movies Table 🎥
INSERT INTO Movies (title, year) VALUES
('Inception', 2010),        -- Movie 1
('The Devil Wears Prada', 2006), -- Movie 2
('Training Day', 2001),     -- Movie 3
('Black Widow', 2021);      -- Movie 4

-- Step 5: Query the Data
-- Example 1: Retrieve all actors
SELECT * FROM Actors;

-- Example 2: Retrieve all movies
SELECT * FROM Movies;

-- Example 3: Retrieve movies released after 2005
SELECT * 
FROM Movies 
WHERE year > 2005;

-- Example 4: Retrieve actors older than 40
SELECT * 
FROM Actors 
WHERE age > 40;

-- Explanation:
-- - The `Actors` table stores information about actors, including their name and age.
-- - The `Movies` table stores information about movies, including their title and release year.
-- - The queries demonstrate how to retrieve and filter data from the tables.

-- Keep practicing to master SQL! 🌟