-- Amazon product categories

SELECT distinct category
FROM alexa_data;

-- Number of products sold in each category
SELECT category as "Product Category", COUNT(product_id) as "Products Sold"
FROM alexa_data
GROUP BY category
ORDER BY COUNT(product_id) DESC;

-- Orders that were cancelled or returned 

SELECT order_id as "Order ID", binary_cancel_hour and binary_cancel_time as "Cancelled", binary_return as "Returned"
FROM alexa_data
WHERE binary_cancel_hour OR binary_return OR binary_cancel_time = '1';

-- Calculating cancellation rate

SELECT 
  a.category AS "Category", 
  IFNULL(cancelled_orders.cancelled_count, 0) AS "Cancelled Orders",
  COUNT(a.order_id) AS "Total Orders", 
  ROUND(IFNULL(cancelled_orders.cancelled_count, 0) / COUNT(a.order_id) * 100, 2) AS "Cancellation Rate (%)"
FROM alexa_data as a
  LEFT JOIN (
    SELECT category, COUNT(binary_cancel_time) AS "cancelled_count"
    FROM alexa_data
    WHERE binary_cancel_hour OR binary_cancel_time = '1'
    GROUP BY category
  ) cancelled_orders ON a.category = cancelled_orders.category
GROUP BY a.category;
  
-- Calculating return rate

SELECT
  a.category AS "Category",
  IFNULL(r.return_orders, 0) AS "Return Orders",
  COUNT(a.order_id) AS "Total Orders",
  ROUND(IFNULL(r.return_orders, 0) / COUNT(a.order_id) * 100, 2) AS "Return Rate (%)"
FROM alexa_data as a
  LEFT JOIN (
    SELECT category, COUNT(return_date) AS "return_orders"
    FROM alexa_data
    WHERE binary_return = '1'
    GROUP BY category
  ) r ON a.category = r.category
GROUP BY a.category;

-- Categorizing households based on products purchased

SELECT customer_id,
  CASE
    WHEN COUNT(CASE WHEN category IN ('grocery', 'home and kitchen') THEN 1 END) > 3 
      THEN 'Busy young people buy more than 3 grocery + home and kitchen'
    WHEN COUNT(CASE WHEN category = 'sport' THEN 1 END) > 3 
      THEN 'Sporty households buy more than 3 sport items'
    WHEN COUNT(CASE WHEN category = 'electronic' THEN 1 END) > 3 
      THEN 'Techy households buy more than 3 electronic items'
    ELSE 'Other'
  END AS category
FROM alexa_data
GROUP BY customer_id;

-- Products purchased over Alexa Voice

SELECT category as "Category", COUNT(category) as "Category Count"
FROM alexa_data
WHERE is_alexa_ordered = 1
GROUP BY category;

-- Toys and Games products that were cancelled

SELECT COUNT(order_id) as "Cancelled Toys and Games"
FROM alexa_data
WHERE is_alexa_ordered = 1 and binary_cancel_time = 1 and category = "Toys and Games" ;

-- Toys and Games products that were returned

SELECT COUNT(order_id) as "Returned Toys and Games"
FROM alexa_data
WHERE is_alexa_ordered = 1 and binary_return = 1 and category = "Toys and Games" ;

-- Product purchase date/time and cancellation time

SELECT order_date as "Order Date", order_hour_of_day as "Order Hour", cancel_time_stamp as "Cancellation Time"
FROM alexa_data
WHERE is_alexa_ordered = 1 and binary_cancel_time = 1 and category = "Toys and Games";

