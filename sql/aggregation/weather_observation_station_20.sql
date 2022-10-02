/*
    SQL SERVER
*/
SELECT CAST(lat_n AS DECIMAL(9,4))
FROM station
WHERE lat_n IN (
    SELECT TOP(50)PERCENT lat_n
    FROM station
    ORDER BY lat_n ASC
)
AND lat_n IN (
    SELECT TOP(50)PERCENT lat_n
    FROM station
    ORDER BY lat_n DESC
)
