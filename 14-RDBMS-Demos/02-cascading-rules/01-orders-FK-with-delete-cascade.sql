ALTER TABLE orders
	ADD CONSTRAINT FK_customer
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) 
    on DELETE CASCADE;