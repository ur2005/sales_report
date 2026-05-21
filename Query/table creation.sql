CREATE DATABASE sales_report;

USE sales_report;

-- REGIONS TABLE
CREATE TABLE regions (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(50));

-- CUSTOMERS TABLE
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    region_id INT,

    FOREIGN KEY (region_id)
    REFERENCES regions(region_id)
);

-- CATEGORIES TABLE
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

-- PRODUCTS TABLE
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10,2),
    cost_price DECIMAL(10,2),

    FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
);

-- SALES TABLE
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE,
    payment_method VARCHAR(30),

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);

SHOW TABLES;
