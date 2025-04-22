-- lesson1.sql
-- Week 5: Foundations of Database Security 🛡️

-- Welcome to the world of database security! In this lesson, we'll explore the fundamental concepts that keep our data safe and sound.

-- Why Database Security Matters
-- Imagine your database as a vault filled with precious gems. Just like you wouldn't leave your valuables unprotected, databases need robust security measures to safeguard sensitive information.

-- Importance of Database Security:
-- 1. Protects against unauthorized access
-- 2. Maintains data integrity
-- 3. Ensures compliance with regulations
-- 4. Builds trust with users and customers

-- User Authentication: The First Line of Defense
-- Authentication verifies the identity of users trying to access the database.

-- Example: Creating a user with authentication
CREATE USER 'secure_user'@'localhost' IDENTIFIED BY 'StrongPassword123!';

-- Explanation:
-- - 'secure_user': The username for the new user.
-- - 'localhost': Restricts access to the local machine.
-- - IDENTIFIED BY 'StrongPassword123!': Sets a strong password for the user.

-- Multi-Factor Authentication (MFA):
-- - Adds an extra layer of security by requiring additional verification (e.g., OTP, biometrics).

-- Authorization: Knowing Your Place
-- Authorization determines what authenticated users can do within the database.

-- Example: Granting privileges to a user
GRANT SELECT, INSERT ON sampleDB.* TO 'secure_user'@'localhost';

-- Explanation:
-- - GRANT SELECT, INSERT: Allows the user to view and add data.
-- - ON sampleDB.*: Applies the privileges to all tables in the `sampleDB` database.
-- - TO 'secure_user'@'localhost': Specifies the user and host.

-- Role-Based Access Control (RBAC):
-- Group similar users into roles and assign privileges to roles instead of individual users.

-- Example: Creating a role and assigning privileges
CREATE ROLE 'analyst';
GRANT SELECT ON sampleDB.* TO 'analyst';

-- Example: Assigning a role to a user
GRANT 'analyst' TO 'secure_user'@'localhost';

-- Explanation:
-- - CREATE ROLE 'analyst': Creates a role for analysts.
-- - GRANT SELECT: Allows the role to view data.
-- - GRANT 'analyst': Assigns the role to the user.

-- Encryption: The Secret Code
-- Encryption ensures that data is secure, even if intercepted.

-- Example: Enabling data encryption for a table
CREATE TABLE sensitive_data (
    id INT PRIMARY KEY,
    encrypted_info VARBINARY(255) NOT NULL
) ENCRYPTION='Y';

-- Explanation:
-- - ENCRYPTION='Y': Ensures that the data in the table is encrypted at rest.

-- Summary:
-- Good database security involves:
-- 1. Authentication: Verifying user identity.
-- 2. Authorization: Controlling user actions.
-- 3. Encryption: Protecting data at rest and in transit.

-- Remember, good database security is like a well-orchestrated symphony – all these elements need to work together harmoniously to keep your data safe and sound.