--Japanese Cities' Names
--EASY
--Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
--The CITY table is described as follows:
-- FIELD          TYPE
-- ID             INT
-- NAME           VARCHAR(35)
-- COUNTRYCODE    CHAR(3)
-- DISTRICT       VARCHAR(20)
-- POPULATION     INT

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';
-- This query retrieves the names of all cities in Japan from the CITY table.