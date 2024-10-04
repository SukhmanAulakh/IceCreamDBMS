/* 
    Create a view that Joins the Customers with the orders using the customer_orders relation table and then join the products with the order using the order_products relation table
    and then join the products and ingredients needed to create it using the prodcut_inventory relation table,
    Display the Customer Name, Num of Orders Placed, Num of total Types of Products Purchased, Num Of Ingredients Used
*/
CREATE VIEW Customer_Loyalty_Totals AS
SELECT Customer.Customer_Name, Count(DISTINCT Orders.Order_ID) AS Orders_Placed,Count(DISTINCT Order_Product.Product_ID) AS Total_Types_Product_Purchased,  Count(Product_Inventory.Product_ID) As Total_Ingredients_Used
FROM Customer
LEFT JOIN Orders ON Customer.Customer_ID = Orders.Customer_ID
LEFT JOIN Order_Product ON Orders.Order_ID = Order_Product.Order_ID
LEFT JOIN Product ON Order_Product.Product_ID = Product.Product_ID
LEFT JOIN Product_Inventory ON Product.Product_ID = Product_Inventory.Product_ID
LEFT JOIN Inventory ON Product_Inventory.Inventory_ID = Inventory.Inventory_ID
GROUP BY Customer.Customer_Name;