SQL Sales Report Dashboard
Project Overview

This project is an advanced SQL-based Sales Report System developed using MySQL and MySQL Workbench.

The project analyzes retail sales data and generates business reports using advanced SQL queries. It demonstrates database design, relational modeling, data analysis, business reporting, views, stored procedures, and query optimization techniques.

The system helps analyze:

Sales performance
Revenue generation
Product performance
Customer purchasing behavior
Category-wise revenue
Monthly sales trends
Profit analysis
Technologies Used
SQL
MySQL
MySQL Workbench
GitHub
Database Structure

The project contains the following tables:

1. Regions

Stores region details.

Column Name	Description
region_id	Unique region ID
region_name	Region name
2. Customers

Stores customer information.

Column Name	Description
customer_id	Unique customer ID
customer_name	Customer name
gender	Gender
age	Customer age
city	Customer city
region_id	Region reference
3. Categories

Stores product categories.

Column Name	Description
category_id	Unique category ID
category_name	Category name
4. Products

Stores product details.

Column Name	Description
product_id	Unique product ID
product_name	Product name
category_id	Category reference
price	Selling price
cost_price	Product cost price
5. Sales

Stores transaction details.

Column Name	Description
sale_id	Unique sale ID
customer_id	Customer reference
product_id	Product reference
quantity	Quantity sold
sale_date	Transaction date
payment_method	Payment type
SQL Concepts Used

This project demonstrates:

CRUD Operations
Joins
GROUP BY
Aggregation Functions
Subqueries
Window Functions
Views
Stored Procedures
Indexing
Foreign Keys
Business Reporting
Reports Generated

The project includes the following business reports:

Total Revenue Report
Total Profit Report
Top Selling Products
Revenue by Category
Revenue by City
Monthly Revenue Trend
Top Customers
Payment Method Analysis
Product Profit Analysis
Customer Ranking Report
Views Created

The project includes reusable SQL Views:

monthly_revenue_view
top_customers_view
category_revenue_view
customer_purchase_view
product_profit_view
payment_method_view
Stored Procedures

The following procedures were implemented:

GetTotalRevenue()
GetTopCustomers()
GetMonthlyRevenue()
GetProductProfit()
Business Insights

The project also includes business insights generated from sales analysis such as:

High revenue generating categories
Top customers
Most profitable products
Monthly sales growth
Payment method usage trends
Project Structure

sales-report-dashboard/
│
├── sql/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   ├── reports.sql
│   ├── views.sql
│
├── insights/
│   └── insights.md
│
├── screenshots/
│
└── README.md