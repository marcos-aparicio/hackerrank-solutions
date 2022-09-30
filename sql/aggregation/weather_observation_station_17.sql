/*
    SQL Server
*/
SELECT CAST(long_w AS DECIMAL(9,4))
FROM station
WHERE lat_n = (
    SELECT MIN(lat_n)
    FROM station
    WHERE lat_n > 38.778
)
