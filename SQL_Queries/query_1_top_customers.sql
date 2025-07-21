-- Identifies top customers with high order frequency and high average order value
SELECT c.customer_ID, c.​​Customer_Name, c.total_orders, c.avg_order_value
 FROM blinkit_customers c
 WHERE c.total_orders > (
 	SELECT AVG(total_orders) FROM blinkit_customers
 )
 AND c.avg_order_value > (
 	SELECT AVG(avg_order_value) FROM blinkit_customers
 )
 ORDER BY c.total_orders DESC, c.avg_order_value DESC
 LIMIT 10;