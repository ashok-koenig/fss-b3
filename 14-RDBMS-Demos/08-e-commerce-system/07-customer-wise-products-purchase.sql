SELECT 
		c.customer_name,
        o.order_date,
        p.product_name,
        p.product_price,
        od.quantity,
        (p.product_price * od.quantity) AS total_cost
	FROM customers c
    JOIN orders o ON c.customer_id=o.customer_id
    JOIN order_details od ON o.order_id=od.order_id
    JOIN products p ON od.product_id=p.product_id;