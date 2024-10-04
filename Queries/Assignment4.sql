-- Get the total number of contractors
SELECT COUNT(*) FROM Contractor Order by Contractor_ID;

-- Select Contractor where the contact person is named Jack Apple and their phone number is +1-541-452-2398
SELECT * FROM Contractor WHERE Contact_Person = 'Jack Apple' AND Contractor_Phone = '+1-541-452-2398';

-- List all contractors alphabetically
SELECT * FROM Contractor ORDER BY Contractor_Name;

-- List all contractors that have an email
SELECT Contractor_Name, Contractor_Email FROM Contractor WHERE Contractor_Email IS NOT NULL;

-- Select Customer with ID = 1 and Name as Sarah C
SELECT DISTINCT * FROM Customer WHERE Customer_ID = '1' AND Customer_Name='Sarah C';

-- Find all customer names and their addresses
SELECT Customer_Name, Customer_Address FROM Customer;

-- Select Customer with Name of Deshawn Jackson and lives on 9 Grove Street
SELECT * FROM Customer WHERE Customer_Name = 'Dashawn Jackson' AND Customer_Address = '9 Grove Street';

-- List all customer by names alphabetically
SELECT DISTINCT * FROM Customer ORDER BY Customer_Name;

-- Find all customer names with a phone number
SELECT Customer_Name, Customer_Phone FROM Customer WHERE Customer_Phone IS NOT NULL;

-- List all of the inventory items and their types
SELECT Inventory_Name, Inventory_Type FROM Inventory;

-- List all machines that are ordered by the machine type and age and placed into groups
SELECT Machine_Name,Machine_Type,Machine_Age FROM Machine GROUP BY Machine_Name,Machine_Type,Machine_age ORDER BY Machine_Type,Machine_age;

-- List all machines that are production type
SELECT Machine_name FROM Machine WHERE Machine_Type = 'Production';

-- Find orders and all their information that are going to 151 basic circle
SELECT * FROM Orders WHERE Order_Address = '151 Basic Circle';

-- List all payments ID's done in 2023 and their payment method
SELECT Payment_ID, Payment_Date, Payment_Method FROM Payment WHERE Payment_Date >= '2023/01/01' AND Payment_date < '2024/01/01';

-- Find a product with the id of 102
SELECT * FROM Product WHERE Product_ID = '102';

-- Find all supplier names with an email and phone number
SELECT Supplier_Name, Supplier_Email, Supplier_Phone FROM SUPPLIER WHERE Supplier_Email IS NOT NULL AND Supplier_Phone IS NOT NULL;

--Select all Employees From Inventory Department
SELECT Department_ID, COUNT(*) FROM DEPARTMENT_EMPLOYEE Group By Department_ID;

--Select all ingredients of product (Vanilla Ice Cream) and order alphabetically
SELECT ALL Inventory_Name FROM Inventory WHERE Inventory_ID IN (SELECT Inventory_ID FROM Product_Inventory WHERE Product_ID = (Select Product_ID FROM Product WHERE Product_Name = 'Vanilla Ice Cream')) ORDER BY Inventory_Name;

--Select all Orders From Customer(Sarah)
SELECT * FROM Orders WHERE Customer_ID=1;

--Select how much strawberry ice cream was ordered by dashawn on 2010/02/26
SELECT Quantity FROM ORDER_PRODUCT WHERE ORDER_ID=(SELECT ORDER_ID FROM ORDERS WHERE ORDER_DATE = '2010/02/26' and CUSTOMER_ID=2)and Product_ID='102';

-- Find all the inventory id being supplied by Supplier TastyChen Co.
SELECT ALL Inventory_Name FROM Inventory WHERE Inventory_ID IN (SELECT Inventory_ID FROM Supplier_Inventory WHERE Supplier_ID = (Select Supplier_ID FROM Supplier WHERE Supplier_Name = 'TastyChem Co.'));

-- Call View that Displays the Customer Name, Num of Orders Placed, Num of total Types of Products Purchased, Num Of Ingredients Used
Select * FROM Customer_Loyalty_Totals;

-- Call View that Displays all payments performed
SELECT * FROM Payment_All;

-- Call View that Join Orders Table With The Customer
SELECT * FROM Customer_Order_Details;