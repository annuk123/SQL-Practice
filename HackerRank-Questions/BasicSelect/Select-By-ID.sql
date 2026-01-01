--Select By ID
--EasySQL (Basic)
-- Query to select all columns from the CITY table where the ID is 1661.
-- The CITY table is described as follows:
-- Columns:
-- FIELD          TYPE
-- ID             INT
-- NAME           VARCHAR(35)
-- COUNTRYCODE    CHAR(3)
-- DISTRICT       VARCHAR(20)
-- POPULATION     INT  

SELECT *
FROM CITY
WHERE ID = 1661;

-- This query retrieves the record from the CITY table where the ID matches 1661.