-- PROJECT: Restaurant Sales Analysis
-- TABLES USED: order_details, menu_items
-- OBJECTIVE: Combining menu and ordetails table to understand customer ordering behavior, top-selling items, and high-value orders


-- 1. Combine menu_items and order_details 
SELECT * 
FROM order_details od 
LEFT JOIN  menu_items mt
	ON od.item_id = mt.menu_item_id
LIMIT 10;
    
-- 2. What were the least and the most ordered items ? What categories were they in ?
SELECT 
	mt.category,
    mt.item_name,
    COUNT(DISTINCT od.order_details_id) AS number_of_purchase 
FROM order_details od 
LEFT JOIN  menu_items mt
	ON od.item_id = mt.menu_item_id
GROUP BY mt.category,mt.item_name
ORDER BY number_of_purchase;
    
-- 3. What were the top 5 orders that spent the most money ?
SELECT 
    od.order_id,
    ROUND(SUM(mt.price),2) AS total_spent
FROM order_details od
LEFT JOIN menu_items mt
    ON od.item_id = mt.menu_item_id
GROUP BY od.order_id
ORDER BY total_spent DESC
LIMIT 5;


-- 4. Category breakdown of the highest spending order (Order ID 440 is the highest spender)
SELECT 
    mt.category,
    COUNT(od.item_id) AS num_items
FROM order_details od
LEFT JOIN menu_items mt
    ON od.item_id = mt.menu_item_id
WHERE od.order_id = 440
GROUP BY mt.category
ORDER BY num_items DESC;

-- 5. Category breakdown of the top 5 highest-spending orders -
-- Getting top 5 spenders
SELECT 
    od.order_id,
    SUM(mt.price) AS total_spent
FROM order_details od
LEFT JOIN menu_items mt
    ON od.item_id = mt.menu_item_id
GROUP BY od.order_id
ORDER BY total_spent DESC
LIMIT 5;

-- Analyzing in  what categories the top 5 spenders ordered
SELECT 
    od.order_id,
    mt.category,
    COUNT(od.item_id) AS num_items
FROM order_details od
LEFT JOIN menu_items mt
    ON od.item_id = mt.menu_item_id
WHERE od.order_id IN (440, 2075, 1957, 330, 1274)
GROUP BY od.order_id, mt.category
ORDER BY od.order_id, num_items DESC;
