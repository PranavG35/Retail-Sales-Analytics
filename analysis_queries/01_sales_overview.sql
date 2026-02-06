-- Overall sales performance summary

SELECT 
    COUNT(s.sale_id) AS total_orders,
    SUM(s.quantity) AS total_units_sold,
    SUM(s.quantity * p.selling_price) AS total_revenue,
    SUM(s.quantity * (p.selling_price - p.cost_price)) AS total_profit
FROM sales s
JOIN products p 
    ON s.product_id = p.product_id;
