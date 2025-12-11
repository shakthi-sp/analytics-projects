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
