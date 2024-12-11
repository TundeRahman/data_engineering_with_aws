SELECT 
    c.name, 
    s.store_id store_id,
    s.state store_location, 
    item_name, 
    c.rewards rewards_member,
    b.spent
FROM customer c
JOIN customer_transactions b      
ON c.customer_id = b.customer_id
JOIN store s
ON b.store_id = s.store_id
JOIN items_purchased i     
ON I.customer_id = b.customer_id
WHERE b.spent > 30


-- WHERE b.spent > 30 AND c.rewards = 'Yes'

SELECT *
FROM customer c
JOIN customer_transactions b
ON c.customer_id = b.customer_id 
WHERE c.name = 'Toby'

