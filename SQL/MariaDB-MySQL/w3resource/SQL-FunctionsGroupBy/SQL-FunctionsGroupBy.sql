/* 27/10/2022 12:23 pm
 * Reference: https://www.w3resource.com/sql-exercises/sql-aggregate-functions.php
 * Functions and Group By
 */

/* 1. From the following table, write a SQL query to calculate total purchase amount of all orders. 
Return total purchase amount. */
SELECT SUM(purch_amt) AS "Total Purchase Amount" FROM orders;

/* 2. From the following table, write a SQL query to calculate the average purchase amount of all orders. 
Return average purchase amount. */
SELECT AVG(purch_amt) AS "Average Purchase Amount" FROM orders;

/* 3. From the following table, write a SQL query that counts the number of unique salespeople. 
Return number of salespeople. */
SELECT COUNT(DISTINCT salesman_id) AS "Number of Salespeople" FROM orders;

/* 4. From the following table, write a SQL query to count the number of customers. 
Return number of customers. */
SELECT COUNT(DISTINCT customer_id) AS "Number of Customers" FROM customer;

/* 5. From the following table, write a SQL query to determine the number of customers who received at least one grade for their activity. */
SELECT COUNT(grade) AS "Number of Customers with Grade"
WHERE grade IS NOT NULL
FROM customer;

/* 6. From the following table, write a SQL query to find the maximum purchase amount. */
SELECT MAX(purch_amt) AS "Maximum Purchase Amount" FROM orders;

/* 7. From the following table, write a SQL query to find the minimum purchase amount. */
SELECT MIN(purch_amt) AS "Minimum Purchase Amount" FROM orders;

/* 8. From the following table, write a SQL query to find the highest grade of the customers in each city. 
Return city, maximum grade. */
SELECT city, MAX(grade) AS "Highest Grade"
FROM customer
GROUP BY city;

/* 9. From the following table, write a SQL query to find the highest purchase amount ordered by each customer. 
Return customer ID, maximum purchase amount. */
SELECT customer_id, MAX(purch_amt) AS "Highest Purchase Amount"
FROM orders
GROUP BY customer_id;

/* 10. From the following table, write a SQL query to find the highest purchase amount ordered by each customer on a particular date. 
Return, order date and highest purchase amount. */
SELECT customer_id, ord_date, MAX(purch_amt) AS "Highest Purchase Amount by Date"
FROM orders
GROUP BY customer_id, ord_date;

/* 11. From the following table, write a SQL query to determine the highest purchase amount made by each salesperson on '2012-08-17'. 
Return salesperson ID, purchase amount. */
SELECT salesman_id, MAX(purch_amt) AS "Highest Purchase Amount"
FROM orders
WHERE ord_date = '2012-08-17'
GROUP BY salesman_id;

/* 12. From the following table, write a SQL query to find the highest order (purchase) amount by each customer on a particular order date. 
Filter the result by highest order (purchase) amount above 2000.00. 
Return customer id, order date and maximum purchase amount. */
SELECT customer_id, order_date, MAX(purch_amt) AS "Highest Purchase Amount by Date"
FROM orders
GROUP BY customer_id, order_date
HAVING MAX(purch_amt) > 2000.00;

/* 13. From the following table, write a SQL query to find the maximum order (purchase) amount in the range 2000 - 6000 (Begin and end values are included.) by combination of each customer and order date. 
Return customer id, order date and maximum purchase amount. */
SELECT customer_id, order_date, MAX(purch_amt) AS "Maximum Purchase in the Range"
FROM orders
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt) BETWEEN 2000 AND 6000;

/* 14. From the following table, write a SQL query to find the maximum order (purchase) amount based on the combination of each customer and order date.
Filter the rows for maximum order (purchase) amount is either 2000, 3000, 5760, 6000. 
Return customer id, order date and maximum purchase amount. */
SELECT customer_id, order_date, MAX(purch_amt) AS "Maximum Purchase on Combination"
FROM orders
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt) IN (2000, 3000, 5760, 6000);

/* 15. From the following table, write a SQL query to determine the maximum order amount for each customer. 
The customer ID should be in the range 3002 and 3007(Begin and end values are included.). 
Return customer id and maximum purchase amount. */
SELECT customer_id, MAX(purch_amt) AS "Maximum Purchase in the Range of Customer ID"
FROM orders
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY customer_id;

/* 16. From the following table, write a SQL query to find the maximum order (purchase) amount for each customer. 
The customer ID should be in the range 3002 and 3007(Begin and end values are included.). 
Filter the rows for maximum order (purchase) amount is higher than 1000. 
Return customer id and maximum purchase amount. */
SELECT customer_id, MAX(purch_amt) AS "Maximum Purchase Amount"
FROM orders
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY customer_id
HAVING MAX(purch_amt) > 1000;

/* 17. From the following table, write a SQL query to determine the maximum order (purchase) amount generated by each salesperson. 
Filter the rows for the salesperson ID is in the range 5003 and 5008 (Begin and end values are included.). 
Return salesperson id and maximum purchase amount. */
SELECT salesman_id, MAX(purch_amt) AS "Maximum Order Amount"
FROM orders
WHERE salesman_id BETWEEN 5003 AND 5008
GROUP BY salesman_id;

/* 18. From the following table, write a SQL query to count all the orders generated on '2012-08-17'. 
Return number of orders. */
SELECT COUNT(*) AS "Number of Orders"
FROM orders
WHERE ord_date = '2012-08-17';

/* 19. From the following table, write a SQL query to count the number of salespeople in a city. 
Return number of salespeople. */
SELECT COUNT(salesman_id) AS "Number of Salesman"
FROM salesman
WHERE city IS NOT NULL;

/* 20. From the following table, write a SQL query to count the number of orders based on the combination of each order date and salesperson. 
Return order date, salesperson id. */
SELECT ord_date, salesman_id, COUNT(*)
FROM orders
GROUP BY ord_date, salesman_id;

/* 21. From the following table, write a SQL query to calculate the average product price. 
Return average product price. */
SELECT AVG(PRO_PRICE) AS "Average Product Price" FROM item_mast;

/* 22. From the following table, write a SQL query to count the number of products whose price are higher than or equal to 350. 
Return number of products. */
SELECT COUNT(*) AS "Number of Products"
FROM item_mast
WHERE PRO_PRICE >= 350;

/* 23. From the following table, write a SQL query to compute the average price for unique companies. 
Return average price and company id. */
SELECT PRO_COM AS "Company ID" AVG(PRO_PRICE) AS "Average Product Price" 
FROM item_mast
GROUP UP PRO_COM;

/* 24. From the following table, write a SQL query to compute the sum of the allotment amount of all departments. 
Return sum of the allotment amount. */
SELECT SUM(DPT_ALLOTMENT) AS "Sum of the Allotment Amount"
FROM emp_department;

/* 25. From the following table, write a SQL query to count the number of employees in each department. 
Return department code and number of employees. */
SELECT EMP_DEPT, COUNT(*) AS "Number of Employees"
FROM emp_details
GROUP BY EMP_DEPT;
