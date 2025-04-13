-- This file contains the SQL commands to create data in the table of orders made by customers.
INSERT INTO customer_orders (order_date, total_amount)
VALUES
("1-8-2010", 600.00),
("2-7-2011", 600.00),
("3-6-2012", 600.00),
("4-5-2013", 600.00),
("5-4-2011", 600.00),
("16-3-2022", 600.00);


-- This file contains the SQL commands to create data in the table of order lines, which contains the details of the books ordered.
INSERT INTO orderline (volume_or_series, quantity)
VALUES
("Volume 1", 1),
("Volume 2", 3),
("Volume 3", 1),
("Volume 1", 2),
("Series 7", 4),
("Series 6", 1);

-- This file contains the SQL commands to create data in the table of shipping methods available.
INSERT INTO shipping_methods (method_name, cost, estimated_delivery_day)
 VALUES
("Standard", 300.00,"7 days" ),
("overnight", 600.00, "Next day"),
("Two day", 500.00, "2 days"),
("same day", 800.00, "same day"),
("express", 900.00, "1-2 days"),
("international", 1000.00, "longer wait times");

-- This file contains the SQL commands to create data in the table of order history.
INSERT INTO orderhistory (histry)
 VALUES
("Cancelled"),
("ordered"),
("ordered"),
("ordered"),
("cancelled"),
("ordered");

-- This file contains the SQL commands to create data in the table of order status, which contains the status of the orders made by customers.
INSERT INTO order_status (status_name)
 VALUES
("Cancelled"),
("shipped"),
("shipped"),
("delivered"),
("cancelled"),
("pending");
 



 