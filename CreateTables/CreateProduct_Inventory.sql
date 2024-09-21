-- Create Table to link specific product to the inventory elements required to create it
CREATE TABLE Product_Inventory (
    Inventory_ID INTEGER,
    Product_ID INTEGER,
    Amount NUMBER(10,4),
    PRIMARY KEY (Inventory_ID, Product_ID)
    FOREIGN KEY (Inventory_ID) REFERENCES Inventory(Inventory_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);