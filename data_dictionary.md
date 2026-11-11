# Data Dictionary

All records are simulated and must not be presented as real operational results.

## Tables
- customers: fictional customer membership segment and delivery area.
- stores: fictional retailers, zones, and categories.
- delivery_partners: fictional delivery partner labels and transport modes.
- orders: one row per fictional order.
- order_stops: one row per store pickup stop in an order.

## Important fields
- store_stop_count: number of retailer pickup stops.
- route_distance_miles: simulated total route distance.
- store_prep_minutes: simulated retailer preparation time.
- delivery_minutes: simulated delivery leg time.
- partner_accept_minutes: simulated offer-to-accept time.
- delivery_fee_usd: illustrative simulated fee, not a price recommendation.
- order_status: Delivered, Cancelled, or Failed.
- on_time_flag: simulated Yes/No for delivered orders; N/A otherwise.
- pickup_status: simulated Ready, Delayed, or Unavailable.

## KPI definitions
- Completion rate = delivered orders / all orders.
- On-time rate = delivered orders marked Yes / delivered orders.
- Average delivery fee = mean fee across all orders.
- Average route distance = mean route distance.
- Average order cycle = partner acceptance + store prep + delivery minutes.
- Issue rate = cancelled or failed orders / orders in a group.

The data does not model real traffic, real inventory, actual route geometry, real payouts, tips, taxes, refunds, payment costs, or true unit economics.
