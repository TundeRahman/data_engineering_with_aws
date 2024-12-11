SELECT *
FROM albums_sold

SELECT *
FROM employees

SELECT *
FROM music_store

SELECT *
FROM music_store2

--This is s comment--

SELECT *
FROM transactions

SELECT *
FROM transactions2

SELECT *
FROM albums_sold
JOIN transactions
ON albums_sold.transaction_id = transactions.transaction_id

SELECT 
    employee_id,
    employee_name,
    transaction_id,
    customer_name,
    cashier_id
FROM employees
JOIN transactions2

SELECT *
FROM albums_sold



