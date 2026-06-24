CREATE TABLE transcations(
	transcation_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5, 2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

SELECT * FROM transcations;

ALTER TABLE transcations
DROP FOREIGN KEY transcation_ibfk_1;

ALTER TABLE transcations
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (customer_id) REFERENCES customers (customer_id);  # FOREIGN KEY is make to link between two diff tables 
															   # and we refer a another table column as foreign key in one table 
DELETE FROM transcations;

ALTER TABLE transcations
AUTO_INCREMENT = 1000;

INSERT INTO transcations (amount, customer_id)
VALUES	(4.99, 3),
		(2.89, 2),
        (3.38, 3),
        (4.99, 1);
        
DELETE FROM customers
WHERE customer_id = 3;  # we cannot delete a column even from parent table because its a foreign key

INSERT INTO transcations (amount, customer_id)
VALUES	(1.00, NULL);
SELECT * FROM transcations;

INSERT INTO customers (first_name, last_name)
VALUES ("Poppy","Puff");
SELECT * FROM customers;

SELECT *
FROM transcations INNER JOIN customers
ON transcations.customer_id = customers.customer_id;  # Join is used to combain a two tables by using relative column like private key
