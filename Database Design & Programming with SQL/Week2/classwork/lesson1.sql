-- lesson1.sql
-- Week 2: Mastering the SELECT Statement 🔑

-- 🔍 Mastering the SELECT Statement: Your Key to Data Retrieval 🔑
-- Welcome back, data enthusiasts! 📊 In this lesson, we'll explore the powerful SELECT statement.

-- Understanding the SELECT Statement 🧠
-- The SELECT statement is your primary tool for interacting with your database and retrieving the data you need.
-- Here's its basic structure:
-- SELECT column1, column2, ...
-- FROM table_name;
-- - SELECT: Initiates the SQL command to retrieve data.
-- - column1, column2, ...: Specifies the columns you want to retrieve. Use * to select all columns.
-- - FROM: Identifies the table containing the data.
-- - ;: Ends the SQL statement.

-- Example: Retrieving All Records 📋
-- If you need a complete overview of your data, use this query:
SELECT * FROM data_table;

-- Explanation:
-- - SELECT *: Retrieves all columns from the table.
-- - FROM data_table: Specifies the table from which to retrieve the data.
-- This command retrieves all records from your table, giving you a full picture of your app's activity.

-- Example: Retrieving Specific Details 🔍
-- To focus on specific information, such as transaction amounts and categories, use:
SELECT amount, category 
FROM data_table;

-- Explanation:
-- - SELECT amount, category: Retrieves only the "amount" and "category" columns.
-- - FROM data_table: Specifies the table containing the data.
-- This query narrows down the view to just the "amount" and "category" columns, helping you analyze specific aspects of your data.

-- Example: Filtering Data with WHERE Clause 🎯
-- To retrieve specific records based on a condition, use the WHERE clause:
SELECT * 
FROM data_table
WHERE category = 'Food';

-- Explanation:
-- - WHERE category = 'Food': Filters the records to include only those where the category is 'Food'.
-- This query helps you focus on specific subsets of your data.

-- Example: Sorting Data with ORDER BY 📊
-- To sort the retrieved data, use the ORDER BY clause:
SELECT * 
FROM data_table
ORDER BY amount DESC;

-- Explanation:
-- - ORDER BY amount DESC: Sorts the records by the "amount" column in descending order.
-- This query organizes your data for better analysis.

-- Example: Limiting Results with LIMIT 🚦
-- To retrieve only a specific number of records, use the LIMIT clause:
SELECT * 
FROM data_table
LIMIT 5;

-- Explanation:
-- - LIMIT 5: Restricts the output to the first 5 records.
-- This query is useful when working with large datasets.

-- By mastering these queries, you'll be able to manage and analyze your application's data efficiently.
-- Keep practicing, and soon you'll be an SQL pro! 🌟