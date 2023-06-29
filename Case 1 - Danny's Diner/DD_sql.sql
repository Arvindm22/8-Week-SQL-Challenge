/* --------------------
   Case Study Questions
   --------------------*/

-- 1. What is the total amount each customer spent at the restaurant?
SELECT 
	customer_id,
    sum(price) AS Total_Amount
FROM sales 
JOIN menu USING (product_id)
GROUP BY customer_id
ORDER BY Total_Amount;

-- 2. How many days has each customer visited the restaurant?
SELECT 
		customer_id,
        count(DISTINCT order_date) as No_of_days_visited
FROM sales
GROUP BY customer_id;