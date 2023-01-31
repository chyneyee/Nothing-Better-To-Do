/* 31/01/2023 2:00 pm
 * Reference: https://www.w3resource.com/sql-exercises/sql-subqueries-exercises.php
 * Subqueries on HR Database
*/

/* 1. From the following table, write a SQL query to find those employees who receive a higher salary than the employee with ID 163. 
Return first name, last name. */
SELECT first_name, last_name
FROM employees
WHERE salary >
	(SELECT salary FROM employees WHERE employee_id = 163);

/* 2. From the following table, write a SQL query to find out which employees have the same designation as the employee whose ID is 169. 
Return first name, last name, department ID and job ID. */
SELECT first_name, last_name, department_id, job_id
FROM employees
WHERE job_id =
	(SELECT job_id FROM employees WHERE employee_id = 169);

/* 3. From the following table, write a SQL query to find those employees whose salary matches the lowest salary of any of the departments. 
Return first name, last name and department ID. */
SELECT first_name, last_name, department_id
FROM employees
WHERE salary IN
	(SELECT MIN(salary) FROM employees GROUP BY department_id);

/* 4. From the following table, write a SQL query to find those employees who earn more than the average salary. 
Return employee ID, first name, last name. */
SELECT employee_id, first_name, last_name
FROM employees 
WHERE salary >
	(SELECT AVG(salary) FROM employees);

/* 5. From the following table, write a SQL query to find those employees who report to that manager whose first name is ‘Payam’. 
Return first name, last name, employee ID and salary. */
SELECT first_name, last_name, employee_id, salary
FROM employees
WHERE manager_id =
	(SELECT employee_id FROM employees WHERE first_name = 'Payam');

/* 6. From the following tables, write a SQL query to find all those employees who work in the Finance department. 
Return department ID, name (first), job ID and department name. */
SELECT e.department_id, e.first_name, e.job_id, d.department_name
FROM employees e, departments d
WHERE e.department_id = d.department_id 
AND d.department_name = 'Finance';

/* 7. From the following table, write a SQL query to find the employee whose salary is 3000 and reporting person’s ID is 121. 
Return all fields. */
SELECT * FROM employees
WHERE salary = 3000
AND manager_id = 121;

/* 8. From the following table, write a SQL query to find those employees whose ID matches any of the numbers 134, 159 and 183. 
Return all the fields. */
SELECT * FROM employees
WHERE employee_id IN (134, 159,183);

/* 9. From the following table, write a SQL query to find those employees whose salary is in the range of 1000, and 3000 (Begin and end values have included.). 
Return all the fields. */
SELECT * FROM employees
WHERE salary >= 1000 AND salary <= 3000;

/* 10. From the following table and write a SQL query to find those employees whose salary falls within the range of the smallest salary and 2500. 
Return all the fields. */
SELECT * FROM employees
WHERE salary BETWEEN
	(SELECT MIN(salary) FROM employees)
AND 2500;

/* 11. From the following tables, write a SQL query to find those employees who do not work in the departments where managers’ IDs are between 100 and 200 (Begin and end values are included.). 
Return all the fields of the employees. */
SELECT * FROM employees 
WHERE department_id NOT IN
	(SELECT department_id FROM departments WHERE manager_id BETWEEN 100 AND 200);

/* 12. From the following table, write a SQL query to find those employees who get second-highest salary. 
Return all the fields of the employees. */
SELECT * FROM employees 
WHERE employee_id IN 
	(SELECT employee_id FROM employees WHERE salary = 
   (SELECT MAX(salary) FROM employees WHERE salary < 
    (SELECT MAX(salary) FROM employees)));

/* 13. From the following tables, write a SQL query to find those employees who work in the same department as ‘Clara’. Exclude all those records where first name is ‘Clara’. 
Return first name, last name and hire date. */
SELECT first_name, last_name, hire_date
FROM employees 
WHERE department_id =
	(SELECT department_id FROM employees WHERE first_name = 'Clara')
AND first_name <> 'Clara';

/* 14. From the following tables, write a SQL query to find those employees who work in a department where the employee’s first name contains the letter 'T'. 
Return employee ID, first name and last name. */
SELECT employee_id, first_name, last_name
FROM employees
WHERE department_id IN
	(SELECT department_id FROM employees WHERE first_name LIKE '%T%');

/* 15. From the following tables, write a SQL query to find those employees who earn more than the average salary and work in the same department as an employee whose first name contains the letter 'J'. 
Return employee ID, first name and salary. */
SELECT employee_id, first_name, salary
FROM employees
WHERE salary > 
	(SELECT AVG(salary) FROM employees)
AND department_id IN
	(SELECT department_id FROM employees WHERE first_name LIKE '%J%');

/* 16. From the following table, write a SQL query to find those employees whose department is located at ‘Toronto’. 
Return first name, last name, employee ID, job ID. */
SELECT first_name, last_name, employee_id, job_id
FROM employees
WHERE department_id =
	(SELECT department_id FROM departments WHERE location_id =
   (SELECT location_id FROM locations WHERE city = 'Toronto'));

/* 17. From the following table, write a SQL query to find those employees whose salary is lower than that of employees whose job title is ‘MK_MAN’. 
Return employee ID, first name, last name, job ID. */
SELECT employee_id, first_name, last_name, job_id
FROM employees
WHERE salary <
	(SELECT salary FROM employees WHERE job_id = 'MK_MAN');
  
/* 18. From the following table, write a SQL query to find those employees whose salary is lower than that of employees whose job title is "MK_MAN". Exclude employees of Job title ‘MK_MAN’. 
Return employee ID, first name, last name, job ID. */
SELECT employee_id, first_name, last_name, job_id
FROM employees
WHERE salary <
	(SELECT salary FROM employees WHERE job_id = 'MK_MAN')
AND job_id <> 'MK_MAN';

/* 19. From the following table, write a SQL query to find those employees whose salary exceeds the salary of all those employees whose job title is "PU_MAN". Exclude job title ‘PU_MAN’. 
Return employee ID, first name, last name, job ID. */
SELECT employee_id, first_name, last_name, job_id
FROM employees 
WHERE salary > 
	(SELECT salary FROM employees WHERE job_id = 'PU_MAN')
AND job_id <> 'PU_MAN';

/* 20. From the following table, write a SQL query to find those employees whose salaries are higher than the average for all departments. 
Return employee ID, first name, last name, job ID. */
SELECT employee_id, first_name, last_name, job_id
FROM employees
WHERE salary > ALL
	(SELECT AVG(salary) FROM employees GROUP BY department_id);
  
/* 21. From the following table, write a SQL query to check whether there are any employees with salaries exceeding 3700. 
Return first name, last name and department ID. */
SELECT first_name, last_name, department_id
FROM employees
WHERE EXISTS
	(SELECT * FROM employees WHERE salary > 3700);

/* 22. From the following table, write a SQL query to calculate total salary of the departments where at least one employee works. 
Return department ID, total salary. */
SELECT department_id, SUM(salary) AS 'Total Salary'
FROM employees
WHERE 1 <
	(SELECT COUNT(department_id) FROM employees)
GROUP BY department_id
ORDER BY department_id;

/* 23. Write a query to display the employee id, name ( first name and last name ) and 
the job id column with a modified title SALESMAN for those employees whose job title is ST_MAN and DEVELOPER for whose job title is IT_PROG. */
SELECT employee_id, first_name, last_name, 
CASE job_id
WHEN 'ST_MAN' THEN 'SALESMAN'
WHEN 'IT_PROG' THEN 'DEVELOPER'
ELSE job_id
END AS designation, salary
FROM employees;

/* 24. Write a query to display the employee id, name ( first name and last name ), salary and the SalaryStatus column with a title HIGH and LOW respectively 
for those employees whose salary is more than and less than the average salary of all employees. */
SELECT employee_id, first_name, last_name, salary,
CASE WHEN salary >= (SELECT AVG(salary)
FROM employees) THEN 'HIGH'
ELSE 'LOW'
END AS SalaryStatus
FROM employees;

/* 25. Write a query to display the employee id, name ( first name and last name ), SalaryDrawn, AvgCompare (salary - the average salary of all employees) 
and the SalaryStatus column with a title HIGH and LOW respectively for those employees whose salary is more than and less than the average salary of all employees. */
SELECT  employee_id,  first_name, last_name,  salary AS SalaryDrawn,  
ROUND((salary -(SELECT AVG(salary) FROM employees)),2) AS AvgCompare,  
CASE  WHEN salary >= 
(SELECT AVG(salary) 
FROM employees) THEN 'HIGH'  
ELSE 'LOW'  
END AS SalaryStatus 
FROM employees;

/* 26. From the following table, write a SQL query to find all those departments where at least one employee is employed. 
Return department name. */
SELECT department_name 
FROM departments
WHERE department_id IN 
(SELECT DISTINCT(department_id) FROM employees);

/* 27. From the following tables, write a SQL query to find employees who work in departments located in the United Kingdom. 
Return first name. */
SELECT first_name
FROM employees
WHERE department_id IN
	(SELECT department_id FROM departments WHERE location_id IN
   (SELECT location_id FROM locations WHERE country_id IN
   (SELECT country_id FROM countries WHERE country_name = 'United Kingdom')));
   
/* 28. From the following table, write a SQL query to find out which employees are earning more than the average salary and who work in any of the IT departments. 
Return last name. */
SELECT last_name
FROM employees
WHERE salary >
	(SELECT AVG(salary) FROM employees)
AND department_id IN
	(SELECT department_id FROM departments WHERE department_name = 'IT');

/* 29. From the following table, write a SQL query to find all those employees who earn more than an employee whose last name is 'Ozer'. Sort the result in ascending order by last name. 
Return first name, last name and salary. */
SELECT first_name, last_name, salary
FROM employees
WHERE salary >
	(SELECT salary FROM employees WHERE last_name = 'Ozer')
ORDER BY last_name;

/* 30. From the following tables, write a SQL query find the employees who report to a manager based in the United States. 
Return first name, last name. */
SELECT first_name,last_name 
FROM employees 
WHERE manager_id IN 
	(SELECT employee_id FROM employees WHERE department_id IN 
	(SELECT department_id FROM departments WHERE location_id IN 
   (SELECT location_id FROM locations WHERE country_id='US')));

/* 31. From the following tables, write a SQL query to find those employees whose salaries exceed 50% of their department's total salary bill. 
Return first name, last name. */
SELECT e1.first_name, e1.last_name 
FROM employees e1 
WHERE salary > 
	(SELECT (SUM(salary))*.5 FROM employees e2 WHERE e1.department_id=e2.department_id);

/* 32. From the following tables, write a SQL query to find those employees who are managers. 
Return all the fields of employees table. */
SELECT * FROM employees
WHERE employee_id IN
	(SELECT DISTINCT(manager_id) FROM employees);
  
/* 33. From the following table, write a SQL query to find those employees who manage a department. 
Return all the fields of employees table. */
SELECT * FROM employees 
WHERE employee_id = ANY
	(SELECT manager_id FROM employees);
  
/* 34. From the following table, write a SQL query to search for employees who receive such a salary, which is the maximum salary for salaried employees, hired between January 1st, 2002 and December 31st, 2003. 
Return employee ID, first name, last name, salary, department name and city. */
SELECT e.employee_id, e.first_name, e.last_name, e.salary, d.department_name, l.city
FROM employees e, departments d, locations l
WHERE e.salary =
	(SELECT MAX(salary) FROM employees
WHERE hire_date BETWEEN '2002-01-01' AND '2003-31-12')
AND e.department_id = d.department_id 
AND d.location_id = l.location_id;

/* 35. From the following tables, write a SQL query to find those departments that are located in the city of London. 
Return department ID, department name. */
SELECT department_id, department_name
FROM departments
WHERE location_id =
	(SELECT location_id FROM locations WHERE city = 'London');

/* 36. From the following table, write a SQL query to find those employees who earn more than the average salary. Sort the result-set in descending order by salary. 
Return first name, last name, salary, and department ID. */
SELECT first_name, last_name, salary, department_id
FROM employees 
WHERE salary >
	(SELECT AVG(salary) FROM employees)
ORDER BY salary DESC;

/* 37. From the following table, write a SQL query to find those employees who earn more than the maximum salary for a department of ID 40. 
Return first name, last name and department ID. */
SELECT first_name, last_name, department_id
FROM employees 
WHERE salary > 
	(SELECT MAX(salary) FROM employees WHERE department_id = 40);

/* 38. From the following table, write a SQL query to find departments for a particular location. The location matches the location of the department of ID 30. 
Return department name and department ID. */
SELECT department_name, department_id
FROM departments
WHERE location_id =
	(SELECT location_id FROM departments WHERE department_id = 30);

/* 39. From the following table, write a SQL query to find employees who work for the department in which employee ID 201 is employed. 
Return first name, last name, salary, and department ID. */
SELECT first_name, last_name, salary, department_id
FROM employees 
WHERE department_id =
	(SELECT department_id FROM employees WHERE employee_id = 201);

/* 40. From the following table, write a SQL query to find those employees whose salary matches that of the employee who works in department ID 40. 
Return first name, last name, salary, and department ID. */
SELECT first_name, last_name, salary, department_id
FROM employees
WHERE salary =
	(SELECT salary FROM employees WHERE department_id = 40);

/* 41. From the following table, write a SQL query to find those employees who work in the department 'Marketing'. 
Return first name, last name and department ID. */
SELECT first_name, last_name, department_id
FROM employees 
WHERE department_id =
	(SELECT department_id FROM departments WHERE department_name = 'Marketing');

/* 42. From the following table, write a SQL query to find those employees who earn more than the minimum salary of a department of ID 40. 
Return first name, last name, salary, and department ID. */
SELECT first_name, last_name, salary, department_id
FROM employees 
WHERE salary >
	(SELECT MIN(salary) FROM employees WHERE department_id = 40);

/* 43. From the following table, write a SQL query to find those employees who joined after the employee whose ID is 165. 
Return first name, last name and hire date. */
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > 
	(SELECT hire_date FROM employees WHERE employee_id = 165);

/* 44. From the following table, write a SQL query to find those employees who earn less than the minimum salary of a department of ID 70. 
Return first name, last name, salary, and department ID. */
SELECT first_name, last_name, salary, department_id
FROM employees 
WHERE salary < 
	(SELECT MIN(salary) FROM employees WHERE department_id = 70);

/* 45. From the following table, write a SQL query to find those employees who earn less than the average salary and work at the department where Laura (first name) is employed. 
Return first name, last name, salary, and department ID. */
SELECT first_name, last_name, salary, department_id
FROM employees 
WHERE salary <
	(SELECT AVG(salary) FROM employees)
AND department_id =
	(SELECT department_id FROM employees WHERE first_name = 'Laura');

/* 46. From the following tables, write a SQL query to find all employees whose department is located in London. 
Return first name, last name, salary, and department ID. */
SELECT first_name, last_name, salary, department_id
FROM employees
WHERE department_id =
	(SELECT department_id FROM departments WHERE location_id =
   (SELECT location_id FROM locations WHERE city = 'London'));

/* 47. From the following tables, write a SQL query to find the city of the employee of ID 134. 
Return city. */
SELECT city FROM locations 
WHERE location_id =
	(SELECT location_id FROM departments WHERE department_id =
   (SELECT department_id FROM employees WHERE employee_id = 134));

/* 48. From the following tables, write a SQL query to find those departments where maximum salary is 7000 and above. The employees worked in those departments have already completed one or more jobs. 
Return all the fields of the departments. */
SELECT * FROM departments
WHERE department_id IN
    (SELECT department_id FROM employees WHERE employee_id IN
         (SELECT employee_id FROM job_history
          GROUP BY employee_id
          HAVING COUNT(employee_id) > 1)
     GROUP BY department_id
     HAVING MAX(salary) > 7000);

/* 49. From the following tables, write a SQL query to find those departments where the starting salary is at least 8000. 
Return all the fields of departments. */
SELECT * FROM departments 
WHERE department_id IN
	(SELECT department_id FROM employees GROUP BY department_id
   HAVING MIN(salary) >= 8000);

/* 50. From the following table, write a SQL query to find those managers who supervise four or more employees. 
Return manager name, department ID. */
SELECT CONCAT(first_name, last_name) AS 'Manager Name', department_id
FROM employees
WHERE employee_id IN
	(SELECT manager_id FROM employees GROUP BY manager_id HAVING COUNT(*) >= 4);

/* 51. From the following table, write a SQL query to find employees who have previously worked as 'Sales Representatives'. 
Return all the fields of jobs. */
SELECT * FROM jobs
WHERE job_id IN
	(SELECT job_id FROM employees WHERE employee_id IN
   (SELECT employee_id FROM job_history WHERE job_id = 'SA_REP'));

/* 52. From the following table, write a SQL query to find those employees who earn the second-lowest salary of all the employees. 
Return all the fields of employees. */
SELECT * FROM employees e
WHERE 2 = (SELECT COUNT(DISTINCT salary) FROM employees WHERE salary <= e.salary);

/* 53. From the following table, write a SQL query to find the departments managed by Susan. 
Return all the fields of departments. */
SELECT * FROM departments 
WHERE manager_id =
	(SELECT employee_id FROM employees WHERE first_name = 'Susan');

/* 54. From the following table, write a SQL query to find those employees who earn the highest salary in a department. 
Return department ID, employee name, and salary. */
SELECT department_id, CONCAT(first_name, last_name) AS 'employee_name', salary FROM employees e
WHERE salary = 
	(SELECT MAX(salary) FROM employees
  WHERE department_id = e.department_id);

/* 55. From the following table, write a SQL query to find those employees who have not had a job in the past. 
Return all the fields of employees. */
SELECT * FROM employees 
WHERE employee_id NOT IN (SELECT employee_id FROM job_history);
