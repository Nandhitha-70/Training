CREATE DATABASE BankingDB;
GO
USE BankingDB;
GO
CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name NVARCHAR(100),
    location NVARCHAR(100)
);
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name NVARCHAR(100),
    branch_id INT FOREIGN KEY REFERENCES Branch(branch_id)
);
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(100),
    address NVARCHAR(255)
);
CREATE TABLE Account (
    account_id INT PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES Customer(customer_id),
    branch_id INT FOREIGN KEY REFERENCES Branch(branch_id),
    balance DECIMAL(15, 2)
);
CREATE TABLE Loan (
    loan_id INT PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES Customer(customer_id),
    branch_id INT FOREIGN KEY REFERENCES Branch(branch_id),
    amount DECIMAL(15, 2)
);
