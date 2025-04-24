CREATE TABLE order_history (
	order_id INT,
    customer_id INT,
    deleted_at DATETIME DEFAULT NOW()
    );