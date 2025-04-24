DELIMITER //

CREATE TRIGGER trg_after_delete
AFTER DELETE ON orders
FOR EACH ROW
BEGIN
	INSERT INTO order_history(order_id, customer_id)
		VALUES(OLD.order_id,OLD.customer_id);
END//

DELIMITER ;

