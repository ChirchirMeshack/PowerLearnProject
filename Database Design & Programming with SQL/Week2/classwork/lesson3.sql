-- lesson3.sql
-- Week 2: Mastering the WHERE Clause 🎯

-- 🔍 Mastering the WHERE Clause: Filtering Data with Precision 🎯
-- Welcome back, data explorers! 🕵️‍♂️ In this lesson, we'll dive into the powerful WHERE clause, your tool for filtering data with precision.

-- Understanding the WHERE Clause 🧠
-- The WHERE clause is your filter within a SELECT statement. It specifies conditions that records must meet to be included in the results.

-- Basic Structure:
-- SELECT column1, column2 
-- FROM table_name 
-- WHERE condition;

-- The WHERE clause follows the FROM clause and sets criteria for data retrieval.
-- It's like a sieve, letting only the relevant data through. 🗂️

-- Using Comparison Operators within WHERE 🔍
-- Comparison operators help filter data based on specific values.

-- Example: Finding transactions with an amount greater than 100
SELECT * 
FROM transactions 
WHERE amount > 100;

-- Explanation:
-- - WHERE amount > 100: Filters records where the "amount" column is greater than 100.
-- This query retrieves all transactions where the amount exceeds 100. 📈

-- Example: Filtering by date range
SELECT * 
FROM events
WHERE event_date 
BETWEEN '2023-01-01' AND '2023-12-31';

-- Explanation:
-- - WHERE event_date BETWEEN '2023-01-01' AND '2023-12-31': Retrieves records where the "event_date" falls within the specified range.
-- This query retrieves events occurring in 2023. 📅

-- Logical Operators for Advanced Filtering 🎯
-- The WHERE clause allows for more control with logical operators:
-- - AND: Combine conditions (e.g., retrieve records meeting two criteria).
-- - OR: Retrieve records meeting one or more conditions.
-- - NOT: Exclude specific data points.

-- Example: Finding adult users in the US
SELECT * 
FROM users 
WHERE age > 18 AND country = 'US';

-- Explanation:
-- - WHERE age > 18 AND country = 'US': Filters records where the "age" is greater than 18 and the "country" is 'US'.
-- This query finds adult users in the US. 🇺🇸

-- Combining Techniques for Granular Control 💪
-- Combine wildcards, comparison operators, and logical operators for precise filtering.

-- Example: Finding products with "pro" in their name, costing 50 or more, or belonging to electronics
SELECT * 
FROM products 
WHERE name LIKE '%pro%' AND price >= 50 
OR category = 'electronics';

-- Explanation:
-- - name LIKE '%pro%': Matches products where "pro" appears anywhere in the name.
-- - price >= 50: Filters records where the price is 50 or more.
-- - OR category = 'electronics': Includes products in the "electronics" category.
-- This query finds products with "pro" in their name that cost 50 or more or belong to electronics. 🎧📱

-- By mastering the WHERE clause, you'll gain precise control over your data retrieval.
-- Keep practicing, and soon you'll be an SQL expert! 🌟