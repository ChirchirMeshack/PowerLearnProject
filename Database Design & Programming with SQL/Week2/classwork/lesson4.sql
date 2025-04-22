-- lesson4.sql
-- Week 2: Organizing Data with the ORDER BY Clause 📊

-- 🔄 Organizing Data with the ORDER BY Clause 📊
-- Welcome back, data organizers! 📂 In this lesson, we'll explore the `ORDER BY` clause, your tool for sorting data in a meaningful way.

-- Understanding the ORDER BY Clause 🧠
-- The `ORDER BY` clause helps you sort data retrieved by a SELECT statement.
-- It follows the WHERE clause (if used) and specifies the column to sort by.

-- Basic Structure:
-- SELECT column1, column2 
-- FROM table_name 
-- WHERE condition 
-- ORDER BY column_name ASC|DESC;
-- - ASC: Sorts data in ascending order (e.g., A-Z, 0-9).
-- - DESC: Sorts data in descending order (e.g., Z-A, 9-0).

-- Sorting by a Single Column 📋
-- Example: Viewing records from most recent to least recent
SELECT * 
FROM records 
ORDER BY date DESC;

-- Explanation:
-- - ORDER BY date DESC: Sorts the records by the "date" column in descending order.
-- This query retrieves all records and sorts them with the most recent date first. 📅

-- Sorting by Multiple Columns 📑
-- Example: Sorting records alphabetically by category and then by date within each category
SELECT * 
FROM records 
ORDER BY category ASC, date DESC;

-- Explanation:
-- - ORDER BY category ASC: Sorts the records alphabetically by the "category" column in ascending order.
-- - date DESC: Within each category, sorts the records by the "date" column in descending order.
-- This query organizes data for detailed analysis. 📚

-- Key Note 🎯
-- The `ORDER BY` clause enhances clarity and usability by organizing data meaningfully.
-- By sorting effectively, you can uncover patterns and trends across categories and timeframes.

-- Combining ORDER BY with WHERE Clause 🔍
-- Example: Filtering data and then sorting it
SELECT * 
FROM transactions 
WHERE amount > 100 
ORDER BY transaction_date DESC;

-- Explanation:
-- - WHERE amount > 100: Filters records where the "amount" is greater than 100.
-- - ORDER BY transaction_date DESC: Sorts the filtered records by "transaction_date" in descending order.
-- This query retrieves high-value transactions and organizes them by date. 📈

-- Sorting by Calculated Columns 🧮
-- Example: Sorting by a calculated column (e.g., total price)
SELECT product_name, quantity, price, (quantity * price) AS total_price 
FROM sales 
ORDER BY total_price DESC;

-- Explanation:
-- - (quantity * price) AS total_price: Calculates the total price for each record.
-- - ORDER BY total_price DESC: Sorts the records by the calculated "total_price" column in descending order.
-- This query helps identify the highest-value sales. 💰

-- Keep practicing to master data organization! 🌟