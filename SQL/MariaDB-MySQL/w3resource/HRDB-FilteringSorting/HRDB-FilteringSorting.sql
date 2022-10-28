/* 28/10/2022 8:36 am
 * Reference: https://www.w3resource.com/sql-exercises/sorting-and-filtering-hr/index.php
 * HR Database - Sort Filter
 */
 
/* 1. From the following table, write a SQL query to find those employees whose salaries are less than 6000. 
Return full name (first and last name), and salary. */
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS "FULL NAME", SALARY 
FROM employees WHERE SALARY < 6000;

/* 2. From the following table, write a SQL query to find those employees whose salary is higher than 8000. 
Return first name, last name and department number and salary. */
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID, SALARY 
FROM employees
WHERE SALARY > 8000;

/* 3. From the following table, write a SQL query to find those employees whose last name is "McEwen". 
Return first name, last name and department ID. */
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID
FROM employees
WHERE LAST_NAME = 'McEwen';

/* 4. From the following table, write a SQL query to identify employees who do not have a department number. 
Return employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary,commission_pct, manager_id and department_id. */
SELECT * FROM employees
WHERE DEPARTMENT_ID IS NULL;

/* 5. From the following table, write a SQL query to find the details of 'Marketing' department. 
Return all fields. */
SELECT * FROM departments
WHERE DEPARTMENT_NAME = 'Marketing';


/* 6. From the following table, write a SQL query to find those employees whose first name does not contain the letter ‘M’. 
Sort the result-set in ascending order by department ID. 
Return full name (first and last name together), hire_date, salary and department_id. */
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS "FULL NAME", HIRE_DATE, SALARY, DEPARTMENT_ID
FROM employees
WHERE FIRST_NAME NOT LIKE '%M%'
ORDER BY DEPARTMENT_ID;

/* 7. From the following table, write a SQL query to find those employees who earn between 8000 and 12000 (Begin and end values are included.) and get
some commission. 
These employees joined before ‘1987-06-05’ and were not included in the department numbers 40, 120 and 70. Return all fields. */
SELECT * FROM employees
WHERE SALARY BETWEEN 8000 AND 12000
AND NOT COMMISSION_PCT IS NOT NULL
AND HIRE_DATE < '1987-06-05'
AND DEPARTMENT_ID NOT IN (40, 120, 70);

/* 8. From the following table, write a SQL query to find those employees who do not earn any commission. 
Return full name (first and last name), and salary. */
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS "FULL NAME", SALARY
FROM employees
WHERE COMMISSION_PCT IS NULL;

/*9. From the following table, write a SQL query to find the employees whose salary is in the range 9000,17000 (Begin and end values are included). 
Return full name, contact details and salary. */
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS "FULL NAME", PHONE_NUMBER, SALARY
FROM employees
WHERE SALARY BETWEEN 9000 AND 17000;

/* 10. From the following table, write a SQL query to find the employees whose first name ends with the letter ‘m’. 
Return the first and last name, and salary. */
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM employees
WHERE FIRST_NAME LIKE '%m';

/* 11. From the following table, write a SQL query to find those employees whose salaries are not between 7000 and 15000 (Begin and end values are
included). 
Sort the result-set in ascending order by the full name (first and last). Return full name and salary. */
SELECT CONCAT(FIRST_NAME,' ', LAST_NAME) AS "FULL NAME", SALARY
FROM employees
WHERE SALARY NOT BETWEEN 7000 AND 15000
ORDER BY CONCAT(FIRST_NAME,' ', LAST_NAME);

/* 12. From the following table, write a SQL query to find those employees who were hired between November 5th, 2007 and July 5th, 2009. 
Return full name (first and last), job id and hire date. */
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS "FULL NAME", JOB_ID, HIRE_DATE
FROM employees
WHERE HIRE_DATE BETWEEN '2007-11-05' AND '2009-07-05';

/* 13. From the following table, write a SQL query to find those employees who work either in department 70 or 90. 
Return full name (first and last name), department id. */
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS "FULL NAME", DEPARTMENT_ID
FROM employees
WHERE DEPARTMENT_ID = 70 OR DEPARTMENT_ID = 90;

/* 14. From the following table, write a SQL query to find those employees who work under a manager. 
Return full name (first and last name), salary, and manager ID. */
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS "FULL NAME", SALARY, MANAGER_ID
FROM employees
WHERE MANAGER_ID <> 0;

/* 15. From the following table, write a SQL query to find the employees who were hired before June 21st, 2002. 
Return all fields. */
SELECT * FROM employees
WHERE HIRE_DATE < '2002-06-21';

/* 16. From the following table, write a SQL query to find the employees whose managers hold the ID 120, 103, or 145. 
Return first name, last name, email, salary and manager ID. */
SELECT FIRST_NAME, LAST_NAME, EMAIL, SALARY, MANAGER_ID
FROM employees
WHERE MANAGER_ID IN (120, 103, 145);

/* 17. From the following table, write a SQL query to find employees whose first names contain the letters D, S, or N. 
Sort the result-set in descending order by salary. Return all fields. */
SELECT * FROM employees
WHERE FIRST_NAME LIKE '%D%' OR FIRST_NAME LIKE '%S%' OR FIRST_NAME LIKE '%N%'
ORDER BY SALARY DESC;

/* 18. From the following table, write a SQL query to find those employees who earn above 11000 or the seventh character in their phone number is 3. 
Sort the result-set in descending order by first name. 
Return full name (first name and last name), hire date, commission percentage, email, and telephone separated by '-', and salary.  */
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS "FULL NAME", HIRE_DATE, COMMISSION_PCT, 
CONCAT(EMAIL,' - ',PHONE_NUMBER) AS "CONTACT DETAILS", SALARY
FROM employees
WHERE SALARY > 11000
OR PHONE_NUMBER LIKE '______3%'
ORDER BY FIRST_NAME DESC;

/* 19. From the following table, write a SQL query to find those employees whose first name contains a character 's' in the third position. 
Return first name, last name and department id. */
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID
FROM employees
WHERE FIRST_NAME LIKE '__s%';

/* 20. From the following table, write a SQL query to find those employees work in the departments that are not part of the department 50 or 30 or 80. 
Return employee_id, first_name,job_id, department_id. */
SELECT EMPLOYEE_ID, FIRST_NAME, JOB_ID, DEPARTMENT_ID
FROM employees
WHERE DEPARTMENT_ID NOT IN (50, 30, 80);

/* 21. From the following table, write a SQL query to find the employees whose department numbers are included in 30, 40, or 90. 
Return employee id, first name, job id, department id. */
SELECT EMPLOYEE_ID, FIRST_NAME, JOB_ID, DEPARTMENT_ID
FROM employees
WHERE DEPARTMENT_ID IN (30, 40, 90);

/* 22. From the following table, write a SQL query to find those employees who worked more than two jobs in the past. 
Return employee id. */
SELECT EMPLOYEE_ID FROM job_history
GROUP BY EMPLOYEE_ID
HAVING COUNT (*) >= 2;

/* 23. From the following table, write a SQL query to count the number of employees, the sum of all salary, and difference between the highest salary
and lowest salaries by each job id. 
Return job_id, count, sum, salary_difference. */
SELECT JOB_ID, COUNT(*) AS "NUMBER OF EMPLOYEES", SUM(SALARY) AS "TOTAL SALARY",
MAX(SALARY) - MIN(SALARY) AS "DIFFERENCE OF SALARY" FROM employees
GROUP BY JOB_ID;

/* 24. 24. From the following table, write a SQL query to find each job ids where two or more employees worked for more than 300 days. 
Return job id. */
SELECT JOB_ID FROM job_history
WHERE END_DATE - START_DATE > 300
GROUP BY JOB_ID
HAVING COUNT (*) >= 2;

/* 25. From the following table, write a SQL query to count the number of cities in each country. 
Return country ID and number of cities. */
SELECT COUNTRY_ID, COUNT(*) AS "NUMBER OF CITIES" FROM locations
GROUP BY COUNTRY_ID;

/* 26. From the following table, write a SQL query to count the number of employees worked under each manager. 
Return manager ID and number of employees. */
SELECT MANAGER_ID, COUNT(*) AS "NUMBER OF EMPLOYEES" FROM employees
GROUP BY MANAGER_ID;

/* 27. From the following table, write a SQL query to find all jobs. 
Sort the result-set in descending order by job title. Return all fields. */
SELECT * FROM jobs
ORDER BY JOB_TITLE DESC;

/* 28. From the following table, write a SQL query to find all those employees who are either Sales Representatives or Salesmen. 
Return first name, last name and hire date. */
SELECT FIRST_NAME, LAST_NAME, HIRE_DATE FROM employees
WHERE JOB_ID IN ('SA_REP', 'SA_MAN');

/* 29. From the following table, write a SQL query to calculate the average salary of employees who receive a commission percentage for each department. 
Return department id, average salary. */
SELECT DEPARTMENT_ID, AVG(SALARY) AS "AVERAGE SALARY" FROM employees
WHERE COMMISSION_PCT > 0
GROUP BY DEPARTMENT_ID;

/* 30. From the following table, write a SQL query to find the departments where any manager manages four or more employees. 
Return department_id. */
SELECT DISTINCT(DEPARTMENT_ID) FROM employees
GROUP BY DEPARTMENT_ID, MANAGER_ID
HAVING COUNT(EMPLOYEE_ID) >= 4;

/* 31. From the following table, write a SQL query to find the departments where more than ten employees receive commissions. 
Return department id. */
SELECT DEPARTMENT_ID FROM employees
WHERE COMMISSION_PCT IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING COUNT(EMPLOYEE_ID) >= 10;

/* 32. From the following table, write a SQL query to find those employees who have completed their previous jobs. 
Return employee ID, end_date. */
SELECT EMPLOYEE_ID, END_DATE FROM job_history
WHERE END_DATE IS NOT NULL
GROUP BY EMPLOYEE_ID;

/* 33. From the following table, write a SQL query to find those employees who do not have commission percentage and have salaries between 7000, 12000
(Begin and end values are included.) and who are employed in the department number 50. 
Return all the fields of employees. */
SELECT * FROM employees
WHERE COMMISSION_PCT IS NULL
AND SALARY BETWEEN 7000 AND 12000
AND DEPARTMENT_ID = 50;

/* 34. From the following table, write a SQL query to compute the average salary of each job ID. Exclude those records where average salary is higher
than 8000. 
Return job ID, average salary. */
SELECT JOB_ID, AVG(SALARY) AS "AVERAGE SALARY" FROM employees
GROUP BY JOB_ID
HAVING AVG(SALARY) < 8000;

/* 35. From the following table, write a SQL query to find those job titles where maximum salary falls between 12000 and 18000 (Begin and end values are
included.). 
Return job_title, max_salary-min_salary. */
SELECT JOB_TITLE, MAX_SALARY - MIN_SALARY AS "DIFFERENCE OF SALARY" FROM jobs
WHERE MAX_SALARY BETWEEN 12000 AND 18000;

/* 36. From the following table, write a SQL query to find the employees whose first or last name begins with 'D'. 
Return first name, last name. */
SELECT FIRST_NAME, LAST_NAME FROM employees
WHERE FIRST_NAME LIKE 'D%' OR LAST_NAME LIKE 'D%';

/* 37. From the following table, write a SQL query to find details of those jobs where the minimum salary exceeds 9000. 
Return all the fields of jobs. */
SELECT * FROM jobs
WHERE MIN_SALARY > 9000;

/* 38. From the following table, write a SQL query to find those employees who joined after 7th September 1987. 
Return all the fields. */
SELECT * FROM employees
WHERE HIRE_DATE > '1987-09-07';
