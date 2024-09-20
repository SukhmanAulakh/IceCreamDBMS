--Create Payment Table
CREATE TABLE Payment (
    Payment_ID INTEGER PRIMARY KEY,
    Amount NUMBER(10,2),
    Method VARCHAR2(25),
    Payment_Date DATE,
    FOREIGN KEY(Order_ID) REFERENCES Order(Order_ID),
    FOREIGN KEY(Supplier_ID) REFERENCES Supplier(Supplier_ID),
);