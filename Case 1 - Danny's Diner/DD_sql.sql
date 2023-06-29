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