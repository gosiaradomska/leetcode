SELECT customer_id
FROM Customer c
GROUP BY c.customer_id
HAVING COUNT( DISTINCT c.product_key ) = (SELECT COUNT( p.product_key ) FROM Product p);