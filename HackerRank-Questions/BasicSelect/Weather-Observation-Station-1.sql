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