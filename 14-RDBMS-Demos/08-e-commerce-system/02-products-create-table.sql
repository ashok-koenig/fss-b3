CREATE TABLE products (
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    product_price DECIMAL(10,2) NOT NULL CHECK(product_price >0),
    product_stock INT NOT NULL CHECK(product_stock >=0)
    );