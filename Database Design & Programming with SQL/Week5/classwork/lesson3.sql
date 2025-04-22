-- lesson3.sql
-- Week 5: Query Optimization - Crafting Efficient SQL 🔧📈

-- Welcome to the art of query optimization! In this lesson, we'll learn how to fine-tune your SQL queries for maximum performance.

-- Understanding Query Execution Plans 📊
-- Query execution plans show exactly how the database plans to retrieve your data.
-- Key points about execution plans:
-- 1. They provide a roadmap of how the database will execute your query 🗺️.
-- 2. You can use them to identify bottlenecks and inefficiencies 🚦.
-- 3. Most database management systems have tools to view execution plans 🛠️.

-- Query Optimization Strategies 💡

-- 1. Proper Use of WHERE Clauses 🔍
-- Be as specific as possible to filter data early and reduce the amount of data processed.

-- Example: Using WHERE clauses efficiently
-- Less efficient
SELECT * 
FROM orders 
WHERE order_date >= '2023-01-01';

-- More efficient
SELECT * 
FROM orders 
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Explanation:
-- - The second query is more specific and reduces the range of data to process.

-- 2. Avoiding Wildcard Characters at the Beginning of LIKE Patterns ❌
-- Leading wildcards prevent the use of indexes, which can slow down queries.

-- Example: Using LIKE patterns efficiently
-- Less efficient (can't use index)
SELECT * 
FROM customers 
WHERE last_name LIKE '%son';

-- More efficient (can use index)
SELECT * 
FROM customers 
WHERE last_name LIKE 'John%';

-- Explanation:
-- - Avoid leading wildcards to allow the database to use indexes for faster lookups.

-- 3. Utilizing JOIN Operations Effectively 🤝
-- Use appropriate JOIN types and join on indexed columns when possible.

-- Example: Efficient JOIN operation
SELECT o.order_id, c.customer_name 
FROM orders o 
INNER JOIN customers c ON o.customer_id = c.customer_id;

-- Explanation:
-- - Joining on indexed columns (e.g., `customer_id`) improves query performance.

-- 4. Minimizing the Use of Subqueries ⬇️
-- JOINs are often more efficient than subqueries.

-- Example: Replacing a subquery with a JOIN
-- Less efficient (subquery)
SELECT product_name 
FROM products 
WHERE product_id IN (
    SELECT product_id 
    FROM order_items 
    WHERE quantity > 10
);

-- More efficient (JOIN)
SELECT DISTINCT p.product_name 
FROM products p 
INNER JOIN order_items oi ON p.product_id = oi.product_id 
WHERE oi.quantity > 10;

-- Explanation:
-- - The JOIN query avoids the overhead of a subquery and processes data more efficiently.

-- The Optimization Mindset 🧠
-- Query optimization is an iterative process:
-- 1. Analyze current performance 📊.
-- 2. Identify bottlenecks 🚦.
-- 3. Make changes ✏️.
-- 4. Measure impact 📈.
-- 5. Repeat as necessary 🔄.

-- By applying these strategies and continuously refining your queries, you'll be well on your way to becoming an SQL optimization expert! 🌟