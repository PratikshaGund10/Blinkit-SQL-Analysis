-- Analyzes feedback categories to understand key issues
SELECT f.feedback_category, COUNT(f.feedback_ID) AS feedback_count
FROM blinkit_customer_feedback f
GROUP BY f.feedback_category
ORDER BY feedback_count DESC
LIMIT 10;