--Create Supplier Table
CREATE TABLE Supplier (
    Supplier_ID INTEGER PRIMARY KEY,
    Supplier_Price NUMBER(10,2),
    Supplier_Address VARCHAR2(100) NOT NULL,
    Supplier_Name VARCHAR2(25) NOT NULL,
    Supplier_Email VARCHAR2(30),
    Supplier_Phone VARCHAR2(20),
);