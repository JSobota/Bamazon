CREATE DATABASE Bamazon;

USE bamazon;

CREATE TABLE Products (
ItemID int NOT NULL,
ProductName varchar(50) NOT NULL,
DepartmentName varchar(50) NOT NULL,
Price DECIMAL(4,2) NOT NULL,
StockQuantity int NOT NULL);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
12345,
'Astro A40 TR Headset',
'Computers',
149.99,
25);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
67891,
'Mens Zip-up Hoodie',
'Mens Clothing',
29.99,
25);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
23456,
'Blue Yeti Microphone',
'Computers',
89.99,
10);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
78912,
'Deadpool Pop Vinyl Figure',
'Toys',
11.99,
8);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
34567,
'RC Arial Drone',
'Toys',
59.99,
30);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
89123,
'Mens Light V-Neck',
'Mens Clothing',
25.99,
8);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
45678,
'Mens Knit Beanie - Blue',
'Mens Clothing',
21.99,
15);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
91234,
'Backlit 65 OLCD Samsung TV 4k',
'Electronics',
2449.99,
10);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
56789,
'NZXT Hue + Advance PC lighting',
'Electronics',
25.99,
10);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
11234,
'Dark Souls III',
'Gaming',
59.99,
5);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
11234,
'Daredevil Born Again',
'Books',
19.99,
5);

USE bamazon;
CREATE TABLE Departments(
DepartmentId int AUTO_INCREMENT,
PRIMARY KEY(DepartmentId),
DepartmentName varchar(50) NOT NULL,
OverHeadCosts DECIMAL(11,2) NOT NULL,
TotalSales DECIMAL(11,2) NOT NULL);


INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Mens Clothing',
10000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Electronics',
10000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Toys',
20000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Gaming',
15000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Computers',
50000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Books',
25000,
0);


SHOW TABLES;
CREATE VIEW bamazon.TotalProfits AS SELECT DepartmentId, DepartmentName, OverHeadCosts, TotalSales, TotalSales-OverHeadCosts AS TotalProfit FROM Departments;
