--Revising the Select Query II
--EasySQL (Basic)
--Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

--The CITY table is described as follows:
-- FIELD          TYPE
-- ID             INT
-- NAME           VARCHAR(35)
-- COUNTRYCODE    CHAR(3)
-- DISTRICT       VARCHAR(20)
-- POPULATION     INT

SELECT NAME
FROM CITY
WHERE POPULATION > 120000
  AND COUNTRYCODE = 'USA';



-- Another best way to write the same query:
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA'
  AND POPULATION > 120000;

--Order doesn’t matter here, but many pros write filters like this

--Why?
--Because it’s often easier to filter categorical data first
--(like COUNTRYCODE)
--before applying numeric thresholds
--(like POPULATION)
--This can make queries more readable and efficient.