--You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

--+-------------+---------+
--| Column      | Type    |
--+-------------+---------+
--| N           | Integer |
--| P           | Integer |
--+-------------+---------+
--Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

-- Root: If node is root node.
-- Leaf: If node is leaf node.
-- Inner: If node is neither root nor leaf node.

SELECT
    N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
        ELSE 'Inner'
    END
FROM BST
ORDER BY N;

--explanation:
--The query selects the node value N and determines its type using a CASE statement. It checks if the parent P is NULL to identify the root node. If N is not present in the list of parent nodes (P) from the BST table, it classifies it as a leaf node. Otherwise, it classifies it as an inner node. The results are ordered by the node value N.

--First, understand the table (in plain English)

-- Table BST has:
-- Column	Meaning
-- N	    value of the node
-- P	    parent of the node

-- So each row says:
-- “Node N has parent P”
-- If P is NULL, that node has no parent → it’s the root.


-- What you need to output

-- For each node N, print:
-- Root → if it is the root node
-- Leaf → if it has no children
-- Inner → if it has a parent and at least one child
-- And the output must be ordered by N.

--Key idea 
-- To classify a node N, ask two questions:

-- 1. Is N the root?
--  Yes → if P IS NULL

-- 2. Does N have children?
--  Yes → if N appears in the P column of some other row
--  No → then it's a leaf

-- Translate that into SQL thinking:
-- Use CASE WHEN again.
-- Conditions in correct order:
-- Root → P IS NULL
-- Leaf → N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL)
-- Else → Inner

-- Putting it all together:
-- SELECT
--     N,
--     CASE
--         WHEN P IS NULL THEN 'Root'
--         WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
--         ELSE 'Inner'
--     END
-- FROM BST
-- ORDER BY N;

--Why this works
-- 1. Root logic:
-- P IS NULL
-- This means:
-- Only the root node has no parent.

-- 2. Leaf logic
-- N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL)
-- This means:
-- node N is never used as a parent
-- so it has no children
-- hence → Leaf

-- 3. Inner logic
-- ELSE 'Inner'
-- This means:
-- If it’s:
-- not root
-- not leaf
-- Then it must be Inner.

-- Small example 
-- BST table:
-- N	            P
-- 1	            NULL
-- 2	             1
-- 3	             1
-- 4	             3

-- Result:
-- N	           Type
-- 1	           Root
-- 2	           Leaf
-- 3	           Inner
-- 4	           Leaf

--Final note:
--Golden rule of trees:
-- Root → no parent
-- Leaf → no children
-- Inner → has both

-- This rule applies in:
-- trees
-- org charts
-- hierarchies
-- real analytics problems