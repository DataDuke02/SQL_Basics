CREATE TABLE customers (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);


INSERT INTO customers (first_name, last_name)
VALUES ("Fred","Fish"),
	   ("Larry","Lobster"),
       ("Bubble","Bass");

SELECT * FROM customers;
