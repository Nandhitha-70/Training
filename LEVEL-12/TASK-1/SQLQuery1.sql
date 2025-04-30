CREATE TABLE Orders_1NF (
    order_id INT,
    product_id VARCHAR(10),
    quantity INT,
    PRIMARY KEY (order_id, product_id)
);

INSERT INTO Orders_1NF (order_id, product_id, quantity) VALUES
(101, 'P1', 2),
(101, 'P2', 1),
(102, 'P1', 3),
(103, 'P3', 5),
(104, 'P2', 4),
(104, 'P4', 2);

SELECT * FROM Orders_1NF;
