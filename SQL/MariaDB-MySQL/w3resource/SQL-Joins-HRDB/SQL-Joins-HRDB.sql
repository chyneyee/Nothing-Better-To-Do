/* 30-11-2022 12:03 pm
 * Reference: https://www.w3resource.com/sql-exercises/joins-hr/index.php
 * SQL Joins on HR Database
 */

/* 1. From the following tables, write a SQL query to find the first name, last name, department number, 
and department name for each employee. */
SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM departments d JOIN employees e
ON d.department_id = e.department_id;

/* 2. From the following tables, write a SQL query to find the first name, last name, department, city, 
and state province for each employee. */
SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province
FROM departments d JOIN employees e 
ON d.department_id = e.department_id
JOIN locations l
ON d.location_id = l.location_id;

/* 3. From the following table, write a SQL query to find the first name, last name, salary, 
and job grade for all employees. */
SELECT e.first_name, e.last_name, e.salary, j.grade_level
FROM employees e JOIN job_grades j
ON e.salary BETWEEN j.lowest_sal AND j.highest_sal;

/* 4. From the following tables, write a SQL query to find all those employees who work in department ID 80 or 40. 
Return first name, last name, department number and department name. */
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employees e JOIN departments d
ON e.department_id = d.department_id
WHERE e.department_id = 80 OR e.department_id = 40;

/* 5. From the following tables, write a SQL query to find those employees whose first name contains the letter ‘z’. 
Return first name, last name, department, city, and state province. */
SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province
FROM employees e JOIN departments d
ON e.department_id = d.DEPARTMENT_ID
JOIN locations l
ON l.location_id = d.location_id
WHERE e.first_name LIKE '%z%';

/* 6. From the following tables, write a SQL query to find all departments, including those without employees. 
Return first name, last name, department ID, department name. */
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employees e RIGHT JOIN departments d
ON e.department_id = d.department_id;

/* 7. From the following table, write a SQL query to find the employees who earn less than the employee of ID 182. 
Return first name, last name and salary. */
SELECT e.first_name, e.last_name, e.salary
FROM employees e JOIN employees s
ON e.salary < s.salary
AND s.employee_id = 182;

/* 8. From the following table, write a SQL query to find the employees and their managers. 
Return the first name of the employee and manager. */
SELECT e.first_name, m.first_name
FROM employees e JOIN employees m
ON e.manager_id = m.employee_id;

/* 9. From the following tables, write a SQL query to display the department name, city, 
and state province for each department. */
SELECT d.department_name, l.city, l.state_province
FROM departments d JOIN locations l
ON d.location_id = l.location_id;

/* 10. From the following tables, write a SQL query to find out which employees have or do not have a department. 
Return first name, last name, department ID, department name. */
SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM employees e LEFT JOIN departments d
ON e.department_id = d.department_id;

/* 11. From the following table, write a SQL query to find the employees and their managers. 
Those managers do not work under any manager also appear in the list. 
Return the first name of the employee and manager. */
SELECT e.first_name AS "Employee Name", m.first_name AS "Manager"
FROM employees e LEFT JOIN employees m
ON e.manager_id = m.manager_id;

/* 12. From the following tables, write a SQL query to find the employees who work in the same department as the employee with the last name Taylor. 
Return first name, last name and department ID. */
SELECT e.first_name, e.last_name, e.department_id
FROM employees e JOIN employees t
ON e.department_id = t.department_id
AND t.last_name = "Taylor";

/* 13. From the following tables, write a SQL query to find all employees who joined on 1st January 1993 and left on or before 31 August 1997. 
Return job title, department name, employee name, and joining date of the job. */
SELECT job_title, department_name, concat(first_name, ' ',last_name) AS "Employee Name", start_date
FROM job_history JOIN jobs USING (job_id) 
JOIN departments USING (department_id) 
JOIN  employees USING (employee_id) 
WHERE start_date>='1993-01-01' AND start_date<='1997-08-31';

/* 14. From the following tables, write a SQL query to calculate the difference between the maximum salary of the job and the employee's salary. 
Return job title, employee name, and salary difference. */
SELECT j.job_title, concat(e.first_name, ' ', e.last_name) AS "Employee Name", j.max_salary - e.salary AS "Salary Difference"
FROM jobs j JOIN employees e
ON j.job_id = e.job_id;

/* 15. From the following table, write a SQL query to calculate the average salary, the number of employees receiving commissions in that department. 
Return department name, average salary and number of employees. */
SELECT d.department_name, AVG(e.salary) As "Average Salary", COUNT(e.commission_pct) AS "Commission"
FROM departments d JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;

/* 16. From the following tables, write a SQL query to calculate the difference between the maximum salary and the salary of 
all the employees who work in the department of ID 80. 
Return job title, employee name and salary difference. */
SELECT job_title, CONCAT(first_name, ' ',last_name) AS "Employee Name", max_salary - salary AS "Salary Difference"
FROM employees NATURAL JOIN jobs 
WHERE department_id = 80;

/* 17. From the following table, write a SQL query to find the name of the country, city, 
and departments, which are running there. */
SELECT c.country_name, l.city, d.department_name
FROM departments d JOIN locations l
ON d.location_id = l.location_id
JOIN countries c
ON c.country_id = l.country_id;

/* 18. From the following tables, write a SQL query to find the department name 
and the full name (first and last name) of the manager. */
SELECT d.department_name, CONCAT(e.first_name, ' ', e.last_name) AS "Manager Name"
FROM departments d JOIN employees e
ON d.manager_id = e.employee_id;

/* 19. From the following table, write a SQL query to calculate the average salary of employees 
for each job title. */
SELECT AVG(salary) AS "Average Salary", job_title
FROM employees NATURAL JOIN jobs
GROUP BY job_title;

/* 20. From the following table, write a SQL query to find the employees who earn $12000 or more. 
Return employee ID, starting date, end date, job ID and department ID. */
SELECT e.employee_id, j.start_date, j.end_date, e.job_id, e.department_id
FROM employees e JOIN job_history j
ON e.employee_id = j.employee_id
WHERE e.salary >= 12000;

/* 21. From the following tables, write a SQL query to find out which departments have at least two employees. 
Group the result set on country name and city. 
Return country name, city, and number. */
SELECT c.country_name, l.city, COUNT(d.department_id) AS "Number of Employees"
FROM countries c JOIN locations l
ON c.country_id = l.country_id
JOIN departments d
ON l.location_id = d.location_id
WHERE d.department_id IN
(SELECT department_id FROM employees 
 GROUP BY department_id HAVING COUNT(department_id)>=2)
GROUP BY c.country_name, l.city;

/* 22. From the following tables, write a SQL query to find the department name, 
full name (first and last name) of the manager and their city. */
SELECT d.department_name, CONCAT(e.first_name, ' ', e.last_name) AS "Manager Name", l.city
FROM departments d JOIN locations l
ON d.location_id = l.location_id
JOIN employees e
ON d.manager_id = e.employee_id;

/* 23. From the following tables, write a SQL query to calculate the number of days worked by employees in a department of ID 80. 
Return employee ID, job title, number of days worked. */
SELECT employee_id, job_title, end_date - start_date AS "Number of Days Worked"
FROM job_history NATURAL JOIN jobs
WHERE department_id = 80;

/* 24. From the following tables, write a SQL query to find full name (first and last name), 
and salary of all employees working in any department in the city of London. */
SELECT CONCAT(first_name, ' ', last_name) AS "Employee Name", salary
FROM employees 
JOIN departments USING (department_id)
JOIN locations USING (location_id)
WHERE city = 'London';

/* 25. From the following tables, write a SQL query to find full name (first and last name), job title, 
start and end date of last jobs of employees who did not receive commissions. */
SELECT CONCAT(e.first_name, ' ', e.last_name) AS "Employee Name", j.job_title, h.start_date, h.end_date
FROM employees e JOIN job_history h
ON e.employee_id=h.employee_id
JOIN jobs j ON j.job_id=e.job_id
WHERE e.commission_pct = 0
GROUP BY e.employee_id;

/* 26. From the following tables, write a SQL query to find the department name, department ID, 
and number of employees in each department. */
SELECT d.department_name, e.department_id, COUNT(e.department_id) AS "Number of Employees"
FROM employees e JOIN departments d
ON e.department_id = d.department_id
GROUP BY e.department_id;

/* 27. From the following tables, write a SQL query to find out the full name (first and last name) of the employee with an ID 
and the name of the country where he/she is currently employed. */
SELECT CONCAT(first_name, ' ', last_name) AS "Employee Name", employee_id, country_name
FROM employees JOIN departments USING (department_id)
JOIN locations USING (location_id)
JOIN countries USING (country_id);
