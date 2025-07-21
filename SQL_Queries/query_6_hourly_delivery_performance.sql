#Delivery Performance by Hour or Day
SELECT EXTRACT(HOUR FROM d.promised_time) AS promised_hour,
       AVG(d.delivery_time_minutes) AS avg_delivery_time
FROM blinkit_delivery_performance d
GROUP BY promised_hour
ORDER BY avg_delivery_time DESC;
