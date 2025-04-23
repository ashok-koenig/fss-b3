CREATE TABLE orders (
	order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    order_amount DECIMAL(10,2) CHECK (order_amount > 0),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    );