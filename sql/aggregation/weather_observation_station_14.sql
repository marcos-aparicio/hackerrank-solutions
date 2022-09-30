SELECT CAST(ROUND(MAX(lat_n),4) AS DECIMAL (9,4))
FROM station
WHERE lat_n < 137.2345;
/*
another option
*/
SELECT TOP 1 CAST(ROUND(lat_n,4) AS DECIMAL(9,4))
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC;
