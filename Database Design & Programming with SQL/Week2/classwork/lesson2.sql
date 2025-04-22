-- lesson2.sql
-- Week 2: Advanced Data Retrieval 🔍

-- 🔍 Advanced Data Retrieval: Wildcards and Comparison Operators 🎯
-- Welcome back, data detectives! 🕵️‍♂️ In this lesson, we'll enhance your SQL skills with powerful techniques for flexible and targeted data retrieval.

-- Wildcards (%) for Flexible Searching 🔍
-- Wildcards are your secret weapon for finding records with variations in wording.

-- Example: Searching for records with a keyword in the description
SELECT * 
FROM records 
WHERE description LIKE '%keyword%';

-- Explanation:
-- - LIKE '%keyword%': Matches any record where "keyword" appears anywhere in the description.
-- - %: Acts as a wildcard, matching any characters before or after the "keyword".
-- This query is perfect for capturing variations and synonyms! 🔄

-- Comparison Operators for Targeted Filtering 🎯
-- Comparison operators help you filter records based on specific criteria.

-- Example: Finding transactions with an amount greater than 100
SELECT * 
FROM transactions 
WHERE amount > 100;

-- Explanation:
-- - amount > 100: Filters records where the "amount" column is greater than 100.
-- - Comparison operators include =, >, <, <=, and >=.
-- This query efficiently targets specific records. 📈

-- Example: Filtering by date range
SELECT * 
FROM events 
WHERE event_date 
BETWEEN '2023-01-01' AND '2023-12-31';

-- Explanation:
-- - BETWEEN '2023-01-01' AND '2023-12-31': Retrieves records where the "event_date" falls within the specified range.
-- This query is useful for analyzing events within a specific time frame. 📅

-- Combining Techniques for Powerful Queries 💪
-- Combine wildcards and comparison operators for advanced filtering.

-- Example: Finding products with "pro" in their name and a price of 50 or more
SELECT * 
FROM products 
WHERE name LIKE '%pro%' AND price >= 50;

-- Explanation:
-- - name LIKE '%pro%': Matches products where "pro" appears anywhere in the name.
-- - price >= 50: Filters records where the price is 50 or more.
-- Combining these techniques refines your search to get precisely the data you need. 🎯

-- By mastering these techniques, you'll be able to craft powerful queries that extract exactly what you're looking for from your database.
-- Keep practicing, and soon you'll be an SQL ninja! 🥷💡