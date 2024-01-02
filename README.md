# FlowerShop Management SYSTEM
Database Systems


# Table of Contents

[1.Project description 1](#_Toc155127148)

[1.1System Modules 2](#_Toc155127149)

[1.2System Objectives 2](#_Toc155127150)

[2.Entity Relationship Diagram (ERD) 4](#_Toc155127151)

[2.1 System Modules and their attributes 4](#_Toc155127152)

[2.2 Relationships between entities 5](#_Toc155127153)

[3.Relational Database 7](#_Toc155127154)

[4. List of used tools 8](#_Toc155127155)

[5. SQL Codes 8](#_Toc155127156)

[5.1 Create Tables 8](#_Toc155127157)

[5.2 Inserts 12](#_Toc155127158)

[6. GUI 15](#_Toc155127159)

[6.1 Login Page 15](#_Toc155127160)

[6.2 Options of the system Page 15](#_Toc155127161)

[6.3 Add Company Page 16](#_Toc155127162)

[6.4 Add/Remove/Update/View Flowers Page 16](#_Toc155127163)

[6.5 Bills Page 17](#_Toc155127164)

[6.6 Salary Page 17](#_Toc155127165)

[6.7 Search/View customers Page 18](#_Toc155127166)

[6.8 Search/View Delivery Page 18](#_Toc155127167)

[6.9 Search/View Employees Page 19](#_Toc155127168)

[6.10 Complains Page 19](#_Toc155127169)

[6.11 Add Employee Page 20](#_Toc155127170)

[6.12 Add Customer Page 20](#_Toc155127171)

[7. Source Code 21](#_Toc155127172)

# 1. Project description

The Flower Shop Management System is designed to improve the way flower shops handle their operations. The system aims to adeptly manage the shop's items, staff, customer interactions, order processing, and billing. Through a centralized database, it incorporates various modules that facilitate the effective functioning of each business aspect, ensuring efficiency and customer satisfaction.

  1.
## System Modules

- Company Module: This module acts as the core for managing company-related data, such as managing shop details.
- Items Module: Centrally manages all inventory related to floral products and accessories.
- Staff Module: This module focuses on the management of employee data.
- Order Module: Manages the entire order lifecycle from placement to delivery.
- Customer Module: Holds all customer information and interaction history.
- Complain Module: Tracking of customer feedback.
- Billing Module: Handles the generation and management of financial transactions and receipts.

  1.
## System Objectives

- Efficiency Enhancement: streamline daily operations, reducing manual efforts in managing inventory, orders, and customer interactions.
- Data Accuracy: ensure accurate and up-to-date information regarding items, staff, customers, and orders.
- Complaint Resolution: provide a structured system for managing customer complaints, leading to quicker resolution and improved service.

1.
# Entity Relationship Diagram (ERD)

![ERD](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/c33158d3-b00a-490e-b797-43db0afedfd7)

## 2.1 System Modules and their attributes

- Entity: Company
  - Attributes: Name, Company ID (primary key), Information, Address, and Contact Number
- Entity: Items
  - Attributes: Item Name, Price, Quantity, Description, Item ID (primary key), and Type
- Entity: Staff
  - Attributes: Employee name, phone number, job title, address, salary, gender, age, and employee ID (primary key)
- Entity: Order
  - Attributes: Order ID (primary key), Type, Amount, Time, Date, Delivery Date, Notes, Status, and Payment Status
- Entity: Customer
  - Attributes: Customer ID (primary key), Name, Email, Phone Number, Gender, Birthdate, Address, Delivered Orders, and Canceled Orders
- Entity: Complain
  - Attributes: Complaint ID (primary key), Complaint Title, Date, Time, and Description
- Entity: Billing
  - Attributes: Billing Date (primary key), Time, Billing ID, Billing Type, and Amount

## 2.2 Relationships between entities

- Specialization of Items: Items are specialized into gifts, flowers, and accessories with partial overlap, understanding that one item can belong to multiple categories.
- Items to Company: A mandatory one-to-many relationship exists where one company offers multiple items.
- Items to Order "Offers": A many-to-many relationship exists, indicating that an order must contain many items, and many items can appear in many orders.
- Staff to Company "Have": There is a mandatory one-to-many relationship indicating a single company employs many staff members.
- Specialization of Staff: Disjoint total specialization relationship within the Staff entity, with subtypes: Salesman, Cashier, Delivery, Manager, Owner
- Cashier to Billing "Bill Process": A mandatory one-to-many relation signifying each billing is processed by one cashier, and one cashier can process multiple billings.
- Delivery to Order "Deliver": The one-to-one relationship between Order and Delivery indicates that each order can be delivered by one delivery staff, and one delivery staff can handle multiple orders.
- Manager to Company "Manage": A mandatory one-to-one relationship indicates that the Manager must have one company, and the company must have one manager.
- Associative Entity "Transaction": This associative entity represents the process that involves orders, customers, billing, and complaints.

- There is a one-to-one mandatory relationship between the transaction and each order, billing, and complaint, denoting that each transaction must include these entities.
- The relationship with the customer is many, suggesting that one customer can have multiple transactions.

# 3.Relational Database

![Schema](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/e67e201b-7a4e-4c0a-9ced-2d43c168ad1b)

# 4. List of used tools

- ERD plus
- MySQL Workbench
- WPF
- Smart Draw for UML

# 5. SQL Codes

## 5.1 Create Tables

![Create Tables 1](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/39586a9e-43af-448f-8e1b-3b441b28e582)

- Create "Order" table which includes Order ID integer as primary key, Order type varchar, Order date, order time, Payment status varchar, Status varchar, Amount decimal, and Notes text.

- Create "Billing" table which includes the Bill ID integer as primary key, Bill type varchar, Bill date, Time, and Amount decimal.
- Create "Complain" table which includes the Complaint ID integer as primary key, Complain title varchar, Description text, Complain date, Complain time.

![Create Tables 2](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/167c7fb0-37c1-49f0-a077-e15421fef20a)

- Create "Customer" table which includes Customer ID integer as primary key, First name varchar, Second name varchar, Gender varchar, Birthdate date, Phone number bigint, Email varchar, Address varchar, Delivered Order integer, and Canceled Order integer.
- Create "Company" table which includes the Company ID integer as primary key, Name varchar, About varchar, Email varchar, Address varchar, and Phone number integer.
- Create "Items" table which includes the Item ID integer as primary key, Type varchar, Item name varchar, Price integer, Quantity integer, and Description text.
- Create "Flowers" table which includes Fresh flowers varchar, Artificial flowers varchar, and foreign key (Item ID) references "Item" table.

![Create Tables 3](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/eb3996a2-7456-4d65-b0a0-39a6f943fada)

- Create "Decorative Accessories" table which includes a foreign key (Item ID) referencing "Item" table.

- Create "Staff" table which includes Staff ID integer as primary key, First name varchar, Second name varchar, Gender varchar, Birthdate date, Phone number bigint, Email varchar, Address varchar, Job title varchar, and Salary decimal.
- Create "Owner" table which includes the Owner ID integer as a primary key, and a foreign key (Owner ID) references "Staff" table.
- Create "Delivery" table which includes the Delivery ID integer as the primary key, Delivered orders integer, Undelivered orders integer, and foreign key (Delivery ID) references "Staff" table.
- Create "Cashier" table which includes the Cashier ID integer as a primary key, and a foreign key (Cashier ID) references "Staff" table.

![Create Tables 4](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/ac1b193b-9753-4a29-b794-43664116e14e)

- Create "Manager" table which includes the Manager ID integer as a primary key, and a foreign key (Manager ID) references "Staff" table.
- Create "Salesman" table which includes a Salesman ID integer as a primary key, Target float, and foreign key (Salesman ID) references "Staff" table.

## 5.2 Inserts

![Insert 1](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/788acf90-ccbe-4539-b096-7a27c9e94526)

![Insert 2](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/11ee7d26-3456-498e-b257-5e75e66ac315)

![Insert 3](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/4d7994d6-0ec6-445f-9074-0736b33b0217)

- Insert information into the database we have created.

**5.3 Queries**

![Queries 1](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/ae105285-cc92-41fe-b114-298d8e7b2094)

![Queries 2](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/70feadf2-48c4-4056-b84a-f5ded710ff2d)

![Queries 3](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/71848a21-0149-452b-b0c2-a9a05eefcff0)

# 6. GUI

## 6.1 Login Page

![Login Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/7abffbc4-0cf4-40fc-a3f4-16719af89469)

## 6.2 Options of the system Page

![Options of the system Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/6515a319-786e-4587-950c-cf1403678961)

## 6.3 Add Company Page

![Add Company Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/1b555b9c-16bd-4cdc-9aa2-40aab950d90a)

## 6.4 Add/Remove/Update/View Flowers Page

![Add-Remove-Update-View Flowers Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/d0852063-fd5c-436c-9474-ec78401fbba1)

## 6.5 Bills Page

![Bills Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/5bd3c554-6275-4742-8bd7-5298e3e9b91a)

## 6.6 Salary Page

![Salary Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/ca9a19d3-eec4-4700-9e5c-00bfc9b7f454)

## 6.7 Search/View Customers Page

![Search-View Customers Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/c31af01a-3a81-439f-ad5e-68f1ecc6feb4)

## 6.8 Search/View Delivery Page

![Search-View Delivery Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/5392a71f-a963-47e6-9f26-3f5a95360e21)

## 6.9 Search/View Employees Page

![Search-View Employees Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/5ef7f9b7-cf6d-496c-b395-730eb0a8c9b8)

## 6.10 Complains Page

![Complains Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/c8c21e49-33b5-407c-9c36-53dab8ce6279)

## 6.11 Add Employee Page

![Add Employee Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/278482eb-ad55-470e-9738-6ecf9ab1dceb)

## 6.12 Add Customer Page

![Add Customer Page](https://github.com/KHADIJA2509/Flower-Management-System-/assets/100092835/fca90d66-d131-480e-b814-a703734015a1)

# 7. Source Code

[https://github.com/KHADIJA2509/Flower-Management-System-](https://github.com/KHADIJA2509/Flower-Management-System-)
