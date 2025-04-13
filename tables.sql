USE bookstore;

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
