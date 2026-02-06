-- Revenue and profit by product

SELECT 
    p.product_name,
    p.category,
    SUM(s.quantity) AS units_sold,
    SUM(s.quantity * p.selling_price) AS revenue,
    SUM(s.quantity * (p.selling_price - p.cost_price)) AS profit
FROM sales s
JOIN products p 
    ON s.product_id = p.product_id
GROUP BY p.product_name, p.category
ORDER BY profit DESC;
