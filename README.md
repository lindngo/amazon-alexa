# Amazon Shopping Data

## Overview
For this project, I used SQL to analyze a demo dataset, created for the product management course I was enrolled in. This dataset contained Alexa Voice shopping data, and I wanted to draw insights on what category of products are typically bought on Amazon, what type of products households buy, and more.

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
- binary_return: 1 if order was returned; 0 if not returned
- binary_cancel_time: 1 if order was cancelled; 0 if not 

## Conclusion
When analyzing the Alexa ordering data, I found that the top product categories were the following: 


I expected the first three categories to be common orders over Alexa, because Alexa provides purchasing convenience for products needed frequently. For example, if a can opener breaks, the customer can easily say, “Hey Alexa, add a can opener to my shopping cart” and Alexa would understand without needing to more detail.

However, I thought it was strange that toys and games were on this list. This is because to purchase toys and games, the customer must know specifically what product they want to tell Alexa to add to cart. For instance, a customer can't tell Alexa "to add a Nintendo Switch game to my cart" because there are hundreds of Nintendo Switch games. As a result, the customer must know the specifics of this purchase, like by saying "Alexa, add the Nintendo Switch Mario Party 8 game to my cart". This led to us thinking that children are ordering toys and games over Alexa without the parents knowing. 

When analyzing the data, we saw that the households that buy toys and games often buy more than just one toy. This indicates that there must be more than one child in the household, or that there is one child who really loves toys. 

Looking at the cancelled orders, we noticed that the time of order was outside of school hours, specifically during the evening. This further supports our idea that children are ordering these toys and games. The cancellation of orders primarily occurs during the evening, which further supports our hypothesis that children are the ones placing these orders. However, it's also possible that parents, who may have been busy during the day, review their email in the evening and discover an incorrect or mistaken order made by their child or someone else in their household. 

We hypothesize that children are ordering toys and games without parent permission. We analyzed the returned divided by cancellation rate and saw that this was an oddly small number. Diving deeper, we found that out of the 906 toys and games purchased over Alexa, 759 were cancelled, whereas 84 were returned. We believe that once the parents reviewed their order history/received an email confirmation of the purchase, they would realize that there were non-approved purchases. As a result, they would cancel those orders before they are shipped. 

We hypothesize that children order toys and games most frequently in January because after returning to school, they see/hear what their peers have gotten, and they also want those toys. Because these purchases are not approved, the parents would cancel the order when they realized what happened. We can see this in the data because most of the cancelled toys and games occur in January, which is after the holiday season.  



Solutions:
- Amazon confirm feature before purchasing
- Voice recgonition
- Giving password verbally
- 
