-- Question 1: Write an SQL query to drop an index named IdxPhone from customers table.

ALTER TABLE customers
DROP INDEX IdxPhone;

-- Explanation: This DDL (Data Definition Language) statement removes the index named 'IdxPhone'
-- from the 'customers' table. Dropping an index can affect query performance (positively or
-- negatively depending on usage patterns) and reduces storage overhead.


-- Question 2: Write an SQL query to create a user named bob with the password 'S$cu3r3!',
--             restricted to the localhost hostname.

CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- Explanation: This statement creates a new database user account.
-- 'bob' is the username.
-- '@'localhost' restricts this user account to only connect from the same machine
-- where the database server is running.
-- IDENTIFIED BY 'S$cu3r3!' sets the initial password for the user.


-- Question 3: Write an SQL query to grant the INSERT privilege to the user bob
--             on the salesDB database.

GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- Explanation: This DCL (Data Control Language) statement grants specific permissions.
-- GRANT INSERT allows the user to insert new rows.
-- ON salesDB.* specifies that the privilege applies to all tables (*) within the 'salesDB' database.
-- TO 'bob'@'localhost' identifies the user account receiving the privilege.


-- Question 4: Write an SQL query to change the password for the user bob to 'P$55!23'.

ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';


-- Explanation: This statement modifies the authentication credentials for an existing user.
-- ALTER USER specifies the user account ('bob'@'localhost') to modify.
-- IDENTIFIED BY 'P$55!23' sets the new password for this user.