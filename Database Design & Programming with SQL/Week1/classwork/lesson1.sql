-- Basic Databases Concept: Where the Magic Happens ✨
-- A Database is a collection of related data organized in a way that can be easily accessed, managed, and updated.
-- Databases are like the super-organized fridges of the digital world 🍱 They keep all the data fresh and easy to access!

-- Tables 🍽️
-- A table is a collection of data elements organized in rows and columns.
-- Think of these as the different compartments in your fridge. Each one has a specific purpose, like storing user info or transaction records.

-- Example: Creating a table to store user information
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key: Unique identifier for each user
    first_name VARCHAR(50),                  -- Column for the user's first name
    last_name VARCHAR(50),                   -- Column for the user's last name
    email VARCHAR(100) UNIQUE,               -- Column for the user's email (must be unique)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Timestamp for when the user was created
);

-- Row 📊
-- A single entry in a table is called a tuple or row.
-- Imagine a table at a restaurant. Each row on the table is like a plate of food.
-- That plate holds all the information about one specific dish, like its name, price, and ingredients.

-- Example: Inserting a row into the `users` table
INSERT INTO users (first_name, last_name, email) VALUES
('John', 'Doe', 'john.doe@example.com'),  -- Row 1: User John Doe
('Jane', 'Smith', 'jane.smith@example.com');  -- Row 2: User Jane Smith

-- Columns 📊
-- Each column on the table is like a category of information about all the dishes.
-- For example, the `email` column in the `users` table stores the email addresses of all users.

-- Data Types 🏷️
-- Just as you wouldn't store ice cream in the vegetable drawer, data types ensure the right information goes in the right place.
-- Numbers for counting, text for names – everything has its perfect spot! 🧊🥕

-- Example: Common data types in SQL
-- INT: For integers (e.g., user_id)
-- VARCHAR: For variable-length strings (e.g., first_name, last_name, email)
-- TIMESTAMP: For date and time values (e.g., created_at)

-- Primary Keys 🔑
-- Unique identifiers for each row. Think of it as a VIP pass that ensures each entry in the database is unique.

-- Example: The `user_id` column in the `users` table is a primary key.

-- Foreign Keys 🔗
-- Links between tables that connect related data, like a bridge connecting two islands.

-- Example: Creating a table for orders and linking it to the `users` table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key: Unique identifier for each order
    user_id INT,                              -- Foreign Key: Links to the `users` table
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp for when the order was placed
    total_amount DECIMAL(10, 2),              -- Total amount for the order
    FOREIGN KEY (user_id) REFERENCES users(user_id)  -- Links to the `user_id` column in the `users` table
);

-- Example: Inserting rows into the `orders` table
INSERT INTO orders (user_id, total_amount) VALUES
(1, 250.00),  -- Order 1: Placed by user with user_id 1
(2, 150.00);  -- Order 2: Placed by user with user_id 2

-- Now you're ready to dive into the world of data with confidence and style! 😎
-- Remember, understanding data is the key to unlocking the potential of modern applications.
-- So go forth and conquer the data universe! 🚀🌠