-- Create Order Table
CREATE TABLE Order (
    Order_ID INTEGER PRIMARY KEY,
    OrderDate DATE,
    Amount NUMBER(10, 2),
    Customer_ID INTEGER,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);