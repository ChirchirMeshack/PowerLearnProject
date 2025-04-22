-- 🗣️ SQL: The Universal Database Language 🌍
-- SQL is like the cool translator 😎 between your app and the database. It helps your application:
-- 🔍 Retrieve Specific Data: "Find me all the cat videos!" 🐱
-- 📊 Organize Data for Display: "Show the most popular ice cream flavours!" 🍦
-- ✏️ Update Data as Needed: "Change my username to 'CodeNinja'!" 🥷

-- And there you have it! You're now ready to rock the database world! 🎸
-- Remember, databases are the unsung heroes keeping our favorite websites and apps running smoothly.
-- So next time you're scrolling through your feed, give a little nod to the hardworking databases behind the scenes! 👏🏼🚀

-- 🏗️ Building Your First Data Table: Let's Get Hands-On! 🛠️
-- Welcome, data architects! 👷‍♀️👷‍♂️ Now that you've mastered the basics, it's time to roll up your sleeves and create your very first table.
-- Get ready to turn your project ideas into a data reality! 🌟

-- 🎯 Lesson Objectives: Your Data Adventure Checklist ✅
-- 🧠 Conceptualize and Design a Data Table
-- 🔍 Identify Crucial Data Points
-- 🏷️ Assign Appropriate Data Types

-- 📐 Designing Your Data Table: Let's Build! 🚧
-- Imagine you're creating a magical filing cabinet for your project.
-- Each drawer is a table, each folder a row, and each sheet of paper a piece of data. Let's make it happen! 🎩✨

-- Step 1: Conceptualize Your Needs 💭
-- 🕵️‍♀️ What information do I want to track?
-- 🔮 What details will be useful in the future?
-- 🚀 Any cool features I might want to add later?

-- Step 2: Identify Essential Data Points 📊
-- 💰 Amount/Value: The numerical star of the show
-- 🕰️ Date/Time: When did the magic happen?
-- 🏷️ Category: What kind of data are we dealing with?
-- 📝 Description: A little extra info never hurts!

-- Step 3: Assign Appropriate Data Types 🎭
-- 🔢 Amount/Value: Numbers only, please! (integer or decimal)
-- 📅 Date/Time: Time to shine! (date or timestamp)
-- 🆎 Category: Text me! (text data type)
-- 📚 Description: Text, but not too much! (text with length limit)

-- Example: Creating a table to track expenses
CREATE TABLE expenses (
    expense_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each expense
    amount DECIMAL(10, 2) NOT NULL,             -- Amount spent (e.g., 100.50)
    expense_date DATE NOT NULL,                 -- Date of the expense
    category VARCHAR(50),                       -- Category of the expense (e.g., Food, Travel)
    description TEXT                            -- Additional details about the expense
);

-- Example: Inserting data into the `expenses` table
INSERT INTO expenses (amount, expense_date, category, description) VALUES
(100.50, '2025-04-14', 'Food', 'Lunch at a restaurant'),  -- Expense 1
(50.00, '2025-04-13', 'Transport', 'Taxi ride to the office'),  -- Expense 2
(200.00, '2025-04-12', 'Shopping', 'Bought new shoes');  -- Expense 3

-- Example: Retrieving data from the `expenses` table
SELECT * FROM expenses;

-- Example: Updating a record in the `expenses` table
UPDATE expenses
SET amount = 120.00, description = 'Dinner at a fancy restaurant'
WHERE expense_id = 1;

-- Example: Deleting a record from the `expenses` table
DELETE FROM expenses
WHERE expense_id = 3;

-- MORE Resources:
-- 🎓 Keep practicing SQL commands like SELECT, INSERT, UPDATE, and DELETE.
-- 📚 Explore advanced topics like JOINs, GROUP BY, and subqueries.
-- 🚀 Build your own mini-projects to solidify your understanding of SQL.