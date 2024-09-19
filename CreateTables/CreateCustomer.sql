--Create Customer Table
CREATE TABLE Customer (
    Cust_ID INTEGER PRIMARY KEY,
    Cust_Name VARCHAR2(25) NOT NULL,
    Cust_Address VARCHAR2(100) NOT NULL,
    Cust_Email VARCHAR2(30),
    Cust_Phone VARCHAR2(20)
);