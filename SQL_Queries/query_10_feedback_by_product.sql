-- Analyzes feedback categories across individual products to identify product-specific issues
SELECT 
    f.feedback_category,
    oi.product_id,
    p.product_name,
    COUNT(f.feedback_id) AS total_feedbacks
FROM blinkit_customer_feedback f
JOIN blinkit_order_items oi ON f.order_id = oi.order_id
JOIN blinkit_products p ON oi.product_id = p.product_id
GROUP BY f.feedback_category, oi.product_id, p.product_name
ORDER BY total_feedbacks DESC;
