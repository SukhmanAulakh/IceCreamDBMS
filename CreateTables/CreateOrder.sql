-- Create Order Table
CREATE TABLE Order (
    Order_ID INTEGER PRIMARY KEY,
    Order_Address VARCHAR2(100) NOT NULL,
    Order_Date DATE,
    Order_Price NUMBER(10,2) NOT NULL,
    Order_Status INTEGER NOT NULL,
    Customer_ID INTEGER NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);