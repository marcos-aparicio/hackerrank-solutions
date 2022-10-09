/*
    SQL SERVER
*/
SELECT DISTINCT * FROM(
    SELECT  f2.x,  f2.y FROM
    (
        SELECT x, y, ROW_NUMBER() OVER(ORDER BY f1.x) AS num
        FROM functions f1
    ) AS f2
    JOIN (
        SELECT f2.x, f2.y, f2.num FROM
        (
            SELECT x, y, ROW_NUMBER() OVER(ORDER BY f1.x) AS num
            FROM functions f1
        ) AS f2
    ) AS f3 
    ON f2.x = f3.y AND f2.y = f3.x AND f2.num != f3.num
    WHERE f2.x <= f2.y
) AS f2
ORDER BY f2.x
