-- lesson2.sql
-- Week 3: ACID Properties of Transactions 💧

-- Transactions follow four key properties to ensure accuracy and reliability, called ACID.
-- Each part of ACID plays a role in making sure that database transactions happen smoothly and safely.
-- Let’s explore these properties with an easy-to-understand example: a mobile money transfer! 📲💰

-- 🌟 A - Atomicity: “All or Nothing”
-- Atomicity ensures that all parts of a transaction are completed together as a single unit.
-- If one part of the transaction fails, then none of the transaction’s changes are saved.

-- Example: Transferring Ksh 1000 from Alex’s account to Bella’s account
START TRANSACTION;

-- Step 1: Deduct Ksh 1000 from Alex’s account
UPDATE accounts
SET balance = balance - 1000
WHERE account_name = 'Alex';

-- Step 2: Add Ksh 1000 to Bella’s account
UPDATE accounts
SET balance = balance + 1000
WHERE account_name = 'Bella';

-- Commit the transaction if both steps succeed
COMMIT;

-- If any step fails, roll back the transaction
-- ROLLBACK;

-- 🌐 C - Consistency: Keep It Accurate
-- Consistency ensures that transactions do not violate any database rules or constraints.
-- It ensures the data is always accurate and adheres to the defined standards.

-- Example: Preventing negative balances
-- If Alex only has Ksh 500, the transaction will fail due to the constraint
UPDATE accounts
SET balance = balance - 1000
WHERE account_name = 'Alex' AND balance >= 1000;

-- 🔒 I - Isolation: No Interference
-- Isolation ensures that each transaction happens independently without affecting others.

-- Example: Two simultaneous transfers
START TRANSACTION;

-- Alex sends Ksh 1000 to Bella
UPDATE accounts
SET balance = balance - 1000
WHERE account_name = 'Alex';

UPDATE accounts
SET balance = balance + 1000
WHERE account_name = 'Bella';

-- Charles sends Ksh 500 to David
UPDATE accounts
SET balance = balance - 500
WHERE account_name = 'Charles';

UPDATE accounts
SET balance = balance + 500
WHERE account_name = 'David';

COMMIT;

-- 🔐 D - Durability: It’s Permanent!
-- Durability ensures that once a transaction is committed, the changes are saved permanently.

-- Example: Committing a successful transaction
START TRANSACTION;

-- Alex transfers Ksh 1000 to Bella
UPDATE accounts
SET balance = balance - 1000
WHERE account_name = 'Alex';

UPDATE accounts
SET balance = balance + 1000
WHERE account_name = 'Bella';

-- Commit the transaction to make changes permanent
COMMIT;

-- Explanation:
-- - Once the transaction is committed, the changes are saved permanently.
-- - Even if the system crashes, the updated balances will remain consistent in the database.

-- ACID properties ensure that database transactions are reliable, accurate, and safe.
-- Keep practicing to master transaction management! 🌟