--Create Supplier Table
CREATE TABLE Supplier (
    Supplier_ID NUMBER(15,0) PRIMARY KEY,
    Supplier_Address VARCHAR2(50) NOT NULL,
    Supplier_Name VARCHAR2(25) NOT NULL,
    Supplier_Email VARCHAR2(30),
    Supplier_Phone VARCHAR2(20)
);