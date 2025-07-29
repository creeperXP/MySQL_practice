/*
SHOW databases; -- see which databases to use

-- USE database_name_to_use;

CREATE database test;
USE test;
show tables;

CREATE TABLE ex(
	id INT;
);

DROP TABLE ex;

DROP database test
*/

SHOW DATABASES;

CREATE DATABASE coffee_store;

-- which database to use
USE coffee_store;

CREATE TABLE products (
	-- list of columns go inside here
    id INT auto_increment PRIMARY KEY, -- primary key which is auto incremented
    name VARCHAR(30),
    price DECIMAL(3,2) -- 3 sig figs, 2 decimal
);

SHOW TABLES; -- show tables in database

create table customers(
	id INT auto_increment PRIMARY KEY,
    first_name varchar(30),
    last_name varchar(30),
	gender ENUM('M', "F"),
    phone_number varchar(11)
);

create table orders(
	id INT auto_increment PRIMARY KEY,
    product_id INT,
    customer_id INT,
    order_time DATETIME,
    FOREIGN KEY (product_ID) REFERENCES products(id),
    -- declare product id as foreign, it refers to the id col in products table (which must be primary key)
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- ---------------------

-- add/remove columns 
DESCRIBE products;

ALTER TABLE products -- alter table, NO SEMI COLON HERE
ADD COLUMN coffee_origin VARCHAR(30); 

ALTER TABLE products drop column coffee_origin; -- delete col

-- ---------------------

