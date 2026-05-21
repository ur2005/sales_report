-- Top customer View

CREATE VIEW top_customers_view AS
SELECT c.customer_name,
SUM(p.price * s.quantity)
AS total_purchase
FROM sales s JOIN customers c
ON s.customer_id = c.customer_id
JOIN products p
ON s.product_id = p.product_id
GROUP BY c.customer_name;

SELECT * FROM top_customers_view
ORDER BY total_purchase DESC;

-- Product sales summary view
CREATE VIEW product_sales_summary AS
SELECT p.product_id, p.product_name,
SUM(s.quantity) AS total_quantity_sold,
SUM(p.price * s.quantity)
AS total_revenue FROM sales s JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

SELECT * FROM product_sales_summary;

-- Profit analysis view
CREATE VIEW product_profit_view AS
SELECT p.product_name,
SUM(
(p.price - p.cost_price)
* s.quantity
) AS total_profit
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name;

SELECT * FROM product_profit_view;

-- Customer purchase View
CREATE VIEW customer_purchase_view AS
SELECT 
c.customer_id,
c.customer_name,
c.city,
SUM(p.price * s.quantity)
AS total_purchase
FROM sales s
JOIN customers c
ON s.customer_id = c.customer_id
JOIN products p
ON s.product_id = p.product_id
GROUP BY 
c.customer_id,
c.customer_name,
c.city;

SELECT * FROM customer_purchase_view;