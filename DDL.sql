create database test;

use test;

create table addresses(
	id INT,
    house_number INT,
    city VARCHAR(20),
    postcode VARCHAR(7)
);

create table people(
	id INT,
    first_name varchar(20),
    last_name varchar(20),
    address_id INT
);

create table pets (
	id INT,
    name varchar(20),
    species varchar(20),
    owner_id INT
);

-- add/remove primary key
DESCRIBE addresses;
ALTER table addresses ADD PRIMARY KEY (id);
ALTER table addresses DROP PRIMARY KEY; -- when make priority, may not make null
-- to change back to null
ALTER table addresses MODIFY id int;

DESCRIBE people;
-- add foreign key
ALTER TABLE people ADD CONSTRAINT FK_PeopleAddress FOREIGN KEY (address_id) REFERENCES addresses(id);

-- remove foreign key
ALTER TABLE people DROP FOREIGN KEY FK_PeopleAddress, DROP INDEX FK_PeopleAddress;

-- unique constraint 
DESCRIBE pets;
ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE (species);
ALTER TABLE pets DROP INDEX u_species;

-- rename col
ALTER TABLE pets change species animal_type VARCHAR(20);
ALTER TABLE pets rename column animal_type TO species;
ALTER TABLE pets rename column `what species` TO species;

-- change col data type
DESCRIBE addresses;
ALTER TABLE addresses modify column city int;
ALTER TABLE addresses modify column city char(20);

-- some fun
-- add primary key to id field in pets table
DESCRIBE pets;
ALTER TABLE pets ADD PRIMARY KEY (id);

-- add primary key to id field in people table
DESCRIBE people;
ALTER TABLE people ADD PRIMARY KEY (id);

-- add foreign key to owner_id of pets, referencing id in people
DESCRIBE pets;
ALTER TABLE pets ADD CONSTRAINT FK_Pets FOREIGN KEY (owner_id) REFERENCES people(id);

-- add col named email to people table
ALTER TABLE people ADD COLUMN email varchar(20);
ALTER TABLE people ADD CONSTRAINT u_email UNIQUE(email);

-- rename name in pets to first_name
ALTER TABLE pets RENAME COLUMN name TO first_name;

-- change postcode data to char(7) in addresses
ALTER TABLE addresses MODIFY COLUMN postcode char(7);
