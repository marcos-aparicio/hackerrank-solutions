/*
sql server
*/
SELECT CAST(MIN(lat_n) AS DECIMAL(9,4))
FROM station
WHERE lat_n > 38.778;
