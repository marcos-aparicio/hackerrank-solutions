/*
    SQL SERVER
*/
SELECT 
n,
CASE
    WHEN p1 IS NULL AND p2 IS NULL THEN "Root"
    WHEN n IN (SELECT p FROM bst) THEN "Inner"
    ELSE "Leaf"
END
FROM (
    SELECT a1.n AS n, a1.p AS p1, a2.p AS p2
    FROM bst AS a1
    FULL JOIN bst AS a2
    ON a1.p = a2.n
    WHERE a1.n IS NOT NULL
) AS binary_tree
ORDER BY n
