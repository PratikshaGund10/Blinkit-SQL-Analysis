-- Analyze how delivery distance affects delivery performance.
-- Helps identify delivery time trends by distance range for operational optimization.

SELECT 
    CASE 
        WHEN distance_km < 2 THEN '0–2 km'
        WHEN distance_km BETWEEN 2 AND 5 THEN '2–5 km'
        WHEN distance_km BETWEEN 5 AND 10 THEN '5–10 km'
        ELSE '10+ km'
    END AS distance_range,
    COUNT(order_id) AS total_orders,
    SUM(CASE WHEN actual_time > promised_time THEN 1 ELSE 0 END) AS delayed_orders,
    ROUND(AVG(delivery_time_minutes), 2) AS avg_delivery_time
FROM blinkit_delivery_performance
GROUP BY distance_range
ORDER BY avg_delivery_time DESC;
