/*
Solved in MS SQL Server
*/
SELECT h.hacker_id, h.name, SUM(s.max_scores)
FROM hackers AS h
JOIN (
    SELECT h.hacker_id, s.challenge_id, MAX(score) AS max_scores
    FROM hackers h
    INNER JOIN submissions s
    ON h.hacker_id = s.hacker_id
    GROUP BY h.hacker_id, s.challenge_id
) AS s
ON h.hacker_id = s.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(s.max_scores) != 0
ORDER BY SUM(s.max_scores) DESC, h.hacker_id;
