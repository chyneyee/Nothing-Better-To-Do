/* 01-02-2023 3:22 pm
 * Reference: https://www.w3resource.com/sql-exercises/view/sql-view.php
 * SQL View
 */
 
/* 1. From the following table, create a view for those salespeople who belong to the city of New York. */
CREATE VIEW newyorkstaff
AS SELECT * FROM salesman where city = 'New York';

/* 2. From the following table, create a view for all salespersons. 
Return salesperson ID, name, and city. */
CREATE VIEW salesown
AS SELECT salesman_id, name, city FROM salesman;

/* 3. From the following table, create a view to locate the salespeople in the city 'New York'. */
CREATE VIEW newyorkstaff
AS SELECT * FROM salesman WHERE city = 'New York';

/* 4. From the following table, create a view that counts the number of customers in each grade. */
CREATE VIEW gradecount
AS SELECT grade, COUNT(*) FROM customer GROUP BY grade;

/* 5. From the following table, create a view to count the number of unique customers, 
compute the average and the total purchase amount of customer orders by each date. */
CREATE VIEW totalforday
AS SELECT ord_date, COUNT( DISTINCT customer_id), AVG(purch_amt), SUM(purch_amt) FROM orders
GROUP BY ord_date;

/* 6. From the following tables, create a view to get the salesperson and customer by name. 
Return order name, purchase amount, salesperson ID, name, customer name. */
CREATE VIEW nameorders
AS SELECT ord_no, purch_amt, o.salesman_id, name, cust_name
FROM orders o, customer c, salesman s
WHERE o.customer_id = c.customer_id
AND o.salesman_id = s.salesman_id;

/* 7. From the following table, create a view to find the salesperson who handles a customer who makes the highest order of the day. 
Return order date, salesperson ID, name. */
CREATE VIEW elitsalesman
AS SELECT o.ord_date, s.salesman_id, s.name
FROM salesman s, orders o
WHERE s.salesman_id = o.salesman_id
AND o.purch_amt =
	(SELECT MAX(purch_amt) FROM orders c WHERE c.ord_date = o.ord_date);

/* 8. From the following table, create a view to find the salesperson who deals with the customer with the highest order at least three times per day. 
Return salesperson ID and name. */
CREATE VIEW incentive
AS SELECT DISTINCT salesman_id, name
FROM elitsalesman e
WHERE 3 <=
	(SELECT COUNT(*) FROM elitsalesman f
   WHERE e.salesman_id = f.salesman_id);

/* 9. From the following table, create a view to find all the customers who have the highest grade. 
Return all the fields of customer. */
CREATE VIEW highgrade
AS SELECT * FROM customer
WHERE grade = 
	(SELECT MAX(grade) FROM customer);
  
/* 10. From the following table, create a view to count the number of salespeople in each city. 
Return city, number of salespersons. */
CREATE VIEW citynum
AS SELECT city, COUNT(DISTINCT salesman_id) FROM salesman GROUP BY city;

/* 11. From the following table, create a view to compute the average purchase amount and total purchase amount for each salesperson. 
Return name, average purchase and total purchase amount. (Assume all names are unique.). */
CREATE VIEW norders
AS SELECT name, AVG(purch_amt), SUM(purch_amt)
FROM salesman s, orders o
WHERE s.salesman_id = o.salesman_id
GROUP BY name;

/* 12. From the following table, create a view to identify salespeople who work with multiple clients. 
Return all the fields of salesperson. */
CREATE VIEW mcustomer
AS SELECT *
FROM salesman s
WHERE 1 <
	(SELECT COUNT(*) FROM customer c WHERE s.salesman_id = c.salesman_id);

/* 13. From the following table, create a view that shows all matching customers with salespeople, 
ensuring that at least one customer in the city of the customer is served by the salesperson in the city of the salesperson. */
CREATE VIEW citymatch(custcity, salescity)
AS SELECT DISTINCT c.city, s.city
FROM customer c, salesman s
WHERE c.salesman_id = s.salesman_id;

/* 14. From the following table, create a view to display the number of orders per day. 
Return order date and number of orders. */
CREATE VIEW dateord(ord_date, odcount)
AS SELECT ord_date, COUNT(*)
FROM orders
GROUP BY ord_date;

/* 15. From the following table, create a view to find the salespeople who placed orders on October 10th, 2012. 
Return all the fields of salesperson. */
CREATE VIEW salesmanonoct
AS SELECT * FROM salesman s
WHERE s.salesman_id IN
	(SELECT salesman_id FROM orders WHERE ord_date '2012-10-10');

/* 16. From the following table, create a view to find the salespersons who issued orders on either August 17th, 2012 or October 10th, 2012. 
Return salesperson ID, order number and customer ID. */
CREATE VIEW sorder
AS SELECT salesman_id, ord_no, customer_id
FROM orders 
WHERE ord_date IN('2012-08-17', '2012-10-10');
