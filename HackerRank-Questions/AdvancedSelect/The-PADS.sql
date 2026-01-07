--The PADS
--Generate the following two result sets:

--1.Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).

--2. Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

--There are a total of [occupation_count] [occupation]s.

--where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

--Note: There will be at least two entries in the table for each type of occupation.
-- Input Format
--The OCCUPATIONS table is described as follows:
--+-------------+---------+
--| Column      | Type    |
--+-------------+---------+
--| Name        | String  |
--| Occupation  | String  |
--+-------------+---------+

--Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

SELECT CONCAT( Name, '(', LEFT(Occupation, 1), ')') 
FROM OCCUPATIONS
ORDER BY Name;

SELECT CONCAT('There are a total of ', 
COUNT(*), 
' ', 
LOWER(Occupation), 
's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;

--explanation:

--RESULT SET 1 — Names + (First letter of occupation)

-- How to think:
-- Alphabetical order → ORDER BY Name
-- First letter → LEFT(Occupation, 1)
-- Join text → CONCAT()

-- Putting it all together:
-- SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')')
-- FROM OCCUPATIONS
-- ORDER BY Name;

--RESULT SET 2 — Count each occupation

-- How to think:
-- Count people per occupation → COUNT(*)
-- Group by occupation → GROUP BY Occupation
-- Sort by count → ORDER BY COUNT(*)
-- Print sentence → CONCAT()
-- Occupation name must be lowercase → LOWER()
-- Pluralize occupation name → 's.'

-- Putting it all together:
--SELECT CONCAT(
--   'There are a total of ',
--   COUNT(*),
--   ' ',
--   LOWER(Occupation),
--   's.'
-- )
-- FROM OCCUPATIONS
-- GROUP BY Occupation
-- ORDER BY COUNT(*), Occupation;

--this problem is really about:
-- CONCAT
-- LEFT
-- COUNT
-- GROUP BY
-- ORDER BY

--Note:
--ORDER BY does NOT use AND
-- AND is used in WHERE
-- ORDER BY uses commas, not AND

-- Wrong:
-- ORDER BY Name AND LEFT(Occupation, 1)

--  Right:
-- ORDER BY Name, LEFT(Occupation, 1)

--The question does NOT say:
-- “Sort by the first letter of occupation”

-- It says:
-- Print the name followed by the first letter of occupation in brackets
-- So LEFT(Occupation,1) is for OUTPUT, not sorting.
-- That means it belongs in SELECT, not ORDER BY.

--SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')')
-- FROM OCCUPATIONS
-- ORDER BY Name;

--Super important rule (remember forever)
-- Clause	   Purpose
-- SELECT	   What to show
-- WHERE	   What to filter
-- ORDER BY	   How to sort
-- GROUP BY	   How to group
-- HAVING	   Filter groups
-- COUNT	   Count items
-- CONCAT	   Join text
-- LEFT	       Get first letter
-- LOWER	   Change case
-- RIGHT	   Get last letter
-- UPPER	   Change case
-- DISTINCT	   Remove duplicates
-- SUM	       Add numbers
-- AVG	       Average numbers
-- MIN	       Get smallest number
-- MAX	       Get largest number
--LENGTH	   Get length of text
-- BETWEEN	   Filter range
-- IN	       Filter list
-- LIKE	       Filter pattern
-- IS NULL	   Filter nulls
-- NOT	       Negate condition
-- AND	       Combine conditions
-- OR	       Combine conditions
-- +, -, *, /  Arithmetic operations
-- %, ^       Modulus, exponentiation
-- =, !=, <, >, <=, >= Comparison operators
--Remember these mental shortcuts to help you identify which SQL tools to use for different requirements!


-- For example:
-- Requirement      	SQL tool
-- Alphabetical	      ORDER BY Name
-- First letter	      LEFT(col,1)
-- Count items	      COUNT(*)
-- Sentence output	  CONCAT()
-- Grouping	          GROUP BY col
-- Filtering	      WHERE col = value
-- Remove duplicates  DISTINCT
-- Pattern matching	  LIKE
-- Range filtering	  BETWEEN value1 AND value2
-- Sorting	          ORDER BY col1, col2
-- Arithmetic	      +, -, *, /
-- Case conversion	  UPPER(col), LOWER(col)
-- Comparison operators	  =, !=, <, >, <=, >=
-- Aggregate functions	  SUM(col), AVG(col), MIN(col), MAX(col)
-- Logical operators	  AND, OR, NOT


-- Remember these mental shortcuts to help you identify which SQL tools to use for different requirements!
-- Use them to break down complex requirements into manageable parts!


--Think like this:

-- SELECT → What do I write on the paper? 
-- ORDER BY → In what order do I arrange the papers? 