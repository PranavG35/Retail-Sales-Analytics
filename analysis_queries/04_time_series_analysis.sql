-- Monthly sales trend analysis

SELECT 
    DATE_FORMAT(s.sale_date, '%Y-%m') AS month,
    SUM(s.quantity) AS units_sold,
    SUM(s.quantity * p.selling_price) AS revenue
FROM sales s
JOIN products p 
    ON s.product_id = p.product_id
GROUP BY DATE_FORMAT(s.sale_date, '%Y-%m')
ORDER BY month;
