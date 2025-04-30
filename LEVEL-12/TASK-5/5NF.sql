CREATE TABLE Product_Supplier (
    product_id VARCHAR(10),
    supplier_id VARCHAR(10),
    PRIMARY KEY (product_id, supplier_id)
);
INSERT INTO Product_Supplier VALUES
('P1', 'S1'),
('P2', 'S1'),
('P2', 'S2');
CREATE TABLE Supplier_Order (
    supplier_id VARCHAR(10),
    order_id VARCHAR(10),
    PRIMARY KEY (supplier_id, order_id)
);
INSERT INTO Supplier_Order VALUES
('S1', '101'),
('S2', '101');
CREATE TABLE Product_Order (
    product_id VARCHAR(10),
    order_id VARCHAR(10),
    PRIMARY KEY (product_id, order_id)
);
INSERT INTO Product_Order VALUES
('P1', '101'),
('P2', '101');

SELECT * FROM Product_Supplier;
SELECT * FROM Supplier_Order;
SELECT * FROM Product_Order;
