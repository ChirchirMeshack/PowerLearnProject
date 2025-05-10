-- Question 1 🧑‍💼
-- Write an SQL query to get the firstName, lastName, email, and officeCode of all employees.
-- Use an INNER JOIN to combine the employees table with the offices table using the officeCode column.
SELECT 
    e.firstName,  -- Select the first name of the employee
    e.lastName,   -- Select the last name of the employee
    e.email,      -- Select the email of the employee
    o.officeCode  -- Select the office code from the offices table
FROM 
    employees e  -- Alias the employees table as "e" for brevity
INNER JOIN 
    offices o  -- Join the employees table with the offices table
ON 
    e.officeCode = o.officeCode;  -- Specify the join condition: match employee's officeCode with the office's officeCode

-- Question 2 🛍️
-- Write an SQL query to get the productName, productVendor, and productLine from the products table.
-- Use a LEFT JOIN to combine the products table with the productlines table using the productLine column.
SELECT 
    p.productName,    -- Select the name of the product
    p.productVendor,  -- Select the vendor of the product
    pl.productLine     -- Select the product line from the productlines table
FROM 
    products p  -- Alias the products table as "p"
LEFT JOIN 
    productlines pl  -- Left join the products table with the productlines table
ON 
    p.productLine = pl.productLine;  -- Specify the join condition: match product's productLine with the productline's productLine

-- Question 3 📦
-- Write an SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- Use a RIGHT JOIN to combine the customers table with the orders table using the customerNumber column.
SELECT 
    o.orderDate,      -- Select the date the order was placed
    o.shippedDate,    -- Select the date the order was shipped
    o.status,         -- Select the status of the order
    c.customerNumber  -- Select the customer number from the customers table
FROM 
    customers c  -- Alias the customers table as "c"
RIGHT JOIN 
    orders o  -- Right join the customers table with the orders table
ON 
    c.customerNumber = o.customerNumber  -- Specify the join condition: match customer's customerNumber with the order's customerNumber
LIMIT 10;  -- Limit the result set to the first 10 orders