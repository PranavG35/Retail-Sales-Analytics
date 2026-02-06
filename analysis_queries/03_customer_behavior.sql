-- Customer purchase behavior and lifetime value

SELECT 
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(s.sale_id) AS total_orders,
    SUM(s.quantity * p.selling_price) AS total_spent
FROM customers c
JOIN sales s 
    ON c.customer_id = s.customer_id
JOIN products p 
    ON s.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(s.sale_id) >= 2
ORDER BY total_spent DESC;
