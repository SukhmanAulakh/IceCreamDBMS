-- Create Table to link specific product to general order
CREATE TABLE Supplier_Inventory (
    Supplier_ID NUMBER(15,0),
    Inventory_ID NUMBER(15,0),
    Quantity NUMBER(15,0),
    Price NUMBER(10,2),
    PRIMARY KEY (Supplier_ID, Inventory_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID),
    FOREIGN KEY (Inventory_ID) REFERENCES Inventory(Inventory_ID)
);