DELIMITER $$
CREATE TRIGGER trg_validate_stock
BEFORE INSERT ON order_details
FOR EACH ROW
BEGIN
	DECLARE available_stock INT;
    SELECT product_stock INTO available_stock FROM products WHERE product_id = NEW.product_id;
    IF available_stock IS NULL OR available_stock < NEW.quantity THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Not enough stock available';
	END IF;
END $$
DELIMITER ;