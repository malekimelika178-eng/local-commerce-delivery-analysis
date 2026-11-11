# Tableau setup guide

1. Open Tableau Public or Tableau Desktop.
2. Connect → To a File → Text File → select `orders.csv`.
3. Add `stores.csv`, `customers.csv`, and `delivery_partners.csv` as related tables if needed.
4. Use `order_id` as the order key; use `customer_id`, `partner_id`, and `store_id` for relationships.
5. For store-level pickup analysis, connect `order_stops.csv` to `orders.csv` on `order_id` and to `stores.csv` on `store_id`. Avoid summing order-level fees after joining to multiple stop rows, because that duplicates order amounts.
6. Recommended worksheets:
   - Orders by shopping zone: `shopping_zone` vs COUNTD(`order_id`)
   - Completion rate by zone: delivered orders / all orders
   - Average delivery fee: AVG(`delivery_fee_usd`)
   - Average route distance: AVG(`route_distance_miles`)
   - Order cycle time: AVG(`store_prep_minutes` + `delivery_minutes` + `partner_accept_minutes`)
   - Issue rate by pickup count: `store_stop_count` vs cancelled/failed orders / all orders
   - Store pickup readiness: `pickup_status` counts by `store_name`
7. Create a dashboard with KPI cards across the top, zone comparison in the middle, and multi-store/issue analysis below.

All CSV values are simulated for portfolio practice. Do not present them as actual market or operating data.
