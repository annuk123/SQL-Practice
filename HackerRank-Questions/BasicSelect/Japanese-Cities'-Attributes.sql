--Japanese Cities' Attributes
--EASY
--Find the names of all cities in Japan along with their respective populations and areas.
--The CITY table is described as follows:
-- FIELD          TYPE
-- ID             INT
-- NAME           VARCHAR(35)
-- COUNTRYCODE    CHAR(3)
-- DISTRICT       VARCHAR(20)
-- POPULATION     INT

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';
-- This query retrieves the names, populations, and areas of all cities in Japan from the CITY table.