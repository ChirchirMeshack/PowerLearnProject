-- Challenge: Show the total payment amount for each payment date from the payments table
-- Using sampleDB shared during Week 2 class 🏫 💥

SELECT 
    paymentDate,                     -- Payment date
    SUM(amount) AS total_payment     -- Total payment amount for each date
FROM 
    payments
GROUP BY 
    paymentDate                      -- Group by payment date
ORDER BY 
    paymentDate DESC                 -- Sort by payment date in descending order
LIMIT 5;                             -- Show only the top 5 latest payment dates

-- Explanation:
-- 1. SELECT paymentDate, SUM(amount): Retrieves the payment date and calculates the total payment amount for each date.
-- 2. FROM payments: Specifies the table to query.
-- 3. GROUP BY paymentDate: Groups the results by each unique payment date.
-- 4. ORDER BY paymentDate DESC: Sorts the results by payment date in descending order (latest first).
-- 5. LIMIT 5: Restricts the output to the top 5 latest payment dates.