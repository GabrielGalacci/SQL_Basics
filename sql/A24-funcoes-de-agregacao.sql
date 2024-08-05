SELECT 
MAX(salary) AS max_salary,
MIN(salary) AS min_salary,
ROUND(AVG(salary), 2) AS avg_salary,
SUM(salary) AS sum_salary,
COUNT(salary) AS count_salary  
FROM users
WHERE first_name = 'carly';


SELECT
u.first_name, 
MAX(u.salary) AS max_salary,
MIN(u.salary) AS min_salary,
ROUND(AVG(u.salary), 2) AS avg_salary,
SUM(u.salary) AS sum_salary,
COUNT(u.id) AS total 
FROM users AS u 
LEFT JOIN profiles AS p 
ON p.user_id = u.id 
GROUP BY first_name 
ORDER BY total DESC;