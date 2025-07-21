-- Identify high-margin products that contribute the most to total revenue.
-- Helps optimize pricing strategies and marketing focus.

SELECT 
    p.product_id,
    p.product_name,
    p.category,
    p.margin_percentage,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM blinkit_order_items oi
JOIN blinkit_products p ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name, p.category, p.margin_percentage
ORDER BY total_revenue DESC
LIMIT 10;
