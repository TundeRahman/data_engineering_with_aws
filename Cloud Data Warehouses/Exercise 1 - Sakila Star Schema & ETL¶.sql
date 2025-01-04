SELECT 
    movie
    SUM(revenue) as revenue,
    cv2.city as city,
    c.first_name as first_name,
    c.last_name as last_name
FROM   
    (SELECT 
        f.title as movie,
        p.amount as revenue,
        cv2.city as city,
        c.first_name as first_name,
        c.last_name as last_name
    FROM payment  p
    JOIN rental   r ON ( p.rental_id = r.rental_id )
    JOIN customer c ON ( c.customer_id = r.customer_id )
    JOIN store    s ON ( s.store_id = c.store_id )
    JOIN inventory i ON (i.store_id = s.store_id)
    JOIN film     f ON (f.film_id = i.film_id)
    JOIN staff sv2 ON ( r.staff_id = sv2.staff_id )
    JOIN address a ON ( a.address_id = sv2.address_id )
    JOIN city cv2 ON ( cv2.city_id = a.city_id)
    )    
GROUP BY movie, cv2.city, c.first_name, c.last_name
LIMIT 1000;  







