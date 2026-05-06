CREATE TABLE products (
	product_id INT,
	product_name VARCHAR(100) UNIQUE,   # can not enter any duplicated products
    price DECIMAL (4, 2) NOT NULL 		# NOT NULL used for to make a no empty row in column
)
INSERT INTO products
VALUES (100, "hamburger", 3.99),
	   (101, "fries", 1.89),
       (102, "ice creame", 1.00),
       (103, "soda", 1.14);
SELECT * FROM products;
