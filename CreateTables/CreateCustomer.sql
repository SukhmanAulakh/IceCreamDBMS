--Create Customer Table
CREATE TABLE Customer (
    Cust_ID INTEGER PRIMARY KEY,
    CustName VARCHAR2(25) NOT NULL,
    CustAddress VARCHAR2(100) NOT NULL,
    CustEmail VARCHAR2(30),
    CustPhone VARCHAR2(20)
);