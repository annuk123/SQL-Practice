--Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

-- Input Format

-- The Employee table containing employee data for a company is described as follows:
--+-------------+---------+
--| Column Name | Type    |
--+-------------+---------+
--| employee_id | INTEGER |
--| name        | STRING  |
--| months      | INTEGER |
--| salary      | INTEGER |
--+-------------+---------+

SELECT name
FROM Employee
ORDER BY name;

-- ORDER BY name → sorts the result set in ascending alphabetical order based on the 'name' column

--Rule to remember (important)
-- Requirement	         SQL
-- Filter rows	         WHERE
-- Sort rows	         ORDER BY
-- Alphabetical order	 ORDER BY column

--  Never use WHERE when the question asks only for ordering