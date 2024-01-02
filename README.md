![](RackMultipart20240102-1-of94le_html_3f2a21e1b28b13b9.gif)

# FlowerShop Mangment SYSTEM

![](RackMultipart20240102-1-of94le_html_69ebe710fb917dae.gif)

Database Systems

CSCI305

Dr.[Mona Mohamed Arafa](https://moodle.nu.edu.eg/user/view.php?id=9106&course=9546)

![Shape1](RackMultipart20240102-1-of94le_html_7fa81916b44f6683.gif) ![Shape2](RackMultipart20240102-1-of94le_html_5108e5754945d34b.gif)

January 1, 2024

Norsen Ismail 211001833

Ann Michel 211001981

Sama Mohamed 211001809

Reem Fayez 202001603

Minnah Tariq 211001751

Khadija Sherif 211001976

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

# 1.Project description

The Flower Shop Management System is designed to improve the way flower shops handle their operations. The system aims to adeptly manage the shop's items, staff, customer interactions, order processing, and billing. Through a centralized database, it incorporates various modules that facilitate the effective functioning of each business aspect, ensuring efficiency and customer satisfaction.

  1.
## System Modules

- Company Module: This module acts as the core for managing company related data as managing shop details.
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

![Shape3](RackMultipart20240102-1-of94le_html_a45b8487d82637a7.gif)

## 2.1 System Modules and their attributes

- Entity: Company
  - Attributes: Name, Company ID (primary key) , Information, Address, and Contact Number
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
- Items to Order "Offers": A many-to-many relationship exists, indicating that an order must contain many items and many items can appear in many orders.
- Staff to Company "Have": There is a mandatory one-to-many relationship indicating a single company employs many staff members.
- Specialization of Staff: Disjoint total specialization relationship within the Staff entity, with subtypes: Salesman, Cashier, Delivery, Manager, Owner
- Cashier to Billing "Bill Process": A mandatory one-to-many relation signifying each billing is processed by one cashier, and one cashier can process multiple billings.
- Delivery to Order "Deliver": One-to-one relationship between Order and Delivery indicates that each order can be delivered by one delivery staff, and one delivery staff can handle multiple orders.
- Manager to Company "Manage": A mandatory one-to-one relationship indicated that Manager must have one company, and company must have one manager.
- Associative Entity "Transaction": This associative entity represents the process that involves orders, customers, billing, and complaints.

- There is a one-to-one mandatory relationship between the transaction and each order, billing, and complaint, denoting that each transaction must include these entities.
- The relationship with the customer is many, suggesting that one customer can have multiple transactions.

# 3.Relational Database

![Picture 1](RackMultipart20240102-1-of94le_html_704206172362b5d0.gif)

# 4. List of used tools

- ERD plus
- MySQL Workbench
- WPF
- Smart Draw for UML

# 5. SQL Codes

## 5.1 Create Tables

![Picture 3](RackMultipart20240102-1-of94le_html_a151519659c65557.gif)

- Create "Order" table which includes Order ID integer as primary key, Order type varchar, Order date, order time, Payment status varchar, Status varchar, Amount decimal, and Notes text.

- Create "Billing" table which includes Bill Id integer as primary key, Bill type varchar, Bill date, Time, and Amount decimal.
- Create "Complain" table which includes Complaint ID integer as primary key, Complain title varchar, Description text, Complain date, Complain time.

![Picture 4](RackMultipart20240102-1-of94le_html_f5241333a3ed516.gif)

- Create "Customer" table which includes Customer ID integer as primary key, First name varchar, Second name varchar, Gender varchar, Birthdate date, Phone number bigint, Email varchar, Address varchar, Delivered Order integer, and Canceled Order integer.
- Create "Company" table which includes Company ID integer as primary key, Name varchar, About varchar, Email varchar, Address varchar, and Phone number integer.
- Create "Items" table which includes Item Id integer as primary key, Type varchar, Item name varchar, Price integer, Quantity integer, and Description text.
- Create "Flowers" table which includes Fresh flowers varchar, Artificial flowers varchar, and foreign key (Item ID) references "Item" table.

![Picture 5](RackMultipart20240102-1-of94le_html_72b012aa661fb410.gif)

![Shape4](RackMultipart20240102-1-of94le_html_9a9d0190160120aa.gif)

![Shape6](RackMultipart20240102-1-of94le_html_cfc64c8babd58b9f.gif) ![Shape5](RackMultipart20240102-1-of94le_html_e1bebf0a3e38976d.gif)

- Create "Decorative Accessories" table which includes foreign key (Item ID) references "Item" table.

- Create "Staff" table which includes Staff ID integer as primary key, First name varchar, Second name varchar, Gender varchar, Birthdate date, Phone number bigint, Email varchar, Address varchar, Job title varchar, and Salary decimal.
- Create "Owner" table which includes Owner ID integer as a primary key, and foreign key (Owner ID) references "Staff" table.
- Create "Delivery" table which includes Delivery ID integer as primary key, Delivered orders integer, Undelivered orders integer, and foreign key (Delivery ID) references "Staff" table.
- Create "Cashier" table which includes Cashier ID integer as a primary key, and foreign key (Cashier ID) references "Staff" table.

![Picture 6](RackMultipart20240102-1-of94le_html_5d165225cbb248e0.gif)

- Create "Manager" table which includes Manager ID integer as a primary key, and foreign key (Manager ID) references "Staff" table.
- Create "Salesman" table which includes Salesman ID integer as a primary key, Target float, and foreign key (Salesman ID) references "Staff" table.

##

## 5.2 Inserts

![Picture 8](RackMultipart20240102-1-of94le_html_ec50635c1fde2f81.gif)

![Picture 9](RackMultipart20240102-1-of94le_html_208d5c568db1f666.gif)

![Picture 10](RackMultipart20240102-1-of94le_html_5c831f87ad48ffb7.gif)

- Inserting Information into the database we have created.

**5.3 Queries**

![Picture 1](RackMultipart20240102-1-of94le_html_12d675efb4d816ca.gif)

![Picture 1](RackMultipart20240102-1-of94le_html_757afee700e82067.gif)

![Picture 1](RackMultipart20240102-1-of94le_html_11b5dde61a44509e.gif)

# 6. GUI

## 6.1 Login Page

![](RackMultipart20240102-1-of94le_html_94910ab998340d01.jpg)

## 6.2 Options of the system Page

![](RackMultipart20240102-1-of94le_html_6e1762005f91ff82.jpg)

## 6.3 Add Company Page

![](RackMultipart20240102-1-of94le_html_4ab40253a1fe9ed3.jpg)

## 6.4 Add/Remove/Update/View Flowers Page

![](RackMultipart20240102-1-of94le_html_502d79ec176e276d.jpg)

## 6.5 Bills Page

![](RackMultipart20240102-1-of94le_html_d82f0de4fed80142.jpg)

## 6.6 Salary Page

![](RackMultipart20240102-1-of94le_html_b075e3a1b140a8fe.jpg)

## 6.7 Search/View customers Page

![](RackMultipart20240102-1-of94le_html_5702eeffb75bec92.jpg)

##

## 6.8 Search/View Delivery Page

![](RackMultipart20240102-1-of94le_html_e8a0c4f8bfdeecbc.jpg)

## 6.9 Search/View Employees Page

![](RackMultipart20240102-1-of94le_html_3b3dba8b6850c59f.jpg)

## 6.10 Complains Page

![](RackMultipart20240102-1-of94le_html_5a0bc18b78b6cd42.jpg)

## 6.11 Add Employee Page

![](RackMultipart20240102-1-of94le_html_eca7c8e1d171affe.jpg)

## 6.12 Add Customer Page

![](RackMultipart20240102-1-of94le_html_f05245feac895a70.jpg)

# 7. Source Code

[https://github.com/KHADIJA2509/Flower-Management-System-](https://github.com/KHADIJA2509/Flower-Management-System-)
