/*
    SQL SERVER
*/
SELECT [Doctor], [Professor], [Singer], [Actor] FROM (
    SELECT * 
    FROM(
        SELECT occupation, name, ROW_NUMBER() OVER(
        PARTITION BY occupation ORDER BY name 
        ) num
        FROM occupations
    ) o1 
    PIVOT(
        MAX(o1.name)
        FOR o1.occupation IN (
            [Doctor],
            [Professor],
            [Singer],
            [Actor]
        )
    ) AS pivoting
) AS o2
