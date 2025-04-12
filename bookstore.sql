-- CUSTOMER'S TABLE
USE bookstore;

CREATE TABLE Customers (
ID INT PRIMARY KEY,
FirstName VARCHAR (100),
LastName VARCHAR (100),
Age int,
Gender ENUM ('Male', 'Female', 'Other') 
);

INSERT INTO Customers (ID, FirstName, LastName, Age, Gender)
VALUES 	(1, "Jackline", "Nyaga", 30, 'Female'),
		(2, "Grace", "Wairimu", 25, 'Female'),
        (3, "Joseph", "Mbuti", 23, 'Male'),
        (4, "Henry", "Ouma", 37, 'Male'),
        (5, "Peter", "Mueke", 19, 'Male'),
        (6, "Joy", "Kanini", 29, 'Female');


-- ADDRESS TABLE
USE bookstore;

CREATE TABLE Customer_Address (
  AddressID INT PRIMARY KEY AUTO_INCREMENT,
  CustomerID INT,
  AddressLine VARCHAR(255),
  City VARCHAR(100),
  County VARCHAR(100),
  PostalCode VARCHAR(20),
  FOREIGN KEY (CustomerID) REFERENCES Customers(ID)
);

INSERT INTO Customer_Address (AddressID, CustomerID, AddressLine, City, County, PostalCode)
VALUES 
  (1, 1, '123 Main Street', 'Nairobi', 'Nairobi', '00100'),
  (2, 1, 'Plot 45, Kibra', 'Nairobi', 'Nairobi', '00100'),
  (3, 3, '456 Beach Rd', 'Mombasa', 'Mombasa', '80100'),
  (4, 4, '123 Swahili Rd', 'Malindi', 'Malindi', '80100'),
  (5, 6, '118 Githunguri Rd', 'Githunguri', 'Kiambu', '00200'),
  (6, 4, '234 Waiyaki Way', 'Westlands', 'Nairobi', '00100'),
  (7, 5, '005 Embu Rd', 'Mbeere-North', 'Embu', '50020'),
  (8, 5, '382 Kiritiri Rd', 'Mbeere-South', 'Embu', '50020'),
  (9, 6, '08 Thika Rd', 'Thika', 'Kiambu', '00200'),
  (10, 3, '421 Mombasa Rd', 'Utawala', 'Nairobi', '00100'),
  (11, 2, '293 Jogoo Rd', 'Jericho', 'Nairobi', '00100'),
  (12, 2, '274 Kangundo Rd', 'Ruai', 'Nairobi', '00100');

  USE bookstore;
  CREATE TABLE address_status (
  AddressID INT PRIMARY KEY,
  AddressStatus VARCHAR(20),
  StatusDate DATE,
  FOREIGN KEY (AddressID) REFERENCES Customer_Address(AddressID)
);

-- Insert statuses for existing addresses
INSERT INTO address_status (AddressID, AddressStatus, StatusDate)
VALUES 
  (1, 'Current', '2024-05-30'),
  (2, 'Old', '2022-01-01'),
  (3, 'Old', '2023-09-27'),
  (4, 'Current', '2025-02-01'),
  (5, 'Current', '2024-05-15'),
  (6, 'Old', '2021-06-01'),
  (7, 'Old', '2020-03-10'),
  (8, 'Current', '2024-11-01'),
  (9, 'Old', '2018-04-20'),
  (10, 'Current', '2023-02-15'),
  (11, 'Current', '2025-01-01'),
  (12, 'Old', '2022-12-01');

  