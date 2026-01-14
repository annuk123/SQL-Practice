-- Query the total population of all cities in CITY where District is California.

-- Input Format

-- The CITY table is described as follows:
--+-------------+---------+
--| Column      | Type    |
--+-------------+---------+
--| ID          | Integer |
--| Name        | String  |
--| CountryCode | String  |
--| District    | String  |
--| Population  | Integer |
--+-------------+---------+

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
--explanation:
--What the problem is really asking
-- We need to find the total population of all cities in the CITY table where the District is California.
--How to think about the problem (key idea)
-- Step 1
-- We need to filter the rows to include only those where the District is California.
-- So we use a WHERE clause: WHERE DISTRICT = 'California'
-- Step 2
-- We need to calculate the total population of the filtered cities.
-- So we use the SUM() function on the Population column: SUM(POPULATION)
--Putting it all together:
-- SELECT SUM(POPULATION)
-- FROM CITY
-- WHERE DISTRICT = 'California';   