USE bookstore;

INSERT INTO Customers (CustomerID, CustomerName, Age, Gender)
VALUES 	(1, "Jackline Nyaga", 30, 'Female'),
		(2, "Grace Wairimu", 25, 'Female'),
        (3, "Joseph Mbuti", 23, 'Male'),
        (4, "Henry Ouma", 37, 'Male'),
        (5, "Peter Mueke", 19, 'Male'),
        (6, "Joy Kanini", 29, 'Female');


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
   

   INSERT INTO Address (AddressID, CustomerID, AddressLine, City, County, PostalCode)
VALUES 
  (1, 1, '123 Main Street', 'Nairobi', 'Nairobi', '00100' 'Current'),
  (2, 1, 'Plot 45, Kibra', 'Nairobi', 'Nairobi', '00100' 'Old'),
  (3, 3, '456 Beach Rd', 'Mombasa', 'Mombasa', '80100' 'Old'),
  (4, 4, '123 Swahili Rd', 'Malindi', 'Malindi', '80100' 'Current'),
  (5, 6, '118 Githunguri Rd', 'Githunguri', 'Kiambu', '00200' 'Current'),
  (6, 4, '234 Waiyaki Way', 'Westlands', 'Nairobi', '00100' 'Old'),
  (7, 5, '005 Embu Rd', 'Mbeere-North', 'Embu', '50020' 'Old'),
  (8, 5, '382 Kiritiri Rd', 'Mbeere-South', 'Embu', '50020' 'Current'),
  (9, 6, '08 Thika Rd', 'Thika', 'Kiambu', '00200' 'Old'),
  (10, 3, '421 Mombasa Rd', 'Utawala', 'Nairobi', '00100' 'Current'),
  (11, 2, '293 Jogoo Rd', 'Jericho', 'Nairobi', '00100' 'Current'),
  (12, 2, '274 Kangundo Rd', 'Ruai', 'Nairobi', '00100' 'Old');

    INSERT INTO Country (AddressID, City, County, Country)
VALUES 
  (1, 'Nairobi', 'Nairobi', 'Kenya'),
  (2, 'Nairobi', 'Nairobi', 'Kenya'),
  (3, 'Mombasa', 'Mombasa', 'Kenya'),
  (4, 'Malindi', 'Malindi', 'Kenya'),
  (5, 'Githunguri', 'Kiambu', 'Kenya'),
  (6, 'Westlands', 'Nairobi', 'Kenya'),
  (7, 'Mbeere-North', 'Embu', 'Kenya'),
  (8, 'Mbeere-South', 'Embu', 'Kenya'),
  (9, 'Thika', 'Kiambu', 'Kenya'),
  (10, 'Utawala', 'Nairobi', 'Kenya'),
  (11, 'Jericho', 'Nairobi', 'Kenya'),
  (12, 'Ruai', 'Nairobi', 'Kenya');