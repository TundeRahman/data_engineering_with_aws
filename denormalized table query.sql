--sales table

SELECT *
FROM sales

--employees table

SELECT *
FROM employees

--ablums sold table

SELECT *
FROM albums_sold

--transactions2 table

SELECT *
FROM transactions2

--joining all the tables

SELECT *
FROM albums_sold a 
JOIN transactions2 t
ON   a.transaction_id = t.transaction_id
JOIN employees e 
ON   e.employee_id = t.transaction_id
JOIN albums_sold m
ON   m.transaction_id = t.transaction_id