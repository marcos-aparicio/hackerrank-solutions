/*
    SQL SERVER
*/
SELECT 
    s.contest_id,
    s.hacker_id,
    s.name,
    s.total_submissions,
    s.total_accepted_submissions,
    SUM(v.total_views),
    SUM(v.total_unique_views)
FROM
(
    SELECT 
        con.contest_id AS [contest_id],
        con.hacker_id AS [hacker_id],
        con.name AS [name],
        SUM(s.total_submissions) AS [total_submissions],
        SUM(s.total_accepted_submissions) AS [total_accepted_submissions]
    FROM submission_stats s
    JOIN challenges c
    ON  c.challenge_id = s.challenge_id
    JOIN colleges col
    ON col.college_id = c.college_id
    JOIN contests con
    ON con.contest_id = col.contest_id
    GROUP BY con.contest_id, con.hacker_id, con.name
) s
JOIN colleges c
ON s.contest_id = c.contest_id
JOIN challenges ch
ON ch.college_id = c.college_id
JOIN view_stats v
ON ch.challenge_id = v.challenge_id
GROUP BY s.contest_id, s.hacker_id,s.name, s.total_submissions, s.total_accepted_submissions
ORDER BY s.contest_id;

