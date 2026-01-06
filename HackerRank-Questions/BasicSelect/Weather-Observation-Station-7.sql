--Weather Observation Station 7
--Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

--+--------+--------------+
--| Field  | Type         |
--+--------+--------------+
--| ID     | NUMBER       |
--| CITY   | VARCHAR2(21) |
--| STATE  | VARCHAR2(2)  |
--| LAT_N  | NUMBER       |
--| LONG_W | NUMBER       |
--+--------+--------------+

SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U')

