--Create Customer Table
CREATE TABLE Customer (
    Customer_ID NUMBER(15,0) PRIMARY KEY,
    Customer_Name VARCHAR2(25) NOT NULL,
    Customer_Address VARCHAR2(100) NOT NULL,
    Customer_Email VARCHAR2(30),
    Customer_Phone VARCHAR2(20)
);