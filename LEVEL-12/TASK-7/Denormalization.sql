DROP TABLE IF EXISTS Sales_Report, Order_Detail, Order1, Product1, Customer1;
CREATE TABLE Customer1 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);
INSERT INTO Customer1 VALUES
(1, 'Alice'),
(2, 'Bob');
CREATE TABLE Product1 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);
INSERT INTO Product1 VALUES
(1, 'Laptop', 1000),
(2, 'Mouse', 20),
(3, 'Keyboard', 50);
CREATE TABLE Order1 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer1(customer_id)
);
INSERT INTO Order1 VALUES
(101, 1, '2023-01-01'),
(102, 2, '2023-01-02');
CREATE TABLE Order_Detail (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Order1(order_id),
    FOREIGN KEY (product_id) REFERENCES Product1(product_id)
);
INSERT INTO Order_Detail VALUES
(101, 1, 2),  
(101, 2, 3),  
(102, 3, 1); 

CREATE VIEW Sales_Report AS
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    p.product_name,
    od.quantity,
    p.price,
    od.quantity * p.price AS total_price
FROM Order1 o
JOIN Customer1 c ON o.customer_id = c.customer_id
JOIN Order_Detail od ON o.order_id = od.order_id
JOIN Product1 p ON od.product_id = p.product_id;
SELECT * FROM Sales_Report;
