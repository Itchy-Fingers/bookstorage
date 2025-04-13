CREATE DATABASE bookstore;
USE bookstore;

-- Creat Tables

CREATE TABLE publisher (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE book_language (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publisher_id INT,
    language_id INT,
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
    FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);

CREATE TABLE book_author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);
CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR (100),
Age int,
Gender ENUM ('Male', 'Female', 'Other') 
);

CREATE TABLE Customer_Address (
  AddressID INT PRIMARY KEY AUTO_INCREMENT,
  CustomerID INT (50),
  AddressLine VARCHAR(50),
  City VARCHAR(100),
  County VARCHAR(100),
  PostalCode VARCHAR(20),
  FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);

CREATE TABLE address_status (
  AddressID INT PRIMARY KEY,
  AddressStatus VARCHAR(20),
  StatusDate VARCHAR(20),
  FOREIGN KEY (AddressID) REFERENCES Customer_Address(AddressID)
);

CREATE TABLE Address (
AddressID INT PRIMARY KEY,
CustomerID INT (50),
AddressLine VARCHAR(50),
City VARCHAR(100),
County VARCHAR(100),
PostalCode VARCHAR(20),
AddressStatus VARCHAR(20),
FOREIGN KEY (AddressID) REFERENCES address_status(AddressID),
FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);

-- Mysql querry to create table for the orders made by customers.
CREATE TABLE customer_Orders(
orderId INT PRIMARY KEY AUTO_INCREMENT,
order_date VARCHAR(50),
total_amount DECIMAL(10,2),
customerID INT,
addressId INT,
shipping_method_Id INT,
order_status_Id INT,
FOREIGN KEY (customerID) REFERENCES customers(customerID),
FOREIGN KEY (addressId) REFERENCES customer_address(addressId),
FOREIGN KEY (shipping_method_Id) REFERENCES shipping_methods(shipping_method_Id),
FOREIGN KEY (order_status_Id) REFERENCES order_status(order_status_Id));

-- Mysql querry to create table for the order lines, which contains the details of the books ordered.
CREATE TABLE orderline (
orderline_Id INT PRIMARY KEY AUTO_INCREMENT,
volume_or_series VARCHAR(100),
quantity INT,
orderId INT,
bookId INT,
FOREIGN KEY (orderId) REFERENCES customer_Orders(orderId),
FOREIGN KEY (book_id) REFERENCES book(book_id));

-- Mysql querry to create table for the methods available for shipping the books.
CREATE TABLE shipping_methods(
shipping_method_Id INT PRIMARY KEY AUTO_INCREMENT,
method_name VARCHAR(100),
cost DECIMAL(10,2),
estimated_delivery_day VARCHAR(20));

-- Mysql querry to create table for the order status, which contains the status of the orders made by customers.
CREATE TABLE order_status(
order_status_Id INT PRIMARY KEY AUTO_INCREMENT,
status_name VARCHAR(20)); -- can be pending, delivered, shipped, cancelled. 

-- Mysql querry to create table for the order history, which contains the history of the orders made by customers.
CREATE TABLE orderHistory (
orderHistory_Id INT PRIMARY KEY AUTO_INCREMENT,
orderId INT,
order_status_Id INT,
histry VARCHAR(20),
FOREIGN KEY (orderId) REFERENCES customer_Orders(orderId),
FOREIGN KEY (order_status_Id) REFERENCES order_status(order_status_Id));
