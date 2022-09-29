/*sql server solution*/
SELECT CAST(ROUND(SUM(lat_n), 4) AS DECIMAL(9,4))
FROM station
WHERE 
lat_n BETWEEN 38.7880 and 137.2345
