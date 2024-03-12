/*********create database*********/
CREATE DATABASE MPOTULO_PHARMACY;

/*********create tables*********/
CREATE TABLE CUSTOMERS (
    CUSTOMER_ID INT IDENTITY(1, 1) PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(255),
    CUSTOMER_EMAIL VARCHAR(255),
    CUSTOMER_PHONE VARCHAR(255),
    CUSTOMER_ADDRESS VARCHAR(255),
    CUSTOMER_EMAIL VARCHAR(255),
    CUSTOMER_PHONE VARCHAR(255),
    CUSTOMER_ADDRESS VARCHAR(255)
);

CREATE TABLE PRODUCTS (
    PRODUCT_ID INT IDENTITY(1, 1) PRIMARY KEY,
    PRODUCT_NAME VARCHAR(255),
    PRODUCT_PRICE DECIMAL(10, 2),
    PRODUCT_QUANTITY INT
);

CREATE TABLE ORDERS (
    ORDER_ID INT IDENTITY(1, 1) PRIMARY KEY,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    PRODUCT_ID INT,
    FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
    FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID)
);

-- insert data
INSERT INTO CUSTOMERS (
    CUSTOMER_NAME,
    CUSTOMER_EMAIL,
    CUSTOMER_PHONE,
    CUSTOMER_ADDRESS
) VALUES (
    'Manelisi Mpotulo',
    'mpotulo@gmail.com',
    '083 123 4567',
    '123 Main Road, Cape Town'
),
(
    'Siphokazi Mpotulo',
    'siphokazi@gmail.com',
    '083 123 4567',
    '123 Main Road, Cape Town'
),
(
    'Siyabulela Mpotulo',
    'siyabulela@gmail.com',
    '083 123 4567',
    '123 Main Road, Cape Town'
);

INSERT INTO PRODUCTS (
    PRODUCT_NAME,
    PRODUCT_PRICE,
    PRODUCT_QUANTITY
) VALUES (
    'Panado',
    15.00,
    100
),
(
    'Grandpa',
    20.00,
    100
),
(
    'Disprin',
    25.00,
    100
);

INSERT INTO ORDERS (
    CUSTOMER_ID,
    ORDER_DATE,
    PRODUCT_ID
) VALUES (
    1,
    '2021-01-01',
    1
),
(
    2,
    '2021-01-01',
    2
),
(
    3,
    '2021-01-01',
    3
);