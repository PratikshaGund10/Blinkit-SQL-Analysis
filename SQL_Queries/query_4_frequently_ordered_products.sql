-- Analyzes number of orders and quantity sold for each product
SELECT p.product_ID, p.product_name, p.category, 
       COUNT(DISTINCT oi.order_ID) AS total_orders, 
       SUM(oi.quantity) AS total_quantity_sold
FROM blinkit_order_items oi
INNER JOIN blinkit_products p ON oi.product_ID = p.product_ID
GROUP BY p.product_ID, p.product_name, p.category
ORDER BY total_orders DESC, total_quantity_sold DESC
LIMIT 10;