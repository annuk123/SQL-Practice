--Select All
--EasySQL (Basic)
-- Query to select all columns from the CITY table.
-- The CITY table is described as follows:
-- Columns:
-- FIELD          TYPE
-- ID             INT
-- NAME           VARCHAR(35)
-- COUNTRYCODE    CHAR(3)
-- DISTRICT       VARCHAR(20)
-- POPULATION     INT

SELECT *
FROM CITY;
-- This query retrieves all records and all columns from the CITY table without any filtering conditions.

--Pro Note:
--In real-world systems:
--SELECT * is okay for learning & interviews
--In production analytics, we often prefer:

SELECT id, name, countrycode, district, population
FROM city;
--This is because:
--1. Performance: Fetching only needed columns reduces data transfer.
--2. Clarity: Explicitly listing columns makes the query's intent clearer.
--3. Maintainability: Changes in table schema have less impact on queries.