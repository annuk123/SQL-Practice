-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

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

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(LOWER(CITY), 1) IN ('a','e','i','o','u')
  AND RIGHT(LOWER(CITY), 1) IN ('a','e','i','o','u')



-- Alternative (more expressive, same result)
-- Regex version (clean & expressive):

-- SELECT DISTINCT CITY
-- FROM STATION
-- WHERE CITY REGEXP '^[AEIOU].*[AEIOU]$';

-- Same logic, different style.