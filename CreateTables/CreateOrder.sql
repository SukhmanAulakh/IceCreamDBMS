-- Create Order Table
CREATE TABLE Orders (
    Order_ID NUMBER(15,0) PRIMARY KEY,
    Order_Address VARCHAR2(100) NOT NULL,
    Order_Date DATE,
    Order_Price NUMBER(10,2) NOT NULL,
    Order_Status NUMBER(10,0) NOT NULL,
    Customer_ID NUMBER(15,0) NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);