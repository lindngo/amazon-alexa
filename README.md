# Amazon Shopping Data

## Overview
For this project, I used SQL to analyze a demo dataset, created for the product management course I was enrolled in. This dataset contained Amazon Alexa shopping data, and I wanted to draw insights on what category of products are typically bought on Alexa, the number of products purchased, the cancellation and return rates, and more.

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

![image](https://github.com/lindngo/amazon-shopping/assets/63205351/9fefb4b6-12c8-4680-b1b6-cdb123c21dca)

I expected Home and Kitchen, Grocery and Gourmet Food, and Baby products to be common orders over Alexa, because Alexa provides purchasing convenience for products needed frequently. For example, if a can opener breaks, the customer can easily say, “Hey Alexa, add a can opener to my shopping cart” and Alexa would understand without needing to more detail.

However, I thought it was strange that Toys and Games were on this list. This is because to purchase toys and games, the customer must know specifically what product they want to tell Alexa to add to cart. For instance, a customer can't tell Alexa "to add a Nintendo Switch game to my cart" because there are hundreds of Nintendo Switch games. As a result, the customer must know the specifics of this purchase, like by saying "Alexa, add the Nintendo Switch Mario Party 8 game to my cart". This led to me to think that children are ordering toys and games over Alexa without their parents knowing. 

When analyzing the data, I saw that the households that buy toys and games often buy more than just one toy. This indicates that there must be more than one child in the household, or that there is one child who really loves toys. 

Looking at the cancelled orders, I noticed that the time of order was outside of school hours, specifically during the evening. 

![image](https://github.com/lindngo/amazon-shopping/assets/63205351/ef99b646-0a58-47a7-96cc-7752e70d3aca)

This further supports our idea that children are ordering these toys and games. The cancellation of orders primarily occurs during the evening, which further supports our hypothesis that children are the ones placing these orders. However, it's also possible that parents, who may have been busy during the day, review their email in the evening and discover an incorrect or mistaken order made by their child or someone else in their household. Lastly, I hypothesize that children order toys and games most frequently in January because after returning to school, they see/hear what their peers have gotten, and they also want those toys. I can see this in the data because most of the cancelled toys and games occur in January, which is after the holiday season.  

Diving deeper, I found that out of the 906 toys and games purchased over Alexa, 759 were cancelled, whereas 84 were returned. 

![image](https://github.com/lindngo/amazon-shopping/assets/63205351/dc3b9294-31a1-432e-b0ce-a5a0a933e6cc)

![image](https://github.com/lindngo/amazon-shopping/assets/63205351/c87f86b4-91a4-4a83-b007-1128d4af8401)

I believe that once the parents reviewed their order history/received an email confirmation of the purchase, they would realize that there were non-approved purchases. As a result, they would cancel those orders before they are shipped. 

To solve these challenges, it would be beneficial for Amazon Alexa to consider the following solutions:

- Implement a two-step confirmation feature that prompts the user to approve of the purchase via mobile app or website.
- Incorporate voice recognition in Alexa, so it can detect authorized users and allow them to purchase items.
- Allow users to provide a verbal password to confirm purchase order.
