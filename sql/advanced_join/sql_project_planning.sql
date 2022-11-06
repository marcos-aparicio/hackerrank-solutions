/*
    SQL SERVER
*/
WITH project AS (
    SELECT
        start_date AS init,
        end_date AS last
    FROM projects
    
    UNION ALL
    
    SELECT 
        init,
        end_date
    FROM project
    JOIN projects
    ON projects.start_date = project.last
)

SELECT MIN(final.dates), final.end_date
FROM (
    SELECT init AS dates, MAX(last) as end_date FROM project
    GROUP BY init
) final
GROUP BY final.end_date
ORDER BY 
    DATEDIFF(day,MIN(final.dates),final.end_date),
    MIN(final.dates)
