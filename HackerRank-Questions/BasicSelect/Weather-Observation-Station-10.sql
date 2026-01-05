--Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

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
WHERE RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

--or
-- SELECT DISTINCT CITY
-- FROM STATION
-- WHERE LEFT(LOWER(CITY), 1) NOT IN ('a', 'e', 'i', 'o', 'u');

--or using REGEXP
-- SELECT DISTINCT CITY
-- FROM STATION
-- WHERE CITY NOT REGEXP '^[AEIOU]';

-- ^ → start of string
-- NOT REGEXP → does not match