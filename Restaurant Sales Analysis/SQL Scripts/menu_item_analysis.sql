-- PROJECT: Restaurant Sales Analysis
-- TABLE: menu_items
-- OBJECTIVE: Understand pricing, categories, and menu structure 

-- Data Transformation
ALTER TABLE 
	menu_items
RENAME COLUMN 
	ï»¿menu_item_id TO menu_item_id;

-- 1. View data from menu table
SELECT * 
FROM menu_items
LIMIT 10;

-- 2. Number of items available in the menu
SELECT COUNT(*) AS number_of_menu_items 
FROM menu_items;

-- 3. What is the price range of the menu?
SELECT 
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price
FROM menu_items;


-- 4. Top 5 Most Expensive items
SELECT * 
FROM menu_items
ORDER BY price DESC 
LIMIT 5;

-- 5. Top 5 Least Expensive items
SELECT * 
FROM menu_items
ORDER BY price
LIMIT 5;

-- 6.How many items are in each category?
SELECT category,COUNT(item_name) AS number_of_items
FROM menu_items 
GROUP BY category;

-- 7. How many Italian dishes are there on the menu?
SELECT COUNT(*) AS Italian_dish_count
FROM menu_items
WHERE category = 'Italian';

-- 8. Least and most expensive Italian dishes
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;

-- 9. What is the average price of dishes in each category?
SELECT category, ROUND(AVG(price),2) AS average_price
FROM menu_items
GROUP BY category
ORDER BY average_price DESC;








