-- Mysql querry to create table for the orders made by customers.
CREATE TABLE customer_Orders(
orderId INT PRIMARY KEY AUTO_INCREMENT,
order_date VARCHAR(50),
total_amount DECIMAL(10,2),
customerId INT,
addressId INT,
shipping_method_Id INT,
order_status_Id INT,
FOREIGN KEY (customerId) REFERENCES customers(customerId),
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
FOREIGN KEY (bookId) REFERENCES books(bookID));

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
changed_at VARCHAR(20),
FOREIGN KEY (orderId) REFERENCES customer_Orders(orderId),
FOREIGN KEY (order_status_Id) REFERENCES order_status(order_status_Id));






