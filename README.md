# Amazon Alexa Shopping Data

## Overview
For this project, I used SQL to analyze a demo dataset, used as part of the product management course I was enrolled in. This dataset contains Amazon Alexa shopping data, and I wanted to draw insights on what category of products are typically bought on Alexa, number of products purchased, cancellation and return rates, and more.

## Dataset

https://github.com/lindngo/amazon-shopping/blob/main/alexa-data.csv

## Dataset Factors
- order_id: Unique identifier of an order
- customer_id: Unique identifier of the customer
- product_id: Unique identifer of the product
- category: Type of product purchased
- is_alexa_ordered: 1 if ordered through Alexa; 0 if not 
- order_time_stamp: Time of purchase
- order_date: Date of purchase
- order_hour_of_day: Hour of purchase
- cancel_hour_of_day: Hour of cancellation
- return_date: Date of return
- cancel_time_stamp: Time of cancellation
- binary_cancel_hour: 1 if order was cancelled; 0 if not 
- binary_return: 1 if order was returned; 0 if not
- binary_cancel_time: 1 if order was cancelled; 0 if not 

## Conclusion
When analyzing the Alexa ordering data, I found that the top product categories were the following: 

![image](https://github.com/lindngo/amazon-alexa/assets/63205351/348ccc7a-9561-474f-bb04-53381bc3fe2f)

I expected home and kitchen, grocery and gourmet food, and baby products to be common orders, because Alexa provides purchasing convenience for products needed frequently. For example, if a can opener breaks, the customer can easily say, “Hey Alexa, add a can opener to my shopping cart” and Alexa would understand without needing more detail.

However, I thought it was strange that toys and games were on this list. This is because in order to purchase toys and games, the customer must know what specific product they want to tell Alexa to add to cart. For instance, a customer can't tell Alexa "to add a Nintendo Switch game to my cart" because there are hundreds of Nintendo Switch games. As a result, the customer must know the specifics of this purchase, like by saying "Alexa, add the Nintendo Switch Mario Party 8 game to my cart". This led to me to hypothesize that children are ordering toys and games over Alexa. 

Next, I calculated the cancellation and return rates for each product category.

![image](https://github.com/lindngo/amazon-alexa/assets/63205351/89ab489a-bc64-4a2c-b57e-61cac778dba4)

![image](https://github.com/lindngo/amazon-alexa/assets/63205351/75a1b83c-7332-4212-aadd-0f94c9d797d1)

As we can see from the tables above, the toys and games category ranks highest in cancellation rate (29.78%) but has a low return rate (3.30%) compared to the other categories. Another element of consideration to my hypothesis is that these children are ordering without the consent of their parents. The parents would review their email later to discover an unapproved order made by their child or someone else in their household. At this moment, they would cancel before the product has been shipped.

Looking at the cancelled orders, I noticed that the time of order was outside of school hours, specifically during the evening. This further supports my hypothesis that children are the ones placing these orders, as they are home at this time and have access to Alexa.

![image](https://github.com/lindngo/amazon-alexa/assets/63205351/11c17cb3-6138-4b92-88ec-3e123461b1c1)

Furthermore, I hypothesize that children order toys and games most frequently in January because after returning to school, they see/hear what their peers have gotten, and they also want those toys. I can see this in the data because most of the cancelled toys and games occur in January, which is after the holiday season.  

To solve these challenges, it would be beneficial for Amazon Alexa to consider the following solutions:

- Implement a two-step confirmation feature that prompts the user to approve of the purchase via mobile app or website.
- Incorporate voice recognition in Alexa, so it can detect authorized users and allow them to purchase items.
- Allow users to provide a verbal password or passphrase to confirm purchase order.
