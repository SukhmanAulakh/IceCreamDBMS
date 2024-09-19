-- Create Product Table
CREATE TABLE Product (
    Product_ID INTEGER PRIMARY KEY,
    Product_Name VARCHAR2(100),
    Price NUMBER(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);