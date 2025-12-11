-- PROJECT: Restaurant Sales Analysis
-- TABLE: order_details
-- OBJECTIVE: Analyzing orders placed and items sold

-- DATA TRANFORMATION
ALTER TABLE
	order_details
RENAME COLUMN 
	ï»¿order_details_id to order_details_id;

-- 1. View data from order details table
SELECT * 
FROM order_details
LIMIT 10;

-- 2. What is the date range available order data?
SELECT * 
FROM order_details
ORDER BY order_date;

SELECT 
	MIN(order_date) as Date_range_starts_from, 
	MAX(order_date) as Date_range_ending_on
FROM order_details;

-- 3. How many items were ordered within this date range?
SELECT COUNT(*) AS total_items_ordered
FROM order_details;

-- 4. How many unique orders were placed?
SELECT COUNT(DISTINCT order_id ) AS total_unique_orders
FROM  order_details;	


-- 5. Which orders had the most number of items (limiting by top 5)? 
SELECT 
	order_id,
	COUNT(item_id) as number_of_items
FROM order_details
GROUP BY order_id
ORDER BY number_of_items DESC
LIMIT 5;

-- 6. How many orders had more than 12 items?
SELECT COUNT(*) AS num_orders_more_than_12
FROM(
	SELECT 
		order_id,
        COUNT(item_id) AS num_items
	FROM order_details
	GROUP BY order_id
	HAVING COUNT(item_id) > 12
) AS temp;


