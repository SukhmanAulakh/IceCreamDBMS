-- View that Join Orders Table With The Customer
CREATE VIEW Customer_Order_Details AS
Select Customer.Customer_ID,Customer_Name, Count(*) AS NUMBER_OF_ORDERS,Max(Payment.Payment_Amount) AS Highest_Purchase 
FROM Customer 
LEFT JOIN Orders ON Customer.Customer_ID = Orders.Customer_ID
LEFT JOIN Payment ON Payment.Order_ID = Orders.Order_ID
GROUP BY Customer.Customer_ID,Customer.Customer_Name;