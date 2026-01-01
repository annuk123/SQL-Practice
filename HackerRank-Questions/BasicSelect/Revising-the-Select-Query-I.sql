--Revising the Select Query I
--EasySQL (Basic)
-- Query to select all columns from the CITY table where the population is greater than 100,000 and the country code is 'USA'.

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
WHERE POPULATION > 100000
  AND COUNTRYCODE = 'USA';