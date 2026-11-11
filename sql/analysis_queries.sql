-- 1. Overall order performance
SELECT COUNT(*) total_orders,
 COUNT(*) FILTER(WHERE order_status='Delivered') delivered_orders,
 ROUND(100.0*COUNT(*) FILTER(WHERE order_status='Delivered')/COUNT(*),1) completion_rate_pct,
 ROUND(AVG(delivery_fee_usd),2) avg_delivery_fee
FROM orders;

-- 2. On-time delivery rate
SELECT ROUND(100.0*COUNT(*) FILTER(WHERE on_time_flag='Yes')/NULLIF(COUNT(*),0),1) on_time_rate_pct
FROM orders WHERE order_status='Delivered';

-- 3. Compare one-store and multi-store orders
SELECT CASE WHEN store_stop_count=1 THEN 'One store' ELSE 'Multiple stores' END order_type,
 COUNT(*) orders, ROUND(AVG(route_distance_miles),1) avg_miles,
 ROUND(AVG(store_prep_minutes+delivery_minutes+partner_accept_minutes),1) avg_cycle_minutes,
 ROUND(AVG(delivery_fee_usd),2) avg_fee
FROM orders GROUP BY 1 ORDER BY 1;

-- 4. Performance by shopping zone
SELECT shopping_zone,COUNT(*) orders,
 ROUND(100.0*COUNT(*) FILTER(WHERE order_status='Delivered')/COUNT(*),1) completion_rate_pct,
 ROUND(AVG(route_distance_miles),1) avg_miles
FROM orders GROUP BY shopping_zone ORDER BY orders DESC;

-- 5. Store pickup readiness
SELECT s.store_name,COUNT(*) pickup_stops,
 ROUND(100.0*COUNT(*) FILTER(WHERE os.pickup_status='Ready')/COUNT(*),1) ready_rate_pct
FROM order_stops os JOIN stores s USING(store_id) GROUP BY s.store_name ORDER BY ready_rate_pct DESC;

-- 6. Issue rate by number of store stops
SELECT store_stop_count,COUNT(*) orders,
 ROUND(100.0*COUNT(*) FILTER(WHERE order_status IN('Cancelled','Failed'))/COUNT(*),1) issue_rate_pct
FROM orders GROUP BY store_stop_count ORDER BY store_stop_count;

-- 7. Customer membership mix
SELECT membership_type,COUNT(*) customers FROM customers GROUP BY membership_type;
