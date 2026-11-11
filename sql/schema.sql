-- PostgreSQL schema. All supplied CSV data is simulated.
CREATE TABLE customers(customer_id VARCHAR(10) PRIMARY KEY,membership_type VARCHAR(30),delivery_area VARCHAR(60));
CREATE TABLE stores(store_id VARCHAR(10) PRIMARY KEY,store_name VARCHAR(100),shopping_zone VARCHAR(60),category VARCHAR(60));
CREATE TABLE delivery_partners(partner_id VARCHAR(10) PRIMARY KEY,partner_label VARCHAR(60),transport_mode VARCHAR(20),status VARCHAR(20));
CREATE TABLE orders(
 order_id VARCHAR(10) PRIMARY KEY, customer_id VARCHAR(10) REFERENCES customers(customer_id),
 order_created_at TIMESTAMP, shopping_zone VARCHAR(60), store_stop_count INTEGER CHECK(store_stop_count>=1),
 route_distance_miles NUMERIC(5,1), store_prep_minutes INTEGER, delivery_minutes INTEGER,
 partner_accept_minutes INTEGER, delivery_fee_usd NUMERIC(7,2),
 partner_id VARCHAR(10) REFERENCES delivery_partners(partner_id),
 order_status VARCHAR(20), on_time_flag VARCHAR(5));
CREATE TABLE order_stops(
 order_id VARCHAR(10) REFERENCES orders(order_id), stop_sequence INTEGER,
 store_id VARCHAR(10) REFERENCES stores(store_id), pickup_status VARCHAR(20),
 PRIMARY KEY(order_id,stop_sequence));
