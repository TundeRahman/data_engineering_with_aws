SELECT *
FROM customer c 
JOIN customer_transactions b 
ON   c.customer_id = b.customer_id
JOIN store s 
ON   s.store_id = b.store_id
JOIN items_purchased i 
ON   i.customer_id = b.customer_id

-- Query 1: Find all the customers that spent more than 30 dollars, 
-- who are they, which store they bought it from, location of the store, 
-- what they bought and if they are a rewards member.

SELECT 
    c.name,
    s.store_id,
    s.state,
    i.item_name,
    c.rewards,
    b.spent
FROM customer c 
JOIN customer_transactions b 
ON   c.customer_id = b.customer_id
JOIN store s 
ON   s.store_id = b.store_id
JOIN items_purchased i 
ON   i.customer_id = b.customer_id
WHERE b.spent > 30;


