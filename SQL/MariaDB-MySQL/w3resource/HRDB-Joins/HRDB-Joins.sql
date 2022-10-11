/* 11/10/2022 11:43 am
Reference: https://www.w3resource.com/mysql-exercises/join-exercises/
MySQL JOINS
*/

/* 1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.
Hint : Use NATURAL JOIN. */
SELECT location_id, street_address, city, state_province, country_name
FROM locations
NATURAL JOIN countries;

/* 2. Write a query to find the name (first_name, last name), department ID and name of all the employees. */
SELECT first_name, last_name, department_id, department_name
FROM employees
NATURAL JOIN departments;

/* 3. Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London. */
SELECT e.first_name, e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e
JOIN departments d ON(e.department_id = d.department_id)
JOIN locations l ON(d.location_id = l.location_id)
WHERE l.city='London';

/* 4. Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name). */
SELECT e.employee_id, e.last_name, e.manager_id, e2.last_name AS "Manager Name"
FROM employees e
JOIN employees e2 ON(e.employee_id=e2.manager_id);

/* 5. Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'. */
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
JOIN employees e2
ON e2.last_name='Jones'
WHERE e2.hire_date < e.hire_date;

/* 6. Write a query to get the department name and number of employees in the department. */
SELECT d.department_name, COUNT(*) AS "Number of Employees"
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name;

/* 7. Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90. */
SELECT employee_id, job_title, end_date - start_date AS "Number of Days"
FROM job_history
NATURAL JOIN jobs 
WHERE department_id =90;

/* 8. Write a query to display the department ID and name and first name of manager. */
SELECT d.department_id, d.department_name, e.first_name AS "Manager Name"
FROM departments d 
INNER JOIN employees e
ON e.employee_id = d.manager_id;

/* 9. Write a query to display the department name, manager name, and city. */
SELECT d.department_name, CONCAT(e.first_name,' ', e.last_name) AS "Manager Name", l.city
FROM departments d
JOIN employees e ON (d.manager_id = e.employee_id)
JOIN locations l USING (location_id);

/* 10. Write a query to display the job title and average salary of employees. */
SELECT j.job_title, AVG(e.salary) AS "Average Salary"
FROM jobs j
JOIN employees e USING(job_id)
GROUP BY job_title;

/* 11. Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job. */
SELECT job_title, CONCAT(first_name,' ',last_name) AS "Name", salary - min_salary AS "Difference of Salary"
FROM employees
NATURAL JOIN jobs;

/* 12. Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary. */
SELECT * FROM job_history h
JOIN employees e
ON (h.employee_id = e.employee_id)
WHERE salary > 10000;

/* 13. Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years. */
SELECT d.department_name, CONCAT(e.first_name,' ',e.last_name) AS "Name", e.hire_date, e.salary,
(DATEDIFF(now(), hire_date))/365 Experience
FROM employees e
JOIN departments d ON (d.manager_id = e.employee_id)
WHERE (DATEDIFF(now(), hire_date))/365 > 15;
