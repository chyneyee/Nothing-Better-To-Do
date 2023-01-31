/* 17/11/2022 3:22 pm
Reference: https://www.w3resource.com/sql-exercises/sql-joins-exercises.php
JOINS
*/

/* 1. From the following tables write a SQL query to find the salesperson and customer who reside in 
the same city. Return Salesman, cust_name and city */
SELECT salesman.name AS "Salesman", customer.cust_name, customer.city
FROM salesman, customer
WHERE salesman.city = customer.city;

/* 2. From the following tables write a SQL query to find those orders where the order amount exists 
between 500 and 2000. Return ord_no, purch_amt, cust_name, city. */
SELECT o.ord_no, o.purch_amt, c.cust_name, c.city
FROM orders o, customer c
WHERE o.customer_id = c.customer_id
AND o.purch_amt BETWEEN 500 AND 2000;

/* 3. From the following tables write a SQL query to find the salesperson(s) 
and the customer(s) he represents. Return Customer Name, city, Salesman, commission. */
SELECT c.cust_name, c.city, s.name AS "Salesman", s.commission
FROM customer c INNER JOIN salesman s
ON c.salesman_id = s.salesman_id;

/* 4. From the following tables write a SQL query to find salespeople who received commissions of 
more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission. */
SELECT c.cust_name, c.city, s.name AS "Salesman", s.commission
FROM customer c INNER JOIN salesman s
ON c.salesman_id = s.salesman_id
AND commission > 0.12;

/* 5. From the following tables write a SQL query to locate those salespeople who do not live in the same city 
where their customers live and have received a commission of more than 12% from the company. 
Return Customer Name, customer city, Salesman, salesman city, commission. */
SELECT c.cust_name, c.city, s.name AS "Salesman", s.commission
FROM customer c INNER JOIN salesman s
ON c.salesman_id = s.salesman_id
WHERE c.city <> s.city
AND s.commission > 0.12;

/* 6. From the following tables write a SQL query to find the details of an order. 
Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission. */
SELECT o.ord_no, o.ord_date, o.purch_amt, c.cust_name, c.grade, s.name AS "Salesman", s.commission
FROM orders o INNER JOIN customer c 
ON o.customer_id = c.customer_id
INNER JOIN salesman s
ON c.salesman_id = s.salesman_id;

/* 7. Write a SQL statement to join the tables salesman, customer and orders so that 
the same column of each table appears once and only the relational rows are returned. */
SELECT * FROM orders
NATURAL JOIN customer
NATURAL JOIN salesman;

/* 8. From the following tables write a SQL query to display the customer name, customer city, grade, salesman, salesman city. 
The results should be sorted by ascending customer_id. */
SELECT c.cust_name, c.city, c.grade, s.name AS "Salesman", s.city
FROM customer c LEFT JOIN salesman s
ON c.salesman_id = s.salesman_id
ORDER BY c.customer_id;

/* 9. From the following tables write a SQL query to find those customers with a grade less than 300. 
Return cust_name, customer city, grade, Salesman, salesmancity. 
The result should be ordered by ascending customer_id. */
SELECT c.cust_name, c.city, c.grade, s.name AS "Salesman", s.city
FROM customer c LEFT JOIN salesman s
ON c.salesman_id = s.salesman_id
WHERE c.grade < 300
ORDER BY c.customer_id;

/* 10. Write a SQL statement to make a report with customer name, city, order number, order date, 
and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not. */
SELECT c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amt AS "Order Amount"
FROM customer c LEFT JOIN orders o
ON c.customer_id = o.customer_id
ORDER BY o.ord_date;

/* 11. SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission 
to determine if any of the existing customers have not placed orders or if they have placed orders through their salesman or by themselves. */
SELECT c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amt AS "Order Amount", s.name, s.commission
FROM customer c LEFT JOIN orders o 
ON c.customer_id = o.salesman_id
LEFT JOIN salesman s
ON s.salesman_id = o.salesman_id;

/* 12. Write a SQL statement to generate a list in ascending order of salespersons who work either 
for one or more customers or have not yet joined any of the customers. */
SELECT c.name, s.name FROM customer c
RIGHT JOIN salesman s
ON s.salesman_id = c.salesman_id
ORDER BY s.name;

/* 13. From the following tables write a SQL query to list all salespersons along with 
customer name, city, grade, order number, date, and amount. */
SELECT c.cust_name, c.city, c.grade, s.name AS "Salesman", o.ord_no, o.ord_date, o.purch_amt AS "Amount"
FROM customer c
RIGHT JOIN salesman s
ON s.salesman_id = c.salesman_id
RIGHT JOIN orders o
ON o.customer_id = c.customer_id;

/* 14. Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. 
The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade, 
or he may not have placed any order to the associated supplier. */
SELECT c.cust_name, c.city, c.grade, s.name AS "Salesman", o.ord_no, o.ord_date, o.purch_amt
FROM customer c
RIGHT JOIN salesman s
ON s.salesman_id = c.salesman_id
LEFT JOIN orders c
ON o.customer_id = c.customer_id
WHERE o.purch_amt >= 2000
AND c.grade IS NOT NULL;

/* 15.For those customers from the existing list who put one or more orders, 
or which orders have been placed by the customer who is not on the list, 
create a report containing the customer name, city, order number, order date, and purchase amount. */
SELECT c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amt AS "Purchase Amount"
FROM customer c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

/* 16. Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase amount 
for only those customers on the list who must have a grade and placed one or more orders 
or which order(s) have been placed by the customer who neither is on the list nor has a grade. */
SELECT c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amt AS "Purchase Amount"
FROM customer c
FULL OUTER JOIN orders o
ON c.customer_id = o.customer_id
WHERE c.grade IS NOT NULL;

/* 17. Write a SQL query to combine each row of the salesman table with each row of the customer table.  */
SELECT * FROM salesman CROSS JOIN customer;

/* 18. Write a SQL statement to create a Cartesian product between salesperson and customer, 
i.e. each salesperson will appear for all customers and vice versa for that salesperson who belongs to that city. */
SELECT * FROM salesman CROSS JOIN customer
WHERE salesman.city IS NOT NULL;

/* 19. Write a SQL statement to create a Cartesian product between salesperson and customer, 
i.e. each salesperson will appear for every customer and vice versa for those salesmen who belong to a city and customers who require a grade. */
SELECT * FROM salesman CROSS JOIN customer
WHERE salesman.city IS NOT NULL
AND customer.grade IS NOT NULL;

/* 20. Write a SQL statement to make a Cartesian product between salesman and customer 
i.e. each salesman will appear for all customers and vice versa for those salesmen who must belong to a city which is not the same as his customer 
and the customers should have their own grade. */
SELECT * FROM salesman CROSS JOIN customer
WHERE salesman.city IS NOT NULL
AND customer.grade IS NOT NULL
AND salesman.city <> customer.city;

/* 21. From the following tables write a SQL query to select all rows 
from both participating tables as long as there is a match between pro_com and com_id. */
SELECT * FROM item_mast
JOIN company_mast
ON item_mast.pro_com = company_mast.com_id;

/* 22. Write a SQL query to display the item name, price, and company name of all the products.  */
SELECT i.pro_name, i.price, c.com_name
FROM item_mast i JOIN company_mast c
ON i.pro_com = c.com_id;

/* 23. From the following tables write a SQL query to calculate the average price of items of each company. 
Return average value and company name. */
SELECT AVG(i.pro_price) AS "Average Price", c.com_name
FROM item_mast i JOIN company_mast c
ON i.pro_com = c.com_id
GROUP BY c.com_name;

/* 24. From the following tables write a SQL query to calculate and find the average price of items of each company higher than or equal to Rs. 350. 
Return average value and company name. */
SELECT AVG(i.pro_price) AS "Average Price", c.com_name
FROM item_mast i JOIN company_mast c
ON i.pro_com = c.com_id
GROUP BY c.com_name
HAVING AVG(i.pro_price) >= 350;

/* 25. From the following tables write a SQL query to find the most expensive product of each company. 
Return pro_name, pro_price and com_name. */
SELECT i.pro_name, i.pro_price, c.com_name
FROM item_mast i JOIN company_mast c
ON i.pro_com = c.com_id
AND i.pro_price =
(SELECT MAX(i.pro_price) FROM item_mast i
WHERE i.pro_com = c.com_id);

/* 26. From the following tables write a SQL query to display all the data of employees including their department. */
SELECT * FROM emp_details a JOIN emp_department b
ON a.emp_dept = b.dpt_code;

/* 27. From the following tables write a SQL query to display the first and last names of each employee, 
as well as the department name and sanction amount. */
SELECT b.emp_fname, b.emp_lname, a.dpt_name, a.dpt_allotment
FROM emp_department a JOIN emp_details b
ON b.emp_dept = a.dpt_code;

/* 28. From the following tables write a SQL query to find the departments with budgets 
more than Rs. 50000 and display the first name and last name of employees. */
SELECT b.emp_fname, b.emp_lname
FROM emp_details b JOIN emp_department a
ON b.emp_dept = a.dpt_code
AND a.dpt_allotment > 50000;

/* 29. From the following tables write a SQL query to find the names of departments 
where more than two employees are employed. Return dpt_name. */
SELECT a.dpt_name
FROM emp_department a JOIN emp_details b
ON a.dpt_code = b.emp_dept
GROUP BY a.dpt_name
HAVING COUNT(*) > 2;
