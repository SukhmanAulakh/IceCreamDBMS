-- Create Table to link specific product to general order
CREATE TABLE Order_Product (
    Order_ID INTEGER,
    Product_ID INTEGER,
    Quantity INTEGER,
    PRIMARY KEY (Order_ID, Product_ID),
    FOREIGN KEY (Order_ID) REFERENCES Order(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);