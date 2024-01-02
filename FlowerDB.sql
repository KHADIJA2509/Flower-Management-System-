create database Flower_Shop;
use Flower_Shop;

CREATE TABLE Employee_ (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    BirthDate DATE,
    PhoneNumber BIGINT,
    Email VARCHAR(50),
    Address VARCHAR(255),
    JobTitle VARCHAR(50),
    Salary DECIMAL(10, 2)
);

CREATE TABLE OrderTable_ (
    OrderID INT PRIMARY KEY,
    OrderType VARCHAR(50),
    OrderDate DATE,
    OrderTime TIME,
    PaymentStatus VARCHAR(20),
    Status VARCHAR(20),
    Amount DECIMAL(10, 2),
    Notes TEXT
);

CREATE TABLE Billing_ (
    BillID INT PRIMARY KEY,
    BillType VARCHAR(50),
    BillingDate DATE,
    Time TIME,
    Amount DECIMAL(10, 2)
);

CREATE TABLE Complain_ (
    ComplaintID INT PRIMARY KEY,
    ComplainTitle VARCHAR(255),
    Description TEXT,
    ComplainDate DATE,
    ComplainTime TIME
);

create table Customer_ (
	CustomerID Int primary key,
	FirstName Varchar(50),
	LastName Varchar(50),
	Address Varchar(50),
	Gender Varchar(50),
	Email Varchar(50),
	Age Int,
	PhoneNumber BIGINT,
	DeliverdOrder Int,
	CanceledOrders Int
);

CREATE TABLE Company_ (
	CompanyID Int primary key,
	Name Varchar(50),
	About Varchar(50),
	Email Varchar(50),
	Address Varchar(50),
	PhoneNumber BIGINT
);


CREATE TABLE Items_ (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(50),
    Type VARCHAR(50),
	price Int,
	Qunatity Int,
	Description Text
);

CREATE TABLE Flowers_ (
    FreshFlowers Varchar(50),
    ArtificialFlowers Varchar(50),
    ItemID INT,
    FOREIGN KEY (ItemID) REFERENCES Items_(ItemID)
);


CREATE TABLE Gifts_ (
    ItemID INT,
    FOREIGN KEY (ItemID) REFERENCES Items_(ItemID)
);

CREATE TABLE DecorativeAccessories_ (
    ItemID INT,
    FOREIGN KEY (ItemID) REFERENCES Items_(ItemID)
);

CREATE TABLE Stuff_ (
    StuffID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
	Address Varchar(50),
	Gender Varchar(50),
	Email Varchar(50),
	JobTitle Varchar(50),
	Age Int,
	Salary Int,
	PhoneNumber bigint
);


Create table Owner_(
	OwnerID Int Primary Key,
	FOREIGN KEY (OwnerID) REFERENCES Stuff_(StuffID)
);

Create table Delivery_(
	DeliveryID Int Primary Key,
	DeliveredOrders int,
	UndeeliveredOrders int,
	FOREIGN KEY (DeliveryID) REFERENCES Stuff_(StuffID)
);

CREATE TABLE Cashier_ (
    CashierID INT PRIMARY KEY,
    FOREIGN KEY (CashierID) REFERENCES Stuff_(StuffID)  
);

Create table Manager_(
	MangerID Int Primary Key,
	FOREIGN KEY (MangerID) REFERENCES Stuff_(StuffID)
);


Create table Salesman_(
	SalesmanID Int Primary Key,
	Target Float,
	FOREIGN KEY (SalesmanID) REFERENCES Stuff_(StuffID)
);



INSERT INTO OrderTable_ (OrderID, OrderType, OrderDate, OrderTime, PaymentStatus, Status, Amount, Notes)
VALUES
    (2128, 'Online', '2023-11-01', '15:30:00', 'Paid', 'Shipped', 150.00, 'Standard delivery'),
    (2123, 'In-Person', '2023-11-02', '09:45:00', 'Pending', 'Processing', 75.50, 'Customer at counter'),
    (6545, 'Phone', '2023-11-03', '12:15:00', 'Paid', 'Delivered', 200.00, 'Express delivery'),
    (4356, 'Online', '2023-11-04', '18:00:00', 'Pending', 'Processing', 120.75, 'Special instructions: Fragile items'),
    (3435, 'In-Person', '2023-11-05', '14:20:00', 'Paid', 'Shipped', 90.25, 'Gift wrapping requested');


INSERT INTO Billing_ (BillID, BillType, BillingDate, Time, Amount)
VALUES
    (7566, 'Online Payment', '2023-11-01', '15:30:00', 150.00),
    (5467, 'Credit Card', '2023-11-02', '09:45:00', 75.50),
    (5678, 'Debit Card', '2023-11-03', '12:15:00', 200.00),
    (8776, 'Bank Transfer', '2023-11-04', '18:00:00', 120.75),
    (5670, 'Cash On Delivery', '2023-11-05', '14:20:00', 90.25);


INSERT INTO Complain_ (ComplaintID, ComplainTitle, Description, ComplainDate, ComplainTime)
VALUES
    (6574, 'Late Delivery', 'The order was delivered two days later than expected.', '2023-11-01', '10:15:00'),
    (9757, 'Product Quality Issue', 'Received damaged items in the order.', '2023-11-02', '14:30:00'),
    (3535, 'Billing Discrepancy', 'Incorrect charges on the bill, need clarification.', '2023-11-03', '16:45:00'),
    (6594, 'Customer Service Concern', 'Unsatisfactory response from customer support.', '2023-11-04', '11:20:00'),
    (7565, 'Website Technical Issue', 'Encountered errors while placing an online order.', '2023-11-05', '09:00:00');


INSERT INTO Customer_ (CustomerID, FirstName, LastName, Address, Gender, Email, Age, PhoneNumber, DeliverdOrder, CanceledOrders)
VALUES
    (5464, 'John', 'Doe', '123 Main St', 'Male', 'john.doe@email.com', 28, 123456789, 10, 2),
    (5434, 'Alice', 'Smith', '456 Oak Ave', 'Female', 'alice.smith@email.com', 35, 987654321, 15, 1),
    (2425, 'Bob', 'Johnson', '789 Pine Ln', 'Male', 'bob.johnson@email.com', 42, 111223344, 8, 3),
    (7546, 'Emma', 'Williams', '101 Elm Blvd', 'Female', 'emma.williams@email.com', 29, 555666777, 12, 0),
    (7678, 'Michael', 'Brown', '202 Cedar Rd', 'Male', 'michael.brown@email.com', 25, 999888777, 18, 5);



INSERT INTO Company_ (CompanyID, Name, About, Email, Address, PhoneNumber)
VALUES
    (4646, 'ABC Corp', 'Providing Quality Products', 'info@abccorp.com', '123 Market St', 111222333),
    (6453, 'XYZ Ltd', 'Innovative Solutions for Businesses', 'info@xyzltd.com', '456 Tech Ave', 444555666),
    (4653, 'GreenTech', 'Environmentally Friendly Services', 'info@greentech.com', '789 Eco Lane', 777888999),
    (9787, 'Swift Logistics', 'Efficient Transportation Solutions', 'info@swiftlogistics.com', '101 Speedy Rd', 123456789),
    (4545, 'HealthWell Clinic', 'Caring for Your Wellbeing', 'info@healthwell.com', '202 Wellness Blvd', 987654321);


INSERT INTO Items_ (ItemID, ItemName, Type, Price, Qunatity, Description)
VALUES
    (4543, 'Laptop', 'Electronics', 800, 10, 'High-performance laptop with advanced features.'),
    (3433, 'Desk Chair', 'Furniture', 150, 20, 'Ergonomic chair for comfortable seating during work.'),
    (2323, 'Wireless Mouse', 'Electronics', 30, 50, 'Optical wireless mouse with responsive tracking.'),
    (7676, 'Coffee Table', 'Furniture', 120, 15, 'Stylish coffee table for living room decor.'),
    (3456, 'Smartphone', 'Electronics', 600, 30, 'Latest smartphone with cutting-edge technology.');



INSERT INTO Flowers_ (FreshFlowers, ArtificialFlowers, ItemID)
VALUES
    ('Rose Bouquet', 'Silk Sunflowers', 4543),  
    ('Tulip Arrangement', 'Paper Roses', 3433),  
    ('Orchid Display', 'Fabric Daisies', 2323),  
    ('Carnation Bouquet', 'Plastic Lilies', 7676),  
    ('Daisy Basket', 'Wooden Roses', 3456);  



INSERT INTO Gifts_ (ItemID)
VALUES
    (4543),  
    (3433),  
    (2323), 
    (7676),  
    (3456);  



INSERT INTO DecorativeAccessories_ (ItemID)
VALUES
    (4543),  
    (3433),  
    (2323),  
    (7676),  
    (3456);  


INSERT INTO Stuff_ (StuffID, FirstName, LastName, Address, Gender, Email, JobTitle, Age, Salary, PhoneNumber)
VALUES (1, 'John', 'Doe', '123 Main St', 'Male', 'john.doe@example.com', 'Software Developer', 30, 75000, 1234567890),
	(2, 'Jane', 'Smith', '456 Oak St', 'Female', 'jane.smith@example.com', 'Data Analyst', 28, 60000, 9876543210),
	(3, 'Bob', 'Johnson', '789 Pine St', 'Male', 'bob.johnson@example.com', 'Project Manager', 35, 90000, 5555555555),
	(4, 'Emily', 'Williams', '101 Elm St', 'Female', 'emily.williams@example.com', 'Database Administrator', 32, 80000, 4444444444),
	(5, 'Chris', 'Brown', '222 Birch St', 'Male', 'chris.brown@example.com', 'UI/UX Designer', 26, 70000, 6666666666),
    (6, 'Sarah', 'Jones', '789 Maple St', 'Female', 'sarah.jones@example.com', 'Software Engineer', 29, 80000, 1111111111),
    (7, 'Michael', 'Miller', '456 Pine St', 'Male', 'michael.miller@example.com', 'Business Analyst', 31, 65000, 2222222222),
    (8, 'Amanda', 'Anderson', '789 Oak St', 'Female', 'amanda.anderson@example.com', 'Marketing Specialist', 27, 70000, 3333333333),
    (9, 'David', 'Davis', '101 Cedar St', 'Male', 'david.davis@example.com', 'System Administrator', 34, 85000, 4444444444),
    (10, 'Emma', 'Evans', '222 Elm St', 'Female', 'emma.evans@example.com', 'Graphic Designer', 25, 60000, 5555555555),
    (11, 'James', 'Jackson', '333 Birch St', 'Male', 'james.jackson@example.com', 'Product Manager', 33, 95000, 6666666666),
    (12, 'Olivia', 'Owens', '444 Pine St', 'Female', 'olivia.owens@example.com', 'Software Developer', 28, 75000, 7777777777),
    (13, 'William', 'Wilson', '555 Oak St', 'Male', 'william.wilson@example.com', 'Data Scientist', 30, 90000, 8888888888),
    (14, 'Sophia', 'Smith', '666 Elm St', 'Female', 'sophia.smith@example.com', 'UI/UX Designer', 26, 70000, 9999999999),
    (15, 'Daniel', 'Davis', '777 Birch St', 'Male', 'daniel.davis@example.com', 'Database Administrator', 32, 80000, 1231231234),
    (16, 'Lily', 'Lewis', '888 Maple St', 'Female', 'lily.lewis@example.com', 'Software Engineer', 29, 85000, 9879879876),
    (17, 'Matthew', 'Miller', '999 Cedar St', 'Male', 'matthew.miller@example.com', 'Business Analyst', 31, 70000, 6546546543),
    (18, 'Chloe', 'Carter', '101 Oak St', 'Female', 'chloe.carter@example.com', 'Marketing Specialist', 27, 75000, 3213213210),
    (19, 'Ethan', 'Evans', '202 Elm St', 'Male', 'ethan.evans@example.com', 'Product Manager', 33, 95000, 1351351351),
    (20, 'Ava', 'Adams', '303 Pine St', 'Female', 'ava.adams@example.com', 'Software Developer', 28, 80000, 2462462462);

-- Insert data into Owner_ table
INSERT INTO Owner_ (OwnerID)
VALUES (1);

-- Insert data into Delivery_ table
INSERT INTO Delivery_ (DeliveryID, DeliveredOrders, UndeeliveredOrders)
VALUES (2, 30, 5), (3, 20, 2), (4, 40, 8), (5, 25, 3);

-- Insert data into Cashier_ table
INSERT INTO Cashier_ (CashierID)
VALUES (6), (7), (8), (9), (10);

-- Insert data into Manager_ table
INSERT INTO Manager_ (MangerID)
VALUES (11), (12), (13), (14), (15);

-- Insert data into Salesman_ table
INSERT INTO Salesman_ (SalesmanID, Target)
VALUES (16, 100000), (17, 80000), (18, 120000), (19, 90000), (20, 110000);

-- Select all rows from OrderTable_ table
SELECT * FROM OrderTable_;

-- Select all rows from Flowers_ table
SELECT * FROM Flowers_;

SELECT
    s.StuffID,
    s.FirstName,
    s.LastName,
    s.Address,
    s.Gender,
    s.Email,
    s.JobTitle,
    s.Age,
    s.Salary,
    s.PhoneNumber,
    o.OwnerID,
    d.DeliveryID,
    d.DeliveredOrders,
    d.UndeeliveredOrders,
    c.CashierID,
    m.MangerID,
    s2.SalesmanID,
    s2.Target
FROM
    Stuff_ s
LEFT JOIN Owner_ o ON s.StuffID = o.OwnerID
LEFT JOIN Delivery_ d ON s.StuffID = d.DeliveryID
LEFT JOIN Cashier_ c ON s.StuffID = c.CashierID
LEFT JOIN Manager_ m ON s.StuffID = m.MangerID
LEFT JOIN Salesman_ s2 ON s.StuffID = s2.SalesmanID;

CREATE VIEW SalaryAndStaff_Name AS
SELECT StuffID, FirstName, LastName, Salary, JobTitle
FROM Stuff_;
SELECT * FROM SalaryAndStaff_Name;

UPDATE OrderTable_
SET Status = 'Shipped'
WHERE OrderID = 2123;

DELETE FROM Customer_
WHERE CustomerID = 5464;

-- Combine the Flower names from FreshFlowers and ArtificialFlowers in Flowers_ table
SELECT FreshFlowers AS FlowerName FROM Flowers_
UNION
SELECT ArtificialFlowers AS FlowerName FROM Flowers_;