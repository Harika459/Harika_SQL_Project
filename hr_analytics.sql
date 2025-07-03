-- SQL Script: HR Analytics Salary Summary
SELECT 
    department_id,
    COUNT(employee_id) AS employee_count,
    ROUND(AVG(salary), 2) AS avg_salary
FROM 
    employees
GROUP BY 
    department_id
HAVING 
    COUNT(employee_id) > 2
ORDER BY 
    avg_salary DESC;
