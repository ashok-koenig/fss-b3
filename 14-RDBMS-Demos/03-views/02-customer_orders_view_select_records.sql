-- SELECT * FROM customer_orders_view;
SELECT 
	customer_name, 
    order_date, 
    order_amount 
		FROM customer_orders_view
			WHERE order_amount>300;