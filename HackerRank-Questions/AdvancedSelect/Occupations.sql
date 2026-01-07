--Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output should consist of four columns (Doctor, Professor, Singer, and Actor) in that specific order, with their respective names listed alphabetically under each column.

-- Note: Print NULL when there are no more names corresponding to an occupation.

-- Input Format

-- The OCCUPATIONS table is described as follows:

--+-------------+---------+
--| Column      | Type    |
--+-------------+---------+
--| Name        | String  |
--| Occupation  | String  |
--+-------------+---------+
--Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

SELECT
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    SELECT
        Name,
        Occupation,
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn
    FROM OCCUPATIONS
) t
GROUP BY rn
ORDER BY rn;

--explanation:
--The problem explicitly says:

-- “Pivot the Occupation column so the output has four columns
-- (Doctor, Professor, Singer, Actor)”

-- That means:
-- Each occupation becomes a column
-- Names appear under their occupation
-- Missing values → NULL
-- So sorting alone can never solve this.

--How to think about this problem (key idea)
-- Step 1
-- Inside each occupation, names must be:
-- sorted alphabetically
-- numbered (1st Doctor, 2nd Doctor, …)

--  We use ROW_NUMBER() for this.


-- Step 2

-- Use conditional aggregation:
-- Put Doctor names in Doctor column
-- Professor names in Professor column
-- etc.

-- We use CASE WHEN + MAX()

-- Solution breakdown:
-- 1. The inner query:
--SELECT
--     Name,
--     Occupation,
--     ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn
-- FROM OCCUPATIONS

--    - Selects Name and Occupation from OCCUPATIONS.
--    - Uses ROW_NUMBER() with PARTITION BY Occupation and ORDER BY Name to assign a unique row number to each name within its occupation, ordered alphabetically.
--    - Assigns a row number (rn) to each name within its occupation, ordered alphabetically.

-- 2. The outer query:
--SELECT
--     MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
--     MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
--     MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
--     MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
--FROM ( ... ) t
--GROUP BY rn
--ORDER BY rn;  
--    - Uses conditional aggregation with CASE WHEN to place names into their respective occupation columns based on the Occupation value.
--    - Groups the results by the row number (rn) to align names of the same rank across different occupations into the same row.
--    - Orders the final output by rn to maintain the correct sequence of names under each occupation.
--    - The result is a pivoted table with four columns (Doctor, Professor, Singer, Actor) and names listed alphabetically under each occupation, with NULLs for missing values.
