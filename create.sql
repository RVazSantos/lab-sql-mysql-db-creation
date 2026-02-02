CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars(
	id int AUTO_INCREMENT PRIMARY KEY,
	VIN varchar(50), 
    manufacturer varchar(50),
    model varchar(50),
    year int,
    color varchar(50)
    );
    
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons(
	id int AUTO_INCREMENT PRIMARY KEY,
	staff_ID int, 
    name varchar(50),
    store varchar(50)
    );
    
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(
	id int AUTO_INCREMENT PRIMARY KEY,
	invoice_ID int, 
    date date,
    model varchar(50),
    customer_ID int,
    staff_ID int,
    CONSTRAINT fk1 FOREIGN KEY (staff_id) REFERENCES salespersons(id),
    CONSTRAINT fk2 FOREIGN KEY (customer_ID) REFERENCES customers(id),
    CONSTRAINT fk3 FOREIGN KEY (invoice_ID) REFERENCES invoice(id)
    );
    
DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
	id int AUTO_INCREMENT PRIMARY KEY,
	customer_ID int, 
    name varchar(50),
    phone_number varchar(50),
    email varchar(50)  DEFAULT "-",
    address varchar(50),
    city varchar(50),
    state_province varchar(50),
    country varchar(50),
    postal_code varchar(5)
    );

SELECT * FROM cars;