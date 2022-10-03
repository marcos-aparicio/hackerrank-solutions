/*
    SQL SERVER
*/
SELECT SUM(c1.population)
FROM city c1
JOIN country c2
ON c1.countrycode = c2.code
WHERE c2.continent = 'ASIA'
