--Weather Observation Station 6
--Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

--+--------+--------------+
--| Field  | Type         |
--+--------+--------------+
--| ID     | NUMBER       |
--| CITY   | VARCHAR2(21) |
--| STATE  | VARCHAR2(2)  |
--| LAT_N  | NUMBER       |
--| LONG_W | NUMBER       |
--+--------+--------------+

-- Problem clarified

-- Find city names that:
-- Start with a vowel (A, E, I, O, U)
-- Are not duplicated (appear only once)

-- Step-by-step thinking (important)
--  1. “Starts with a vowel”
-- We check the first letter of CITY.
-- Vowels are: A, E, I, O, U
-- We can use the LIKE operator with wildcards (%) to find names starting with these letters.

-- In SQL:
-- CITY LIKE 'A%' → starts with A
-- CITY LIKE 'E%' → starts with E
-- CITY LIKE 'A%' OR CITY LIKE 'E%' OR ...

--  2. “No duplicates”
-- We want each city name to appear only once in the result.
-- We can use DISTINCT to eliminate duplicates.
-- Means:

-- COUNT(CITY) = 1
-- This always requires:

-- GROUP BY CITY
-- HAVING COUNT(*) = 1
-- This is non-negotiable.

-- Final Query Construction using functions

SELECT CITY
FROM STATION
WHERE LEFT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U')
GROUP BY CITY
HAVING COUNT(*) = 1;


-- WINDOW FUNCTION approach (advanced)
SELECT CITY
FROM (
    SELECT
        CITY,
        COUNT(*) OVER (PARTITION BY CITY) AS cnt
    FROM STATION
    WHERE LEFT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U')
) t
WHERE cnt = 1;

--  Common wrong approach (important to avoid)
-- SELECT DISTINCT CITY
-- FROM STATION
-- WHERE LEFT(CITY, 1) IN ('A','E','I','O','U');

--  WRONG because:
-- DISTINCT only removes duplicate rows
-- it does not check if a city appears more than once


-- Decision rule (remember forever)
-- Requirement	                          Use
-- Remove duplicates	                DISTINCT
-- Check frequency	                GROUP BY + HAVING
-- Rank / count without grouping	WINDOW FUNCTION