CREATE VIEW customer_orders_view AS
SELECT 
	o.*,
    c.customer_name,
    c.customer_email 
		FROM orders o, customers c 
			WHERE o.customer_id = c.customer_id;