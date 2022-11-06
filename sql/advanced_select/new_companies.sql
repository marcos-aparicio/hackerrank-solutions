/*
    SQL SERVER
*/
SELECT 
    c.company_code,
    c.founder,
    COUNT(DISTINCT l.lead_manager_code),
    COUNT(DISTINCT s.senior_manager_code),
    COUNT(DISTINCT m.manager_code),
    COUNT(DISTINCT e.employee_code)
FROM company c
JOIN lead_manager l
ON c.company_code = l.company_code
JOIN senior_manager s
ON l.lead_manager_code = s.lead_manager_code 
JOIN manager m
ON s.lead_manager_code = m.lead_manager_code 
JOIN employee e
ON m.manager_code = e.manager_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code
