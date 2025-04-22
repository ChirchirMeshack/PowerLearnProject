-- lesson1.sql
-- Week 4: Advanced SQL Queries and Aggregations 🛠️

-- 🌟 Welcome to Level-Up SQL: Advanced Queries Edition! 🌟
-- Today, we’ll channel your inner data detective and teach you how to uncover insights, spot trends, and flex your SQL superpowers with aggregation, grouping, and filtering.

-- 1. Aggregation Functions: The VIP Guests
-- Aggregation functions help you summarize data, like summing, counting, or averaging values.

-- Example: COUNT - How many orders were placed?
SELECT COUNT(*) AS total_orders
FROM orders;

-- Example: SUM - Total revenue from all orders
SELECT SUM(total_amount) AS total_revenue
FROM orders;

-- Example: AVG - Average order value
SELECT AVG(total_amount) AS average_order_value
FROM orders;

-- Example: MIN & MAX - Smallest and largest order amounts
SELECT MIN(total_amount) AS smallest_order, MAX(total_amount) AS largest_order
FROM orders;

-- Explanation:
-- - COUNT: Counts the number of rows in the table.
-- - SUM: Adds up all the values in the specified column.
-- - AVG: Calculates the average value of the specified column.
-- - MIN & MAX: Finds the smallest and largest values in the specified column.

-- 2. GROUP BY: Squad Goals
-- GROUP BY divides your data into groups based on a common factor.

-- Example: Total revenue per customer
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id;

-- Example: Total orders per shipping method
SELECT shipping_method, COUNT(*) AS total_orders
FROM orders
GROUP BY shipping_method;

-- Explanation:
-- - GROUP BY customer_id: Groups the data by customer ID.
-- - SUM(total_amount): Calculates the total amount spent by each customer.
-- - GROUP BY shipping_method: Groups the data by shipping method.

-- 💡 Pro Tip: Without GROUP BY, SQL would mix up the groups, leading to incorrect results.

-- 3. HAVING: The Party Filter
-- HAVING filters grouped data based on aggregate functions.

-- Example: Customers who spent more than $500
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 500;

-- Example: Shipping methods with more than 10 orders
SELECT shipping_method, COUNT(*) AS total_orders
FROM orders
GROUP BY shipping_method
HAVING COUNT(*) > 10;

-- Explanation:
-- - HAVING SUM(total_amount) > 500: Filters groups where the total amount spent is greater than $500.
-- - HAVING COUNT(*) > 10: Filters groups where the total number of orders is greater than 10.

-- 4. ORDER BY: The Setlist
-- ORDER BY organizes your results in ascending or descending order.

-- Example: Sort customers by total spending (descending)
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Example: Sort shipping methods by popularity (ascending)
SELECT shipping_method, COUNT(*) AS total_orders
FROM orders
GROUP BY shipping_method
ORDER BY total_orders ASC;

-- Explanation:
-- - ORDER BY total_spent DESC: Sorts the results by total spending in descending order.
-- - ORDER BY total_orders ASC: Sorts the results by total orders in ascending order.

-- Combining It All: Advanced Query Example
-- Example: Top 5 customers by total spending
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 500
ORDER BY total_spent DESC
LIMIT 5;

-- Explanation:
-- - GROUP BY customer_id: Groups the data by customer ID.
-- - HAVING SUM(total_amount) > 500: Filters customers who spent more than $500.
-- - ORDER BY total_spent DESC: Sorts the results by total spending in descending order.
-- - LIMIT 5: Restricts the output to the top 5 customers.

-- Keep practicing these advanced SQL techniques to master data analysis! 🌟