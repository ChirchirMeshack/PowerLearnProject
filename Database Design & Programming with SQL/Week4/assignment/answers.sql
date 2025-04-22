-- Question 1: Write an SQL query to show the total payment amount for each payment date
--             from the payments table. Display the payment date and the total amount paid
--             on that date. Sort the results by payment date in descending order.
--             Show only the top 5 latest payment dates.

SELECT
    paymentDate,
    SUM(amount) AS total_amount_paid  -- Calculate the sum of amounts for each date
FROM
    payments
GROUP BY
    paymentDate                     -- Group rows by paymentDate to aggregate amounts per date
ORDER BY
    paymentDate DESC                -- Sort the grouped results by date in descending order (latest first)
LIMIT 5;                            -- Restrict the output to the top 5 rows after sorting

-- Explanation: This query aggregates payment amounts by date.
-- SUM(amount) calculates the total for each group (date).
-- GROUP BY paymentDate creates these date-based groups.
-- ORDER BY paymentDate DESC sorts the results to show the latest dates first.
-- LIMIT 5 restricts the output to only the 5 most recent payment dates with their totals.


-- Question 2: Write an SQL query to find the average credit limit of each customer
--             from the customers table. Display the customer name, country, and
--             the average credit limit. Group the results by customer name and country.

SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit -- Calculate the average credit limit
FROM
    customers
GROUP BY
    customerName, country;                  -- Group by both name and country

-- Explanation: This query calculates the average credit limit.
-- AVG(creditLimit) computes the average for each group.
-- GROUP BY customerName, country ensures that if there were multiple entries for the
-- same customer name/country combination (unlikely for customerName, but following instruction),
-- their credit limits would be averaged together. It groups by all non-aggregated columns
-- selected, which is standard practice.


-- Question 3: Write an SQL query to find the total price of products ordered
--             from the orderdetails table. Display the product code, quantity ordered,
--             and the total price for each product. Group the results by product code
--             and quantity ordered.

SELECT
    productCode,
    quantityOrdered,
    priceEach, -- Included for context of the calculation
    (quantityOrdered * priceEach) AS total_line_price -- Calculate the total price for this line item
FROM
    orderdetails
GROUP BY
    productCode, quantityOrdered, priceEach -- Group by all characteristics defining this line item type
ORDER BY
    productCode, quantityOrdered; --Added sorting for better readability

-- Explanation: This query calculates the total price for specific line items in orders.
-- (quantityOrdered * priceEach) computes the total value for a line.
-- GROUP BY productCode, quantityOrdered, priceEach groups identical line items together.
-- If multiple order lines had the exact same product code, quantity, and price, this grouping
-- would consolidate them (though typically each line is distinct or aggregated differently).
-- The result shows the subtotal for each distinct type of product entry found in the order details.


-- Question 4: Write an SQL query to find the highest payment amount for each check number
--             from the payments table. Display the check number and the highest amount
--             paid for that check number. Group the results by check number.

SELECT
    checkNumber,
    MAX(amount) AS highest_amount -- Find the maximum amount within each group
FROM
    payments
GROUP BY
    checkNumber;                -- Group rows based on the checkNumber

-- Explanation: This query finds the maximum payment amount associated with each check number.
-- MAX(amount) identifies the largest 'amount' value within each group.
-- GROUP BY checkNumber creates groups where all rows share the same check number.
-- The result shows each check number alongside the single largest payment amount recorded for it.