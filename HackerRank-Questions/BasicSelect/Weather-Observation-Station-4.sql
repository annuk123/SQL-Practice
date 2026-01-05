-- Weather Observation Station 4
--Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
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

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS CITY_DIFF
FROM STATION;

-- The query calculates the difference between the total number of CITY entries and the number of distinct CITY entries in the STATION table.

--Why this works

--COUNT(CITY) → counts all rows with a city

--COUNT(DISTINCT CITY) → counts unique city names

--Subtracting gives → duplicate city count