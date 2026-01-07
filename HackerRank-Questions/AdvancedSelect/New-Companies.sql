--Solution
SELECT
    c.company_code,
    c.founder,
    COUNT(DISTINCT lm.lead_manager_code) AS total_lead_managers,
    COUNT(DISTINCT sm.senior_manager_code) AS total_senior_managers,
    COUNT(DISTINCT m.manager_code) AS total_managers,
    COUNT(DISTINCT e.employee_code) AS total_employees
FROM Company c
LEFT JOIN Lead_Manager lm
    ON c.company_code = lm.company_code
LEFT JOIN Senior_Manager sm
    ON c.company_code = sm.company_code
LEFT JOIN Manager m
    ON c.company_code = m.company_code
LEFT JOIN Employee e
    ON c.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;

--explanation:

--What the problem is really asking
-- For each company, print:
-- company_code
-- founder
-- total number of lead managers
-- total number of senior managers
-- total number of managers
-- total number of employees

--How to think about the problem (key idea)
-- Step 1
-- Start with the Company table
-- We need to get data from other tables too
-- So we JOIN the other tables to Company   
-- Use LEFT JOIN to include companies with zero employees/managers
-- Join conditions: company_code matches in all tables
-- Step 2
-- We need counts of distinct employees/managers in each role
-- So we use COUNT(DISTINCT ...) for each role
-- Step 3
-- We need to group results by company
-- So we use GROUP BY company_code, founder
-- Step 4
-- Finally, we order results by company_code
-- So we use ORDER BY company_code

--Putting it all together:
-- SELECT
--     c.company_code,
--     c.founder,
--     COUNT(DISTINCT lm.lead_manager_code) AS total_lead_managers,
--     COUNT(DISTINCT sm.senior_manager_code) AS total_senior_managers,
--     COUNT(DISTINCT m.manager_code) AS total_managers,
--     COUNT(DISTINCT e.employee_code) AS total_employees
-- FROM Company c
-- LEFT JOIN Lead_Manager lm
--     ON c.company_code = lm.company_code
-- LEFT JOIN Senior_Manager sm
--     ON c.company_code = sm.company_code
-- LEFT JOIN Manager m
--     ON c.company_code = m.company_code
-- LEFT JOIN Employee e
--     ON c.company_code = e.company_code
-- GROUP BY c.company_code, c.founder
-- ORDER BY c.company_code;

--Key SQL concepts used:
-- JOINs (LEFT JOIN)
-- COUNT(DISTINCT ...)
-- GROUP BY
-- ORDER BY

--