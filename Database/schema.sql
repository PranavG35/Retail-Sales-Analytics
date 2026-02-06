CREATE DATABASE retail_analytics;
USE retail_analytics;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    gender VARCHAR(10),
    city VARCHAR(50),
    registration_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    cost_price DECIMAL(10,2),
    selling_price DECIMAL(10,2)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
