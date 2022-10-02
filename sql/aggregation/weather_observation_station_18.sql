/*
    sql server
*/
SELECT CAST(
        ABS( ( MIN(lat_n) - MAX(lat_n) )) + 
        ABS( ( MIN(long_w) - MAX(long_w) ))
        AS DECIMAL(9,4))
FROM station;
