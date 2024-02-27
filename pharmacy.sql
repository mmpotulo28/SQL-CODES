/*********create database*********/
CREATE DATABASE mpotulo_pharmacy;

/*********create tables*********/
CREATE TABLE customers
(
    customer_id int PRIMARY KEY AUTO_INCREMENT,
    customer_name varchar(255),
    customer_email varchar(255),
    customer_phone varchar(255),
    customer_address(255),
    customer_email varchar
(255),
    customer_phone varchar
(255),
    customer_address varchar
(255)
);

CREATE TABLE products
(
    product_id int PRIMARY KEY AUTO_INCREMENT,
    product_name varchar
(255),
    product_price decimal
(10,2),
    product_quantity int
);

CREATE TABLE orders
(
    order_id int PRIMARY KEY AUTO_INCREMENT,
    customer_id int,
    order_date date,
    product_id int,
    FOREIGN KEY
(customer_id) REFERENCES customers
(customer_id),
    FOREIGN KEY
(product_id) REFERENCES products
(product_id)
);

-- insert data
INSERT INTO customers
    (customer_name, customer_email, customer_phone, customer_address)
VALUES
    ('Manelisi Mpotulo', 'mpotulo@gmail.com', '083 123 4567', '123 Main Road, Cape Town'),
    ('Siphokazi Mpotulo', 'siphokazi@gmail.com', '083 123 4567', '123 Main Road, Cape Town'),
    ('Siyabulela Mpotulo', 'siyabulela@gmail.com', '083 123 4567', '123 Main Road, Cape Town');

INSERT INTO products
    (product_name, product_price, product_quantity)
VALUES
    ('Panado', 15.00, 100),
    ('Grandpa', 20.00, 100),
    ('Disprin', 25.00, 100);

INSERT INTO orders
    (customer_id, order_date, product_id)
VALUES
    (1, '2021-01-01', 1),
    (2, '2021-01-01', 2),
    (3, '2021-01-01', 3);
