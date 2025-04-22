-- Question 1: Write an SQL query to retrieve the checkNumber, paymentDate, and amount
--             from the payments table.

SELECT
    checkNumber,
    paymentDate,
    amount
FROM
    payments;

-- Explanation: This query selects the specified columns (checkNumber, paymentDate, amount)
-- directly from the 'payments' table without any filtering or sorting.


-- Question 2: Write an SQL query to retrieve the orderDate, requiredDate, and status
--             of orders that are currently 'In Process' from the orders table.
--             Sort the results in descending order of orderDate.

SELECT
    orderDate,
    requiredDate,
    status
FROM
    orders
WHERE
    status = 'In Process'
ORDER BY
    orderDate DESC;

-- Explanation: This query selects the specified columns from the 'orders' table.
-- It filters the results using the WHERE clause to include only rows where the 'status'
-- column is exactly 'In Process'. Finally, it sorts the filtered results in
-- descending order based on the 'orderDate' column.


-- Question 3: Write a query to display the firstName, lastName, and email
--             of employees whose job title is 'Sales Rep' and order them
--             in descending order of employeeNumber.

SELECT
    firstName,
    lastName,
    email
FROM
    employees
WHERE
    jobTitle = 'Sales Rep'
ORDER BY
    employeeNumber DESC;

-- Explanation: This query retrieves the first name, last name, and email from the 'employees' table.
-- It filters for records where the 'jobTitle' is 'Sales Rep'. The resulting list
-- is then sorted based on the 'employeeNumber' in descending order.


-- Question 4: Write a query to retrieve all the columns and records from the offices table.

SELECT
    *
FROM
    offices;

-- Explanation: The asterisk (*) is a wildcard that selects all available columns
-- from the specified table ('offices'). This query retrieves every column and every row
-- from the 'offices' table.


-- Question 5: Write a query to fetch the productName and quantityInStock from the products table.
--             Sort the results in ascending order of buyPrice and limit the output to 5 records.

SELECT
    productName,
    quantityInStock
FROM
    products
ORDER BY
    buyPrice ASC
LIMIT 5;

-- Explanation: This query selects the product name and quantity in stock from the 'products' table.
-- It first sorts all products by their 'buyPrice' in ascending order (ASC is default but explicit here).
-- Then, the LIMIT clause restricts the output to only the first 5 rows from the sorted result set.