/*
    sql server
*/
SELECT CAST(SQRT( 
    POWER( ( MIN(lat_n) - MAX(lat_n) ), 2) + 
    POWER( ( MAX(long_w) - MIN(long_w) ),2) ) 
    AS DECIMAL(9,4))
FROM station;
