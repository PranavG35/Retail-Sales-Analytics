-- Month-over-Month growth using window functions

WITH monthly_sales AS (
    SELECT 
        DATE_FORMAT(s.sale_date, '%Y-%m') AS month,
        SUM(s.quantity * p.selling_price) AS revenue
    FROM sales s
    JOIN products p 
        ON s.product_id = p.product_id
    GROUP BY DATE_FORMAT(s.sale_date, '%Y-%m')
)

SELECT 
    month,
    revenue,
    revenue - LAG(revenue) OVER (ORDER BY month) AS mom_growth
FROM monthly_sales;
