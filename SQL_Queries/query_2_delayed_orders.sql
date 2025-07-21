
-- Extracts all orders that were delivered later than promised 
SELECT d.order_ID, d.delivery_partner_ID, d.promised_time, 
       d.actual_time, d.delivery_time_minutes, d.reasons_if_delayed
FROM blinkit_delivery_performance d
WHERE d.actual_time > d.promised_time;