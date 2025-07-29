USE coffee_store;

SHOW tables;


INSERT INTO products (name, price, coffee_origin) 
VALUES 
('Espresso', 2.50, 'Brazil'), 
('Macchiato', 3.00, 'Colombia'),
('Cappuccino', 3.50, 'Costa Rica'),
('Latte', 3.50, 'Indonesia'),
('Americano', 3.25, 'Ethiopia'),
('Flat White', 3.50, 'Indonesia'),
('Filter', 3.00, 'Sri Lanka');

SELECT * from products;

-- update
UPDATE products SET coffee_origin = 'Sri Lanka' where id = 3;

SET sql_safe_updates = false;

-- delete
DELETE FROM products;
-- reset id
ALTER TABLE products AUTO_INCREMENT = 1;


-- -------------------
SELECT * from customers;
SELECT last_name from customers;
