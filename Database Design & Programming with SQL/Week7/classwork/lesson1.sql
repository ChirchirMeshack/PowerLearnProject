-- Normalization process and the first three normal forms

-- First Normal Form (1NF): Atomic Values 🧬💥

-- 1NF is all about keeping things atomic—think of it as your data being in its purest form.

-- Rules for 1NF:

-- No repeating groups allowed 🚫
-- Create a separate table for each set of related data
-- Identify each set with a primary key 🔑

-- Advanced 1NF Considerations:

-- Handling multi-valued attributes like champs
-- Dealing with composite attributes
-- Managing arrays and lists in relational databases like a boss

-- Example: Transforming a non-1NF table before:

-- StudentID	Name	Courses	Grades
-- 1	John Doe	Math, Science, History	90,85,78

-- After (1NF):
-- Students:

-- StudentID	Name
-- 1	John Doe

-- StudentCourses:

-- StudentID	Course	Grade
-- 1	Math	90
-- 1	Science	85
-- 1	History	78

-- Second Normal Form (2NF): Full Functional Dependency 🔗💡

-- Now we’re moving to 2NF! This is where we kick partial dependencies to the curb.

-- Steps to achieve 2NF:

-- Identify the primary key
-- Spot those partial dependencies 👀
-- Move partially dependent attributes to their own table

-- Advanced Concepts:

-- Composite keys and how they affect normalization
-- Finding hidden partial dependencies like a pro

-- Example: Moving from 1NF to 2NFBefore (1NF):

-- OrderID	ProductID	ProductName	CustomerID	Quantity
-- 1	P1	Widget A	C1	5
-- 1	P2	Widget B	C1	3
-- 2	P1	Widget A	C2	2

-- After (2NF):
-- Orders:

-- OrderID	CustomerID	ProductID	Quantity
-- 1	C1	P1	5
-- 1	C1	P2	3
-- 2	C2	P1	2

-- Products:

-- ProductID	ProductName
-- P1	Widget A
-- P2	Widget B

-- Third Normal Form (3NF): Eliminating Transitive Dependencies 🔀🚫

-- Finally, let’s tackle transitive dependencies in our quest for normalization glory!

-- Steps to achieve 3NF:

-- Make sure your table is in 2NF
-- Identify those pesky transitive dependencies
-- Remove them by creating new tables 🎉

-- Advanced Concepts:

-- Spotting non-obvious transitive dependencies
-- Balancing performance with normalization needs ⚖️

-- Example: From 2NF to 3NFBefore (2NF):

-- EmployeeID	DepartmentID	DepartmentName
-- E1	D1	Sales
-- E2	D2	Marketing

-- After (3NF):
-- Employees:

-- EmployeeID	DepartmentID
-- E1	D1
-- E2	D2

-- Departments:

-- DepartmentID	DepartmentName
-- D1	Sales
-- D2	Marketing

-- Each normal form builds on the last one—like leveling up in your favorite game! 🎮🏆

-- Real-World Applications of Advanced Normalization 📈
-- Case Study: E-commerce Platform 🛒

-- Initial Problematic Schema:
-- An e-commerce platform had a denormalized table that caused redundancy and update issues:

-- CREATE TABLE Orders (
--     OrderID INT PRIMARY KEY,
--     CustomerName VARCHAR(100),
--     ProductName VARCHAR(100),
--     Quantity INT,
--     TotalPrice DECIMAL(10,2)
-- );

-- Challenges:

-- Redundant customer and product information.
-- Difficulties in updating product prices without affecting historical orders.

-- Normalized Approach:

-- Customers Table
-- CREATE TABLE Customers (
--     CustomerID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Email VARCHAR(100)
-- );

-- Products Table
-- CREATE TABLE Products (
--     ProductID INT PRIMARY KEY,
--     ProductName VARCHAR(100),
--     Price DECIMAL(10,2)
-- );

-- Orders Table
-- CREATE TABLE Orders (
--     OrderID INT PRIMARY KEY,
--     CustomerID INT,
--     OrderDate DATE,
--     FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
-- );

-- OrderItems Table
-- CREATE TABLE OrderItems (
--     OrderItemID INT PRIMARY KEY,
--     OrderID INT,
--     ProductID INT,
--     Quantity INT,
--     FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
--     FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
-- );

-- Results:

-- Reduced redundancy by separating customers and products.
-- Improved data integrity and simplified updates.
-- Enhanced reporting capabilities for sales analysis.

-- Case Study: Healthcare Management System 🏥

-- Initial Problematic Schema:
-- A healthcare system had patient records stored in one large table:

-- CREATE TABLE PatientRecords (
--     PatientID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Diagnosis VARCHAR(200),
--     Medication VARCHAR(200),
--     DoctorName VARCHAR(100)
-- );

-- Challenges:

-- Difficulty in managing medications and diagnoses separately.
-- Redundancy in doctor information.

-- Normalized Approach:

-- Patients Table
-- CREATE TABLE Patients (
--     PatientID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     DateOfBirth DATE
-- );

-- Diagnoses Table
-- CREATE TABLE Diagnoses (
--     DiagnosisID INT PRIMARY KEY,
--     PatientID INT,
--     DiagnosisDescription VARCHAR(200),
--     FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
-- );

-- Medications Table
-- CREATE TABLE Medications (
--     MedicationID INT PRIMARY KEY,
--     PatientID INT,
--     MedicationName VARCHAR(200),
--     Dosage VARCHAR(50),
--     FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
-- );

-- Doctors Table
-- CREATE TABLE Doctors (
--     DoctorID INT PRIMARY KEY,
--     DoctorName VARCHAR(100)
-- );

-- CREATE TABLE Appointments (
--     AppointmentID INT PRIMARY KEY,
--     PatientID INT,
--     DoctorID INT,
--     AppointmentDate DATE,
--     FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
--     FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
-- );

-- Results:

-- Enhanced data organization by separating concerns.
-- Improved patient care through better tracking of medications and diagnoses.
-- Easier compliance with healthcare regulations.

-- Key Takeaways 📝
-- Normalization is Essential: It helps eliminate redundancy and maintain data integrity.
-- Higher Normal Forms Matter: BCNF, 4NF, and 5NF are crucial for complex relationships.
-- Real-World Applications: Proper normalization leads to better performance and easier maintenance.
-- Balance is Key: While normalization is important, always consider performance implications based on your specific use case.

-- Optimizing Database Design: Beyond Basic Normalization 🚀🔬

-- Hey data wizards! 🧙‍♂️ Ready to take your database skills to the next level? Let's explore some advanced techniques that'll make your databases sing! 🎵

-- Temporal Data Modeling: Time-Traveling with Your Data ⏳🕰️

-- Imagine if your database could remember the past and predict the future. That's what temporal data modeling is all about!

-- Key Concepts:

-- Valid Time: When data is true in the real world 🌍
-- Transaction Time: When data is recorded in the database 💾
-- Bitemporal Modeling: Tracking both valid and transaction time 🔄

-- Example: Employee Salary History
-- CREATE TABLE EmployeeSalaryHistory (
--     EmployeeID INT,
--     Salary DECIMAL(10,2),
--     ValidFrom DATE,
--     ValidTo DATE,
--     TransactionStart TIMESTAMP,
--     TransactionEnd TIMESTAMP
-- );

-- This table lets you track an employee's salary over time, including when changes were made. Time travel, but for data! 🚀

-- Hierarchical Data in Relational Databases: Family Trees for Your Data 🌳

-- Storing tree-like structures in a flat database can be tricky. Here are some cool techniques:

-- Adjacency List Model: Simple but can get messy for deep hierarchies
-- Nested Set Model: Great for read-heavy scenarios
-- Closure Table: The Goldilocks solution - just right for most cases!

-- Example: Closure Table for an Org Chart
-- CREATE TABLE Employees (
--     EmployeeID INT PRIMARY KEY,
--     Name VARCHAR(100)
-- );

-- CREATE TABLE EmployeeHierarchy (
--     AncestorID INT,
--     DescendantID INT,
--     Depth INT,
--     PRIMARY KEY (AncestorID, DescendantID)
-- );

-- Now you can easily find all of Bob's bosses or everyone who reports to Alice! 🕵️‍♀️

-- Polymorphic Associations: One Table to Rule Them All 💍

-- Sometimes, you need to relate different types of things. Enter polymorphic associations!Approaches:

-- Single Table Inheritance: One table for all types (simple but can get messy)
-- Class Table Inheritance: Separate tables for each type (organized but more complex)
-- Shared Primary Key: Linked tables with shared keys (best of both worlds)

-- Example: Content Management System
-- CREATE TABLE Contents (
--     ContentID INT PRIMARY KEY,
--     Title VARCHAR(200),
--     ContentType ENUM('Article', 'Video', 'Podcast')
-- );

-- CREATE TABLE Articles (
--     ContentID INT PRIMARY KEY,
--     Body TEXT,
--     FOREIGN KEY (ContentID) REFERENCES Contents(ContentID)
-- );

-- CREATE TABLE Videos (
--     ContentID INT PRIMARY KEY,
--     URL VARCHAR(255),
--     Duration INT,
--     FOREIGN KEY (ContentID) REFERENCES Contents(ContentID)
-- );

-- Now you can handle different types of content without breaking a sweat! 😎

-- Handling Large Objects (LOBs): Big Data, No Problem 🐘

-- When you've got big chunks of data to store, try these tricks:

-- Use separate tables for LOBs
-- Consider file system storage for really big stuff
-- Implement smart caching to keep things speedy ⚡

-- Example: Document Management System
-- CREATE TABLE Documents (
--     DocumentID INT PRIMARY KEY,
--     FileName VARCHAR(255),
--     FileSize BIGINT,
--     ContentType VARCHAR(100)
-- );

-- CREATE TABLE DocumentContents (
--     DocumentID INT PRIMARY KEY,
--     Content LONGBLOB,
--     FOREIGN KEY (DocumentID) REFERENCES Documents(DocumentID)
-- );

-- Now you can handle those massive PDFs without breaking your database! 📚

-- Performance Optimization Techniques: Make Your Database Zoom 🏎️💨

-- Let's turbocharge your database with these pro tips:

-- Materialized Views: Pre-computed results for lightning-fast queries
-- Partitioning: Divide and conquer your big tables
-- Advanced Indexing: Go beyond basic indexes for super-speed

-- Example: Partitioning a Massive Orders Table
-- CREATE TABLE Orders (
--     OrderID INT,
--     CustomerID INT,
--     OrderDate DATE,
--     TotalAmount DECIMAL(10,2)
-- ) PARTITION BY RANGE (YEAR(OrderDate)) (
--     PARTITION p0 VALUES LESS THAN (2020),
--     PARTITION p1 VALUES LESS THAN (2021),
--     PARTITION p2 VALUES LESS THAN (2022),
--     PARTITION p3 VALUES LESS THAN (2023),
--     PARTITION p4 VALUES LESS THAN MAXVALUE
-- );

-- Now your queries will zoom through years of data like it's nothing! 🚀

-- The Art of Balance: Theory vs. Practice ⚖️

-- Remember, while these techniques are super cool, always consider:

-- Your app's specific needs 🎯
-- Performance implications ⏱️
-- How easy it is to maintain 🛠️
-- Future scalability requirements 📈