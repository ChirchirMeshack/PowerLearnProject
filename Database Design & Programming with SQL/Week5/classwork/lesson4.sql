-- lesson4.sql
-- Week 5: Putting It All Together - Securing and Optimizing Your Database 🏆🔗

-- Congratulations on making it to our final lesson! Today, we'll tie everything together and see how security, indexing, and query optimization work in harmony to create a robust and efficient database system.

-- The Security-Performance Balance ⚖️
-- Security and performance often seem at odds, but with careful planning, you can have both. Here's how they interact:

-- 1. Access Control and Query Performance
-- - Proper access control ensures users only see data they need 👁️‍🗨️.
-- - This can improve performance by reducing the amount of data processed ⏱️.
-- Example: Implementing Row-Level Security (RLS)
CREATE VIEW secure_orders AS
SELECT * 
FROM orders
WHERE customer_id = CURRENT_USER;

-- Explanation:
-- - The view filters data based on the current user, ensuring they only see their own orders.
-- - This reduces the amount of data processed and improves query performance.

-- 2. Encryption and Indexing
-- - Encrypted columns can be indexed but with some limitations 🔒📚.
-- - Some types of encryption may impact the effectiveness of indexes 🚫.
-- Example: Encrypting sensitive data
CREATE TABLE secure_customers (
    customer_id INT PRIMARY KEY,
    name VARBINARY(255) NOT NULL,  -- Encrypted name
    email VARBINARY(255) NOT NULL  -- Encrypted email
);

-- Explanation:
-- - Encrypt sensitive columns like `name` and `email` to protect data at rest.
-- - Balance security needs with performance requirements ⚖️.

-- Best Practices for a Secure and Optimized Database 🌟

-- 1. Implement Least Privilege Access
-- - Only grant users the minimum permissions they need 🙅‍♂️.
-- - Regularly review and update access rights 🔄.
-- Example: Granting minimal permissions
GRANT SELECT ON orders TO 'analyst'@'localhost';

-- Explanation:
-- - The `analyst` role is granted only SELECT permissions on the `orders` table.

-- 2. Index Strategically
-- - Create indexes on columns used in WHERE clauses and JOINs 📈.
-- - Don't over-index – it can slow down write operations ⏳.
-- Example: Creating an index on frequently queried columns
CREATE INDEX idx_order_date 
ON orders (order_date);

-- Explanation:
-- - The index on `order_date` speeds up queries filtering by date.

-- 3. Optimize Queries
-- - Use execution plans to identify slow queries ⌛.
-- - Rewrite queries to use indexes effectively 📝.
-- Example: Using an optimized query
SELECT o.order_id, c.customer_name 
FROM orders o 
INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Explanation:
-- - The query uses indexed columns (`customer_id` and `order_date`) for better performance.

-- 4. Regular Maintenance
-- - Update statistics to help the query optimizer 📊.
-- - Rebuild or reorganize fragmented indexes 🔧.
-- Example: Rebuilding an index
ALTER INDEX idx_order_date REBUILD;

-- Explanation:
-- - Rebuilding the index ensures it remains efficient for query execution.

-- 5. Monitor and Audit
-- - Set up monitoring for both security events and performance metrics 📉.
-- - Regularly audit user activities and access patterns 👀.
-- Example: Auditing user activities
CREATE TABLE audit_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100),
    action VARCHAR(255),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Explanation:
-- - The `audit_log` table tracks user activities for security and performance analysis.

-- Bringing It All Together: A Case Study 📖
-- Scenario: An e-commerce company is experiencing slow order processing and has concerns about data security.
-- Steps to tackle the concerns:
-- 1. Analyze slow queries using execution plans and optimize them.
-- 2. Implement Row-Level Security (RLS) to restrict access to sensitive data.
-- 3. Encrypt sensitive customer information like emails and payment details.
-- 4. Create indexes on frequently queried columns like `order_date` and `customer_id`.
-- 5. Regularly monitor and audit database activities to identify potential issues.

-- Remember:
-- Creating a secure and optimized database is an ongoing process! Stay curious 🤔, keep learning 📚, and always be ready to adapt to new challenges and technologies! 🌍✨