--Weather Observation Station 1
--EasySQL (Basic)
--Query a list of CITY and STATE from the STATION table.
--The STATION table is described as follows:
-- Columns:
-- FIELD          TYPE
-- ID             INT
-- CITY           VARCHAR(21)
-- STATE          VARCHAR(2)
-- LAT_N         DOUBLE
-- LONG_W        DOUBLE

SELECT CITY, STATE
FROM STATION;

-- This query retrieves the CITY and STATE columns from the STATION table.
--How to think about this problem (important)
--Plain English:
--1.I want city names and state codes
--SQL mapping:
--City names → SELECT CITY
--State codes → SELECT STATE
--Interview rule to remember forever
--Selecting multiple columns → Separate column names with a comma
--These appear constantly in SQL interviews.
--Key takeaway (very important)
--Same logic, different SQL dialects.
--Database	             Multiple column selection
--MySQL / PostgreSQL	   SELECT col1, col2
--DB2	                   SELECT col1, col2
--Oracle	               SELECT col1, col2
--Interview-level insight
--If interviewer asks:
--“How do you select multiple columns?”
--Best answer:
--“Separate the column names with a comma in the SELECT statement.”