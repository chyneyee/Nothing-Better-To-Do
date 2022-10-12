/* 12/10/2022 10:22 am
Reference: https://www.w3resource.com/mysql-exercises/date-time-exercises/
MySQL Date and Time
*/

/* 1. Write a query to display the first day of the month (in datetime format) three months before the current month. Go to the editor
Sample current date : 2014-09-03
Expected result : 2014-06-01
*/
SELECT date (((PERIOD_ADD(EXTRACT(YEAR_MONTH FROM CURDATE()),-3)*100)+1));

/* 2. Write a query to display the last day of the month (in datetime format) three months before the current month. */
SELECT LAST_DAY(CURDATE() - INTERVAL 3 MONTH);

/* 3. Write a query to get the distinct Mondays from hire_date in employees tables. */
SELECT DISTINCT(STR_TO_DATE(CONCAT(YEARWEEK(hire_date),'1'),'%x%v%w')) FROM employees;

/* 4. Write a query to get the first day of the current year. */
SELECT MAKEDATE(year(now()), 1);

/* 5. Write a query to get the last day of the current year. */
SELECT MAKEDATE(year(now()), 365);

/* 6. Write a query to calculate the age in year. */
SELECT DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),'2010-11-25')), '%Y')+0 AS Age;

/* 7. Write a query to get the current date in the following format. Go to the editor
Sample date : 2014-09-04
Output : September 4, 2014
*/
SELECT DATE_FORMAT(CURDATE(),'%M %e, %Y') AS 'Current_date';

/* 8. Write a query to get the current date in Thursday September 2014 format.*/
SELECT DATE_FORMAT(NOW(), '%W %M %Y');

/* 9. Write a query to extract the year from the current date. */
SELECT EXTRACT(YEAR FROM  NOW());

/* 10. Write a query to get the DATE value from a given day (number in N).
Sample days: 730677
Output : 2000-07-11
*/
SELECT FROM_DAYS(730677);

/* 11. Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30'  */
SELECT first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1987-06-01' AND '1987-07-30';

/* 12. Write a query to display the current date in the following format.
Sample output: Thursday 4th September 2014 00:00:00 */
SELECT date_format(CURDATE(),'%W %D %M %Y %T');

/* 13. Write a query to display the current date in the following format.
Sample output: 05/09/2014 */
SELECT date_format(CURDATE(),'%d/%m/%Y');

/* 14. Write a query to display the current date in the following format.
Sample output: 12:00 AM Sep 5, 2014 */
SELECT date_format(CURDATE(),'%l:%i %p %b %e, %Y');

/* 15. Write a query to get the firstname, lastname who joined in the month of June. */
SELECT first_name, last_name FROM employees WHERE MONTH(HIRE_DATE) = 6;

/* 16. Write a query to get the years in which more than 10 employees joined. */
SELECT DATE_FORMAT(HIRE_DATE,'%Y') 
FROM employees  
GROUP BY DATE_FORMAT(HIRE_DATE,'%Y') 
HAVING COUNT(EMPLOYEE_ID) > 10;

/* 17. Write a query to get first name of employees who joined in 1987. */
SELECT first_name FROM employees WHERE YEAR(HIRE_DATE)='1987';

/* 18. Write a query to get department name, manager name, and salary of the manager for all managers whose experience is more than 5 years. */
SELECT department_name, first_name, salary
FROM departments d
JOIN employees e
ON (d.manager_id=e.manager_id)
WHERE (CURDATE()-HIRE_DATE) / 365 > 5;

/* 19. Write a query to get employee ID, last name, and date of first salary of the employees. */
SELECT employee_id, last_name, LAST_DAY(hire_date) AS "First Salary" FROM employees;

/* 20. Write a query to get first name, hire date and experience of the employees. */
SELECT first_name, hire_date, DATEDIFF(CURDATE(),hire_date)/365 FROM employees;

/* 21. Write a query to get the department ID, year, and number of employees joined. */
SELECT department_id, YEAR(hire_date), COUNT(employee_id) 
FROM employees
GROUP BY department_id, YEAR(hire_date)
ORDER BY department_id;
