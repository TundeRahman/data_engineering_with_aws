--albums sold talbe

SELECT *
FROM albums_sold

--employees table

SELECT *
FROM employees

--sales table

SELECT *
FROM sales

--transactions2 table

SELECT *
FROM transactions2

--joining all the tables

SELECT *
FROM albums_sold a 
JOIN transactions2 t
ON   a.transaction_id = t.transaction_id
JOIN employees e 
ON   e.emplees_id = t.transaction_id

