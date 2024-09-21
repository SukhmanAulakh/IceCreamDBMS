--Create Payment Table
CREATE TABLE Payment (
    Payment_ID INTEGER PRIMARY KEY,
    Payment_Amount NUMBER(10,2),
    Payment_Method VARCHAR2(25),
    Payment_Date DATE,
    Order_ID INTEGER,
    Supplier_ID INTEGER,
    FOREIGN KEY(Order_ID) REFERENCES Order(Order_ID),
    FOREIGN KEY(Supplier_ID) REFERENCES Supplier(Supplier_ID)
);