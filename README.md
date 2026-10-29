
# E-Commerce Sales Analytics | PostgreSQL + Power BI

## Project Overview

An end-to-end e-commerce analytics project combining PostgreSQL, SQL, Power BI, and DAX to analyze sales performance, customer purchasing behavior, and revenue growth.

The project demonstrates how raw transactional data can be transformed into actionable business insights through data validation, SQL analysis, and interactive dashboards.

## Tech Stack

- PostgreSQL & pgAdmin 4
- SQL: JOINs, CTEs, Window Functions (LAG), GROUP BY
- Power BI: Data Modeling, Power Query, DAX
- Business Intelligence & Data Visualization

## Dataset

Brazilian E-Commerce Public Dataset by Olist.

The analysis includes customer, order, order item, payment, product, seller, and review data.

## Key Results

- Analyzed approximately 99K e-commerce orders.
- Validated 99,441 order records for missing IDs, missing purchase dates, and duplicate order IDs.
- Identified 2,801 repeat customers among 93,358 customers with delivered orders.
- Calculated a 3.00% repeat purchase rate.
- Analyzed monthly revenue trends and month-over-month growth.
- Developed interactive sales and customer analytics dashboards.

## Dashboard Screenshots

### 1. Sales Performance Overview

![Sales Overview](screenshots/Screenshot%202026-10-29%20000306.png)

The dashboard provides an overview of total payment value, order volume, customers, average order value, customer reviews, product categories, and geographic performance.

### 2. Customer & Growth Analytics

![Customer Growth Analytics](screenshots/Screenshot%202026-10-29%20000417.png)

The second dashboard highlights repeat purchase behavior and monthly revenue growth.

## SQL Analysis

All PostgreSQL queries are available in the [sql folder](sql/).

| SQL File | Analysis |
|---|---|
| [01_monthly_revenue.sql](sql/01_monthly_revenue.sql) | Monthly orders and product revenue |
| [02_monthly_growth.sql](sql/02_monthly_growth.sql) | Month-over-month growth using CTEs and LAG |
| [03_customer_repeat_purchase.sql](sql/03_customer_repeat_purchase.sql) | Repeat customer analysis |
| [04_data_quality.sql](sql/04_data_quality.sql) | Missing values and duplicate order checks |

Note: The sales dashboard's Total Revenue measure uses payment values, while the SQL monthly revenue analysis uses order item prices for delivered orders. These are different business metrics.

## Business Insights

1. Only 3.00% of customers with delivered orders made repeat purchases during the observed period.
2. Most observed customers made a single delivered purchase.
3. Monthly revenue growth varied across 2017 and 2018.
4. Extremely low transaction volume in some boundary months can distort growth comparisons.

## Business Recommendations

- Investigate customer segments and product categories associated with repeat purchases.
- Explore customer retention campaigns and measure their effectiveness.
- Track monthly revenue growth using consistent revenue definitions.
- Exclude incomplete reporting periods from trend comparisons where appropriate.

## Project Skills Demonstrated

- Relational database analysis with PostgreSQL
- SQL data validation and aggregation
- Common Table Expressions and window functions
- Customer retention and revenue analytics
- Power BI data modeling and DAX measures
- Translating analytical findings into business recommendations

## Author

Thinh Quang Hoang

[GitHub](https://github.com/thinhdata30) | [LinkedIn](https://www.linkedin.com/in/thinhdata)
