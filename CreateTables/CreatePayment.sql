--Create Payment Table
CREATE TABLE Payment (
    Payment_ID NUMBER(15,0) PRIMARY KEY,
    Payment_Amount NUMBER(10,2),
    Payment_Method VARCHAR2(25),
    Payment_Date DATE,
    Order_ID NUMBER(15,0),
    Supplier_ID NUMBER(15,0),
    FOREIGN KEY(Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY(Supplier_ID) REFERENCES Supplier(Supplier_ID)
);