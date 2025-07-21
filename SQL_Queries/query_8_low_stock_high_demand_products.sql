-- Identify high-demand products with limited stock availability.
-- This helps inventory managers prioritize restocking efforts and avoid lost sales due to stockouts.

SELECT 
    p.product_id,
    p.product_name,
    COALESCE(SUM(i.stock_received) - SUM(i.damaged_stock), 0) AS net_stock_received,
    COUNT(DISTINCT oi.order_id) AS total_orders,
    SUM(oi.quantity) AS total_quantity_sold
FROM blinkit_products p
LEFT JOIN blinkit_inventory i ON p.product_id = i.product_id
LEFT JOIN blinkit_order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
HAVING 
    net_stock_received < 1800 AND 
    total_orders > 15 AND 
    total_quantity_sold > 2500
ORDER BY total_orders DESC;