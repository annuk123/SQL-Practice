--Weather Observation Station 3
--EasySQL (Basic)
--Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
--The STATION table is described as follows:
-- Columns:
-- FIELD          TYPE
-- ID             INT
-- CITY           VARCHAR(21)
-- STATE          VARCHAR(2)
-- LAT_N         DOUBLE
-- LONG_W        DOUBLE


SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0;

-- This query retrieves a list of unique CITY names from the STATION table where the ID is an even number.

--How to think about this problem (important)

--Plain English:

--1.I want city names
--2.Only where ID is even
--3. No duplicate city names

--SQL mapping:

--City names → SELECT CITY
--Remove duplicates → DISTINCT
--Even ID → ID % 2 = 0

--Interview rule to remember forever

--Even number check → % 2 = 0
--Odd number check → % 2 = 1
--Remove duplicates → DISTINCT

--These appear constantly in SQL interviews.

--Key takeaway (very important)
--Same logic, different SQL dialects.

--Database	             Even number check
--MySQL / PostgreSQL	   ID % 2 = 0
--DB2	                   MOD(ID, 2) = 0
--Oracle	               MOD(ID, 2) = 0

--Interview-level insight
--If interviewer asks:

--“How do you find even IDs?”

--Best answer:
--“Using modulo — either ID % 2 = 0 or MOD(ID, 2) = 0 depending on the database.”