/* 01/02/2023 1:18 pm
 * Reference: https://www.w3resource.com/sql-exercises/union/sql-union.php
 * SQL Union
 */

/* 1. From the following tables, write a SQL query to find all salespeople and customers located in the city of London. */
SELECT salesman_id AS 'ID', name AS 'Salesman' FROM salesman
WHERE city = 'London'
UNION
	(SELECT customer_id AS 'ID', cust_name AS 'Customer'FROM customer
   WHERE city = 'London');

/* 2. From the following tables, write a SQL query to find distinct salespeople and their cities. 
Return salesperson ID and city. */
SELECT salesman_id, city FROM customer
UNION
	(SELECT salesman_id, city FROM salesman);

/* 3. From the following tables, write a SQL query to find all those salespeople and customers who are involved in the inventory management system. 
Return salesperson ID, customer ID. */
SELECT salesman_id, customer_id FROM orders
UNION
	(SELECT salesman_id, customer_id FROM customer);

/* 4. From the following table, write a SQL query to find the salespersons who generated the largest and smallest orders on each date. 
Return salesperson ID, name, order no., highest on/lowest on, order date. */
SELECT s.salesman_id, s.name, o.ord_no, 'highest on', o.ord_date
FROM salesman s, orders o
WHERE s.salesman_id = o.salesman_id
AND o.purch_amt =
	(SELECT MAX(purch_amt) FROM orders c WHERE c.ord_date = o.ord_date)
UNION
	(SELECT s.salesman_id, name, ord_no, 'lowest on', ord_date
   FROM salesman s, orders o
   WHERE s.salesman_id = o.salesman_id
   AND o.purch_amt =
   	(SELECT MIN(purch_amt) FROM orders c WHERE c.ord_date = o.ord_date));

/* 5. From the following tables, write a SQL query to find the salespeople who generated the largest and smallest orders on each date. 
Sort the result-set on third field. Return salesperson ID, name, order no., highest on/lowest on, order date. */
SELECT s.salesman_id, name, ord_no, 'highest on', ord_date
FROM salesman s, orders o
WHERE s.salesman_id = o.salesman_id
AND o.purch_amt =
	(SELECT MAX(purch_amt) FROM orders c WHERE c.ord_date = o.ord_date)
UNION
	(SELECT s.salesman_id, name, ord_no, 'lowest on', ord_date
   FROM salesman s, orders o
   WHERE s.salesman_id = o.salesman_id
   AND o.purch_amt =
   	(SELECT MIN(purch_amt) FROM orders c WHERE c.ord_date = o.ord_date))
ORDER BY 3;

/* 6. From the following tables, write a SQL query to find those salespeople who live in the same city where the customer lives as well 
as those who do not have customers in their cities by indicating 'NO MATCH'. Sort the result set on 2nd column (i.e. name) in descending order. 
Return salesperson ID, name, customer name, commission. */
SELECT s.salesman_id, s.name, c.cust_name, s.commission
FROM salesman s, customer c
WHERE s.city = c.city
UNION
	(SELECT salesman_id, name, 'NO MATCH', comission
   FROM salesman
   WHERE NOT city = ANY
   	(SELECT city FROM customer))
ORDER BY 2 DESC;

/* 7. From the following tables, write a SQL query that appends strings to the selected fields, indicating whether the city of any 
salesperson is matched with the city of any customer. 
Return salesperson ID, name, city, MATCHED/NO MATCH. */
SELECT s.salesman_id, s.name, s.city, 'MATCHED'
FROM salesman s, customer c
WHERE s.city = c.city
UNION
	(SELECT salesman_id, name, city, 'NO MATCH'
   FROM salesman
   WHERE NOT city = ANY
   	(SELECT city FROM customer))
ORDER BY 2 DESC;

/* 8. From the following table, write a SQL query to create a union of two queries that shows the customer id, cities, and ratings of all customers. 
Those with a rating of 300 or greater will have the words 'High Rating', while the others will have the words 'Low Rating'. */
SELECT customer_id, city, grade, 'High Rating'
FROM customer
WHERE grade >= 300
UNION
	(SELECT customer_id, city, grade, 'Low Rating'
   FROM customer
   WHERE grade < 300);

/* 9. From the following table, write a SQL query to find those salespersons and customers who have placed more than one order. 
Return ID, name. */
SELECT c.customer_id AS 'ID', c.cust_name AS 'Name'
FROM customer c
WHERE 1 <
	(SELECT COUNT(*) FROM orders o WHERE c.customer_id = o.customer_id)
UNION
	(SELECT s.salesman_id AS 'ID', name AS 'Name'
   FROM salesman s
   WHERE 1 <
   	(SELECT COUNT(*) FROM orders o WHERE s.salesman_id = o.salesman_id))
ORDER BY 2;
