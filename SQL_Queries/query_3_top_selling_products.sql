-- Calculates total revenue generated by each product
 SELECT p.product_ID, p.product_name, p.category,
    	SUM(oi.quantity * oi.unit_price) AS total_revenue
 FROM blinkit_order_items oi
 INNER JOIN blinkit_products p ON oi.product_ID = p.product_ID
 GROUP BY p.product_ID, p.product_name, p.category
 ORDER BY total_revenue DESC
 LIMIT 10;