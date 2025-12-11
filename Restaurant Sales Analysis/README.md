# 🍕 Restaurant Sales Analytics Project

A complete SQL-based analysis of restaurant order behavior, item performance, sales patterns, and category insights.  
This project uses **MySQL** for data cleaning, transformation, and analytics.

---

## 🎯 1. Objective

The goal of this project is to analyze restaurant sales data to understand:

- Exploaring the menu items and order details
- Finding total orders and items sold
- Most and least ordered items  
- Category-wise performance  
- Highest spending customers  
- Order patterns and menu insights 

---

### 📁 **menu_items Table**

| Column Name   | Description               |
|---------------|---------------------------|
| menu_item_id  | Unique ID of menu item    |
| item_name     | Name of the dish          |
| category      | Food category             |
| price         | Price of the menu item (US Dollars $)|

### 📁 **order_details Table**

| Column Name         | Description                          |
|---------------------|--------------------------------------|
| order_details_id    | Unique ID for each line item         |
| order_id            | ID of an order                        |
| order_date          | Date of order                        |
| order_time          | Time of order                        |
| item_id             | Item ordered (Matches the menu_item_id in the menu_items table) |

➡️ *(Dataset files are stored inside the `Dataset` folder.)*

---

## 🔧 3. Tools Used

- **MySQL Workbench** — Data Transformation & analysis  
- **Excel/CSV** — Source dataset  

---

## ❓ 4. Business Questions Answered

### Menu Insights  
- Which items were ordered the most?  
- Which items were ordered the least?  
- Which categories do they belong to? 

### Orders Analysis  
- What is the date range of the dataset?  
- How many total items were ordered?  
- How many distinct orders were placed?  
- Which orders had the most number of items?  

### Sales Insights  
- Which 5 orders spent the most money?  
- What categories contributed to those high spending orders?  
- What patterns exist among high-value orders?

---

## 💻 5. SQL Scripts

All SQL scripts used in this project are stored in the following folder:

👉 **[Click to open SQL Scripts Folder](https://github.com/shakthi-sp/analytics-projects/tree/main/Restaurant%20Sales%20Analysis/SQL%20Scripts)**

Scripts included:

- `menu_item_analysis.sql`  
- `order_details_analysis.sql`  
- `customer_analysis_with_menu_and_order_details.sql`  


---

## 📸 Key Screenshots

### 1️⃣ Menu Items — First 10 Rows
![Menu Items Preview](./Screenshots/menu_items_preview.png)

### 2️⃣ Top 5 Most Expensive Items
![Most Expensive Items](./Screenshots/menu_items_top_5_expensive.png)

### 3️⃣ Category-wise Item Count
![Category Count](./Screenshots/Category-wise_item_count.png)

---

### 4️⃣ Order Details — First 10 Rows
![Order Details Preview](./Screenshots/order_details_preview.png)

### 5️⃣ Orders with Highest Item Count
![Top Item Count Orders](./Screenshots/orders_top_item_count.png)

### 6️⃣ Date Range Summary
![Date Range](./Screenshots/order_date_range.png)

---

### 7️⃣ Most Ordered Items with Category
![Most Ordered Items](./Screenshots/most_ordered_items.png)

### 8️⃣ Top 5 Highest Spending Orders
![Top Spending Orders](./Screenshots/top_5_spending_orders.png)

### 9️⃣ Category Breakdown of Highest Spending Order
![High Spend Order Breakdown](./Screenshots/high_spend_order_category_breakdown.png)


---

## 🔍 7. Insights & Findings

### ⭐ Key Insights

| Insight | Explanation |
|--------|-------------|
| 🔹 **Most ordered items** | The Asian and American categories dominate the top 5 most ordered items.
| These items have 200+ purchases, indicating strong customer preference. |
| 🔹 **Least ordered items** | Certain bakery items show low demand. |
| 🔹 **High-value orders** | Top 5 orders consisted mainly of fast-food + beverages. |
| 🔹 **Customer preferences** | High spenders buy items from multiple categories, not just one. |

### ⭐ Additional Observations

- Large orders typically contain **8–15+ items**.  
- Categories like **American** and **Asian** appear frequently in high-value orders.  
- Menu items priced between ₹7–₹14 make up a large percentage of total sales.

---

## 🚀 8. Conclusion

This SQL analysis reveals clear trends in restaurant sales, including:

- Popular and unpopular items  
- Customer purchase behavior  
- Category-level performance  
- High-value order structure  

These insights can support decisions on:

- Menu optimization  
- Inventory planning  
- Marketing strategies  
- Pricing adjustments  


---

## ✨ Future Enhancements

- Add Power BI dashboard  
- Add Python-based automation  
- Add advanced SQL (CTEs, window functions)  
- Add interactive visuals  

---

