-- Create a view that Joins Payment Table with Orders and Supplier Table To Display All Payments Performed after 2005
CREATE VIEW Payment_All AS
SELECT Payment.Payment_ID,Payment.Payment_Amount,Payment.Payment_Method,Payment.Payment_Date,Orders.Order_ID,Supplier.Supplier_ID,Supplier.Supplier_Name FROM Payment 
LEFT JOIN ORDERS ON Payment.Order_ID = Orders.Order_ID  
LEFT JOIN SUPPLIER ON Payment.Supplier_ID = Supplier.Supplier_ID 
WHERE EXTRACT(YEAR FROM Payment.Payment_Date) > 2005
ORDER BY Payment.Payment_Amount DESC;