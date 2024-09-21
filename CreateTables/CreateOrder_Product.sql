-- Create Table to link specific product to general order
CREATE TABLE Order_Product (
    Order_ID NUMBER(15,0),
    Product_ID NUMBER(15,0),
    Quantity NUMBER(10,0),
    PRIMARY KEY (Order_ID, Product_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);