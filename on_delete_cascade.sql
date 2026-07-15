-- ON DELETE SET NULL =  When a FK is deleted, replace FK with NULL				FK = FOREIGN KEY
-- ON DELETE CASCADE = When a FK is deleted, delete entire row

SELECT * FROM transcations;

SET foreign_key_checks = 0;    -- we have to set foreign key checks to 0  so that we can use delete without any error
SET foreign_key_checks = 1;

CREATE TABLE transcations (
	transcation_id INT PRIMARY KEY,
    amount DECIMAL(5, 2),
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)				-- FOR CREATING A NEW TABLE
    ON DELETE SET NULL
);

ALTER TABLE transcations DROP FOREIGN KEY fk_customer_id;

ALTER TABLE transcations 
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE SET NULL;

DELETE FROM customers
WHERE customer_id = 4;

ALTER TABLE transcations DROP FOREIGN KEY fk_customer_id;

ALTER TABLE transcations 
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE CASCADE;

UPDATE transcations
SET customer_id = 4
WHERE transcation_id = 1005;

