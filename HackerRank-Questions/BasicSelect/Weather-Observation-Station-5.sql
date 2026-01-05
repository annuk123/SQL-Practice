--Weather Observation Station 5

--Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

--The STATION table is described as follows:

--+--------+--------------+
--| Field  | Type         |
--+--------+--------------+
--| ID     | NUMBER       |
--| CITY   | VARCHAR2(21) |
--| STATE  | VARCHAR2(2)  |
--| LAT_N  | NUMBER       |
--| LONG_W | NUMBER       |
--+--------+--------------+

--What the question wants

--we need to return two rows:

--City with the shortest name + its length
--City with the longest name + its length

-- Important rule (very important)

--If more than one city has:

--the same shortest length, or
--the same longest length

-- choose the one that comes first alphabetically.

--Key SQL ideas needed
--MIN() / MAX() → smallest / largest value
--LENGTH(CITY) → gives number of characters
--ORDER BY → sorting
--ASC / DESC → smallest / largest
--LIMIT 1 → pick only one row

--Step 1: Shortest city name
-- Logic:

-- Sort by LENGTH(CITY) → smallest first
-- If tie → sort alphabetically
-- Pick only 1 row

-- SELECT CITY, LENGTH(CITY)
-- FROM STATION
-- ORDER BY LENGTH(CITY) ASC, CITY ASC
-- LIMIT 1;

-- LENGTH(CITY) ASC → shortest first
-- CITY ASC → alphabetical tie-breaker
-- LIMIT 1 → only one city

--Step 2: Longest city name
-- Logic:
-- Sort by LENGTH(CITY) → largest first
-- If tie → sort alphabetically
-- Pick only 1 row
-- SELECT CITY, LENGTH(CITY)
-- FROM STATION
-- ORDER BY LENGTH(CITY) DESC, CITY ASC
-- LIMIT 1;

-- Final Query

SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY ASC
LIMIT 1;

SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC
LIMIT 1;

-- Mental rule to remember:

-- When problem says
-- “smallest / largest + alphabetical if tie”
--  Always think:
-- ORDER BY LENGTH(column), column
-- (or ASC for smallest)
-- (or DESC for largest)


-- Alternative approach using subqueries
-- SELECT CITY, LENGTH(CITY)
-- FROM STATION
-- WHERE LENGTH(CITY) = (SELECT MIN(LENGTH(CITY)) FROM STATION)
-- ORDER BY CITY
-- LIMIT 1;

-- SELECT CITY, LENGTH(CITY)
-- FROM STATION
-- WHERE LENGTH(CITY) = (SELECT MAX(LENGTH(CITY)) FROM STATION)
-- ORDER BY CITY
-- LIMIT 1;
