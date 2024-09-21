-- Create Table to link specific product to general order
CREATE TABLE Supplier_Inventory (
    Supplier_ID INTEGER,
    Inventory_ID INTEGER,
    Quantity INTEGER,
    PRIMARY KEY (Supplier_ID, Inventory_ID)
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID),
    FOREIGN KEY (Inventory_ID) REFERENCES Inventory(Inventory_ID)
);