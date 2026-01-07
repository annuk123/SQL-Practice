--Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

-- Equilateral: It's a triangle with  sides of equal length.
-- Isosceles: It's a triangle with  sides of equal length.
-- Scalene: It's a triangle with  sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.
-- Input Format

-- The TRIANGLES table is described as follows:
--+-------+---------+
--| Column| Type   |
--+-------+---------+
--| A     | INTEGER |
--| B     | INTEGER |
--| C     | INTEGER |
--+-------+---------+

--Each row in the table denotes the lengths of each of a triangle's three sides.

SELECT
  CASE
    -- Step 1: Not a triangle
    WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'

    -- Step 2: All sides equal
    WHEN A = B AND B = C THEN 'Equilateral'

    -- Step 3: Any two sides equal
    WHEN A = B OR B = C OR A = C THEN 'Isosceles'

    -- Step 4: All sides different
    ELSE 'Scalene'
  END
FROM TRIANGLES;


--explanation:
--The query uses a CASE statement to evaluate the side lengths A, B, and C for each record in the TRIANGLES table. It first checks if the sides can form a triangle using the triangle inequality theorem. If they cannot, it returns 'Not A Triangle'. If all sides are equal, it returns 'Equilateral'. If two sides are equal, it returns 'Isosceles'. If all sides are different, it returns 'Scalene'.