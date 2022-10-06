/* Reference: https://www.w3resource.com/mysql-exercises/insert-into-statement/ */
/* 06 /10/2022 9:59 am */
/* MySQL Insert Rows into the Table */

/* 1. Write a SQL statement to insert a record with your own value into the table countries against each columns.
 
 Here in the following is the structure of the table countries.
 
 +--------------+---------------+------+-----+---------+-------+
 | Field        | Type          | Null | Key | Default | Extra |
 +--------------+---------------+------+-----+---------+-------+
 | COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
 | COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
 | REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
 +--------------+---------------+------+-----+---------+-------+	
 */
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID) VALUES ('01', 'Australia', 12345);

/* 2. Write a SQL statement to insert one row into the table countries against the column country_id and country_name.
 
 Here in the following is the structure of the table countries.
 
 +--------------+---------------+------+-----+---------+-------+
 | Field        | Type          | Null | Key | Default | Extra |
 +--------------+---------------+------+-----+---------+-------+
 | COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
 | COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
 | REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
 +--------------+---------------+------+-----+---------+-------+	
 */
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME) VALUES ('02', 'Malaysia');

/* 3. Write a SQL statement to create duplicate of countries table named country_new with all structure and data.
 
 Here in the following is the structure of the table countries.
 
 +--------------+---------------+------+-----+---------+-------+
 | Field        | Type          | Null | Key | Default | Extra |
 +--------------+---------------+------+-----+---------+-------+
 | COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
 | COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
 | REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
 +--------------+---------------+------+-----+---------+-------+	
 */
CREATE TABLE country_new AS SELECT * FROMbCountries;

/* 4. Write a SQL statement to insert NULL values against region_id column for a row of countries table.*/
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
VALUES ('02', 'Malaysia', NULL);

/* 5. Write a SQL statement to insert 3 rows by a single insert statement.*/
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
VALUES 
('03', 'Japan', 1122),
('04', 'New Zealand', 5678),
('05', 'Singapore', 9001);

/* 6. Write a SQL statement insert rows from country_new table to countries table.
 
 Here is the rows for country_new table. Assume that, the countries table is empty.
 
 +------------+--------------+-----------+
 | COUNTRY_ID | COUNTRY_NAME | REGION_ID |
 +------------+--------------+-----------+
 | C0001      | India        |      1001 |
 | C0002      | USA          |      1007 |
 | C0003      | UK           |      1003 |
 +------------+--------------+-----------+
 */
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
SELECT COUNTRY_ID, COUNTRY_NAME, REGION_ID
FROM country_new;

/* 7. Write a SQL statement to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column. */
INSERT IGNORE INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES ('J01', 'Engineer', 8000, 15000);

/* 8. Write a SQL statement to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column. */
INSERT IGNORE INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES ('J01', 'Engineer', 8000, 15000);

/* Question #8 same as #7 */
/* 9. Write a SQL statement to insert a record into the table countries to ensure that, a country_id and region_id combination will be entered once in the table. */
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
SELECT * FROM 
(SELECT 'C04' AS COUNTRY_ID, 'Indonesia' AS COUNTRY_NAME, 8004 AS REGION_ID) AS new_value
WHERE NOT EXISTS 
(SELECT COUNTRY_ID, REGION_ID FROM countries WHERE COUNTRY_ID = 'C04' AND REGION_ID = 8004)
LIMIT 1;

/* 10. Write a SQL statement to insert rows into the table countries in which the value of country_id column will be unique and auto incremented.*/
CREATE TABLE IF NOT EXISTS countries (
    COUNTRY_ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
    COUNTRY_NAME varchar(100) NOT NULL,
    REGION_ID varchar(5) NOT NULL
  );

INSERT INTO countries(COUNTRY_NAME, REGION_ID)
VALUES('Thailand', 6500);

/* 11. Write a SQL statement to insert records into the table countries to ensure that the country_id column will not contain any duplicate data and this will be automatically incremented and the column country_name will be filled up by 'N/A' if no value assigned for that column. */
CREATE TABLE IF NOT EXISTS countries (
    COUNTRY_ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
    COUNTRY_NAME varchar(100) NOT NULL DEFAULT 'N/A',
    REGION_ID varchar(5) NOT NULL
  );

INSERT INTO countries (REGION_ID) VALUES(2016);

/* 12. Write a SQL statement to insert rows in the job_history table in which one column job_id is containing those values which are exists in job_id column of jobs table. */
INSERT INTO job_history (EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID)
SELECT * FROM (
SELECT 'E1001' AS EMPLOYEE_ID, '1999/10/07' AS START_DATE, '2020/05/13' AS END_DATE, 'J01' AS JOB_ID, 'D005' AS REGION_ID) AS new_value
WHERE EXISTS (SELECT JOB_ID FROM jobs WHERE JOB_ID = 'J01')
LIMIT 1;

/* 13. Write a SQL statement to insert rows into the table employees in which a set of columns department_id and manager_id contains a unique value and that combined values must have exists into the table departments. */
CREATE TABLE IF NOT EXISTS departments (
    DEPARTMENT_ID integer NOT NULL UNIQUE,
    DEPARTMENT_NAME varchar(30) NOT NULL,
    MANAGER_ID integer DEFAULT NULL,
    LOCATION_ID integer DEFAULT NULL,
    PRIMARY KEY (DEPARTMENT_ID, MANAGER_ID)
  )ENGINE = InnoDB;

INSERT INTO departments VALUES(75, 'SALES', 211, 89);
INSERT INTO departments VALUES(98, 'ACCOUNTS', 180, 89);
INSERT INTO departments VALUES(80, 'IT', 211, 56);

CREATE TABLE IF NOT EXISTS employees (
    EMPLOYEE_ID integer NOT NULL PRIMARY KEY,
    FIRST_NAME varchar(20) NOT NULL,
    LAST_NAME varchar(25) NOT NULL,
    EMAIL varchar(25) NOT NULL,
    PHONE_NUMBER varchar(20),
    HIRE_DATE date,
    JOB_ID varchar(10) NOT NULL,
    SALARY integer,
    COMMISSION_PCT integer,
    MANAGER_ID integer,
    DEPARTMENT_ID integer,
    FOREIGN KEY(DEPARTMENT_ID, MANAGER_ID) REFERENCES departments(DEPARTMENT_ID, MANAGER_ID)
  )ENGINE = InnoDB;

INSERT INTO employees VALUES(800,'Amy','Jones','amyjones@email.com',NULL,'2020-10-05','J01',8000,20,211,75);

INSERT INTO employees VALUES(801,'Amy','Jones','amyjones@email.com',NULL,'2020-10-05','J01',8000,20,75,211);
/*Cannot add or update a child row: a foreign key constraint fails (`w3resource`.`employees`, CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`DEPARTMENT_ID`, `MANAGER_ID`) REFERENCES `departments` (`DEPARTMENT_ID`, `MANAGER_ID`)) */

/* 14. Write a SQL statement to insert rows into the table employees in which a set of columns department_id and job_id contains the values which must have exists into the table departments and jobs. */
CREATE TABLE IF NOT EXISTS employees (
    EMPLOYEE_ID integer NOT NULL PRIMARY KEY,
    FIRST_NAME varchar(20) NOT NULL,
    LAST_NAME varchar(25) NOT NULL,
    EMAIL varchar(25) NOT NULL,
    PHONE_NUMBER varchar(20),
    HIRE_DATE date,
    JOB_ID varchar(10) NOT NULL,
    SALARY integer,
    COMMISSION_PCT integer,
    MANAGER_ID integer,
    DEPARTMENT_ID integer,
    FOREIGN KEY(JOB_ID) REFERENCES jobs(JOB_ID)
  ) ENGINE = InnoDB;

INSERT INTO employees VALUES(802,'Josh','Butler','joshbutler@email.com',NULL,'2020-10-05','J02',5000,20,98,180);

/* Cannot add or update a child row: a foreign key constraint fails (`w3resource`.`employees`, CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`JOB_ID`) REFERENCES `jobs` (`job_id`))*/
