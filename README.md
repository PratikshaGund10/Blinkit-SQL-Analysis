# 🛒 Blinkit Sales Trends – SQL Analytics Project

This project analyzes sales, logistics, and customer data from **Blinkit**, a leading grocery delivery service in India, using advanced SQL queries. Conducted as part of the **Business Data Management (BANA279)** course, the goal was to explore real business problems and derive insights through relational data modeling and SQL-based analytics.

---

## 🚀 Project Objectives

- Analyze operational inefficiencies and customer behavior from Blinkit's datasets
- Develop SQL queries to drive business decisions in marketing, inventory, and delivery
- Identify patterns in delays, product demand, feedback, and campaign performance

---

## 🏢 Business Context

Blinkit operates in the 10–30 minute grocery delivery space across urban India. Key operational challenges include:
- Delays in delivery due to urban traffic
- Stockouts of fast-moving items
- High customer churn due to service dissatisfaction
- Measuring effectiveness of marketing and fulfillment operations

---

## 📊 SQL Queries & Key Business Insights

| # | Query & File | Description | Business Insight |
|--:|--------------|-------------|------------------|
| 1 | `query_1_top_customers.sql` | Identifies customers with high order frequency and high average order value | Helps focus loyalty programs on the most profitable customers. Example: Garima Behl placed 20 orders with ₹1982 AOV. |
| 2 | `query_2_delayed_orders.sql` | Extracts orders delivered late | Most delays (3–15 mins) are caused by traffic, impacting SLAs and satisfaction. |
| 3 | `query_3_top_selling_products.sql` | Calculates revenue per product | Baby Food and Mangoes top sales by value, indicating seasonal or staple demand. |
| 4 | `query_4_frequently_ordered_products.sql` | Finds most frequently ordered items by order count and quantity | Baby Food and Baby Wipes are top repeat items, requiring high stocking. |
| 5 | `query_5_feedback_analysis.sql` | Summarizes feedback by category | Top issues: Delivery, Customer Service, Product Quality—shows need for better service SOPs. |
| 6 | `query_6_hourly_delivery_performance.sql` | Tracks avg delivery time by hour | Delays peak at 12 PM–2 PM (avg 5.3+ mins), suggesting the need for staffing/load adjustments. |
| 7 | `query_7_top_margin_products_by_revenue.sql` | Highlights revenue from high-margin products | Baby Food contributes highest margin-adjusted revenue—ideal for promotions. |
| 8 | `query_8_low_stock_high_demand_products.sql` | Flags products with low stock and high demand | Items like Lotion and Biscuits are in high demand but low in inventory—risk of lost sales. |
| 9 | `query_9_delay_analysis_by_distance_group.sql` | Compares delivery delay by distance band | Surprisingly, 0–2 km orders had more delays than 2–5 km, likely due to city congestion. |
|10 | `query_10_feedback_by_product.sql` | Maps complaints to specific products | Repeated complaints for Mangoes, Dog Food, and Baby Wipes call for product/vendor review. |

---

## 📂 Folder Structure



---

## 🧰 Tools Used

- SQL (MySQL syntax)
- Excel for CSV handling
- Draw.io for ER diagrams
- Kaggle data source (linked if licensing permits)

---

## 📂 Dataset

The data used in this project is publicly available on Kaggle:

🔗 [Blinkit Sales Dataset – Kaggle](https://www.kaggle.com/datasets/akxiit/blinkit-sales-dataset/data)

> The dataset includes sales transactions, customer feedback, delivery performance, and inventory records from Blinkit. Used here for academic, non-commercial purposes.

---

## 🔮 Future Enhancements

- Integrate visual dashboards using Tableau or Power BI
- Predictive analytics on product demand or delivery time
- Merge social sentiment with order data for experience mapping

---

## 👩‍💻 Author

**Pratiksha Gund**  
Business Data Management | Data Analytics & Engineering Enthusiast  
> _Academic project. Not affiliated with Blinkit._

---

© 2025 Pratiksha Gund | All rights reserved.
