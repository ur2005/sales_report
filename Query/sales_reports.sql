-- INSERT REGIONS
INSERT INTO regions VALUES
(1, 'South'),
(2, 'North'),
(3, 'East'),
(4, 'West'),
(5, 'Central');

SELECT * FROM regions;

-- INSERT CATEGORIES
INSERT INTO categories VALUES
(101, 'Electronics'),
(102, 'Furniture'),
(103, 'Fashion'),
(104, 'Groceries'),
(105, 'Sports'),
(106, 'Stationary'),
(107, 'Makeup'),
(108, 'Gadget'),
(109, 'Toys'),
(110, 'Healthcare');

SELECT * FROM categories;

-- INSERT CUSTOMERS
INSERT INTO customers VALUES
(1, 'Arun', 'Male', 23, 'Chennai', 1),
(2, 'Priya', 'Female', 25, 'Bangalore', 1),
(3, 'Rahul', 'Male', 30, 'Mumbai', 4),
(4, 'Sneha', 'Female', 28, 'Delhi', 2),
(5, 'Kiran', 'Male', 35, 'Hyderabad', 5),
(6, 'Reena', 'Female', 42, 'Pune', 3),
(7, 'Vijay', 'Male', 31, 'Pune', 4),
(8, 'Meera', 'Female', 24, 'Mumbai', 2),
(9, 'Rohit', 'Male', 29, 'Ahmedabad', 5),
(10, 'Divya', 'Female', 26, 'Chennai', 1),
(11, 'Ravi', 'Male', 29, 'Chennai', 1),
(12, 'Raveena', 'Female', 25, 'Chennai', 1),
(13, 'Ajay', 'Male', 30, 'Mumbai', 4),
(14, 'Sneha', 'Female', 28, 'Delhi', 2),
(15, 'Kishn', 'Male', 35, 'Mumbai', 1),
(16, 'Meena', 'Female', 27, 'Kolkata', 3),
(17, 'Vijay', 'Male', 31, 'Pune', 4),
(18, 'Anjali', 'Female', 24, 'Jaipur', 2),
(19, 'Rithik', 'Male', 21, 'Ahmedabad', 1),
(20, 'Diya', 'Female', 26, 'Chennai', 1);

SELECT * FROM customers;

-- INSERT PRODUCTS
INSERT INTO products VALUES
(201, 'Dell Laptop', 101, 65000, 50000),
(202, 'iPhone 15', 101, 80000, 65000),
(203, 'Samsung TV', 101, 55000, 42000),

(204, 'Office Chair', 102, 7000, 4500),
(205, 'Wooden Table', 102, 15000, 10000),
(206, 'Bookshelf', 102, 9000, 6500),

(207, 'Men T-Shirt', 103, 1200, 700),
(208, 'Women Jeans', 103, 2500, 1500),
(209, 'Leather Jacket', 103, 5000, 3500),

(210, 'Rice Bag 25kg', 104, 1800, 1200),
(211, 'Cooking Oil 5L', 104, 1400, 1000),
(212, 'Chocolate Pack', 104, 500, 300),

(213, 'Football', 105, 1800, 1200),
(214, 'Cricket Bat', 105, 3500, 2200),
(215, 'Badminton Racket', 105, 2500, 1700),

(216, 'Notebook Pack', 106, 300, 150),
(217, 'Pen Box', 106, 200, 100),
(218, 'School Bag', 106, 1500, 900),

(219, 'Lipstick Kit', 107, 2200, 1500),
(220, 'Face Cream', 107, 800, 500),
(221, 'Perfume', 107, 3000, 2200),

(222, 'Smart Watch', 108, 12000, 8500),
(223, 'Bluetooth Speaker', 108, 3500, 2500),
(224, 'Wireless Earbuds', 108, 4500, 3200),

(225, 'Remote Car', 109, 2500, 1700),
(226, 'Teddy Bear', 109, 1200, 700),
(227, 'Building Blocks Set', 109, 3000, 2100),

(228, 'Vitamin Tablets', 110, 600, 350),
(229, 'Digital Thermometer', 110, 900, 600),
(230, 'Blood Pressure Monitor', 110, 3500, 2600);

SELECT * FROM products;

-- INSERT SALES
INSERT INTO sales VALUES
(1,1,201,1,'2026-01-01','UPI'),
(2,2,202,1,'2026-01-02','Card'),
(3,3,203,1,'2026-01-03','Cash'),
(4,4,204,2,'2026-01-04','UPI'),
(5,5,205,1,'2026-01-05','Card'),
(6,6,206,1,'2026-01-06','Cash'),
(7,7,207,3,'2026-01-07','UPI'),
(8,8,208,2,'2026-01-08','Card'),
(9,9,209,1,'2026-01-09','Cash'),
(10,10,210,2,'2026-01-10','UPI'),

(11,11,211,1,'2026-01-11','Card'),
(12,12,212,5,'2026-01-12','Cash'),
(13,13,213,1,'2026-01-13','UPI'),
(14,14,214,1,'2026-01-14','Card'),
(15,15,215,2,'2026-01-15','Cash'),
(16,16,216,4,'2026-01-16','UPI'),
(17,17,217,3,'2026-01-17','Card'),
(18,18,218,1,'2026-01-18','Cash'),
(19,19,219,2,'2026-01-19','UPI'),
(20,20,220,3,'2026-01-20','Card'),

(21,1,221,1,'2026-01-21','Cash'),
(22,2,222,1,'2026-01-22','UPI'),
(23,3,223,2,'2026-01-23','Card'),
(24,4,224,1,'2026-01-24','Cash'),
(25,5,225,2,'2026-01-25','UPI'),
(26,6,226,3,'2026-01-26','Card'),
(27,7,227,1,'2026-01-27','Cash'),
(28,8,228,4,'2026-01-28','UPI'),
(29,9,229,2,'2026-01-29','Card'),
(30,10,230,1,'2026-01-30','Cash');

SELECT * FROM sales;
SELECT * FROM categories;
SELECT * FROM products;
SELECT * FROM regions;
SELECT * FROM customers;

SELECT COUNT(*) FROM sales;

-- TOTAL REVENUE
SELECT 
    SUM(p.price * s.quantity) AS total_revenue
FROM sales s
JOIN products p
ON s.product_id = p.product_id;

-- Total Profit
SELECT SUM(
(p.price - p.cost_price)
* s.quantity
) AS total_profit
FROM sales s
JOIN products p
ON s.product_id = p.product_id;

-- top 5 selling products
SELECT p.product_name,
SUM(s.quantity) AS total_sold
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC limit 5;

-- Revenue by category
SELECT c.category_name,
SUM(p.price * s.quantity)
AS revenue
FROM sales s
JOIN products p
ON s.product_id = p.product_id
JOIN categories c
ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY revenue DESC;

-- revenue by city
SELECT c.city,
SUM(p.price * s.quantity)
AS revenue
FROM sales s
JOIN customers c
ON s.customer_id = c.customer_id
JOIN products p
ON s.product_id = p.product_id
GROUP BY c.city
ORDER BY revenue DESC;

-- top 5 customers
SELECT c.customer_name,
SUM(p.price * s.quantity)
AS total_purchase
FROM sales s
JOIN customers c
ON s.customer_id = c.customer_id
JOIN products p
ON s.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_purchase DESC
LIMIT 5;

-- payment method count
SELECT payment_method,
COUNT(*) AS transactions
FROM sales
GROUP BY payment_method;

-- top 5 high profit product
SELECT p.product_name,
SUM(
(p.price - p.cost_price)
* s.quantity
) AS total_profit
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit DESC limit 5;

-- customer ranking
SELECT * FROM (SELECT c.customer_name,
SUM(p.price * s.quantity)
AS total_purchase,
RANK() OVER(
ORDER BY
SUM(p.price * s.quantity) DESC
) AS customer_rank
FROM sales s
JOIN customers c
ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.customer_name ) ranked_customers;