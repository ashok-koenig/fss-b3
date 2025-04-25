CREATE TABLE order_details (
	order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK(quantity >0),
    CONSTRAINT FK_order_details_orders
		FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
        ON DELETE CASCADE,
	CONSTRAINT FK_order_details_products
		FOREIGN KEY (product_id)
        REFERENCES products(product_id)
        ON DELETE CASCADE
        );