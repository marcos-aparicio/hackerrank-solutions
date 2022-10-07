/*
    SQL SERVER
*/
SELECT s1.name
    FROM students s1
    JOIN packages p1
    ON s1.id = p1.id
    JOIN friends f
    ON s1.id = f.id
    JOIN students s2
    ON s2.id = f.friend_id
    JOIN packages p2
    ON p2.id = s2.id
WHERE p2.salary > p1.salary
ORDER BY p2.salary
