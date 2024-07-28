create database E_commerce ;
 
 --  use E_commerce
 use E_commerce;
 
 -- Create table for categories
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(255) NOT NULL,
    Description TEXT
);

-- insert values
-- Insert values into Categories table
INSERT INTO Categories (CategoryID, CategoryName, Description)
VALUES
    (1, 'Electronics', 'Devices, gadgets, and accessories'),
    (2, 'Books', 'Printed and digital books across various genres'),
    (3, 'Clothing', 'Apparel for men, women, and children'),
    (4, 'Home & Kitchen', 'Home appliances, furniture, and kitchenware'),
    (5, 'Beauty & Personal Care', 'Cosmetics, skincare, and personal care products'),
    (6, 'Sports & Outdoors', 'Sporting goods and outdoor equipment'),
    (7, 'Toys & Games', 'Toys, games, and educational products for children'),
    (8, 'Automotive', 'Car parts, accessories, and tools'),
    (9, 'Health & Wellness', 'Healthcare products and wellness items'),
    (10, 'Jewelry & Watches', 'Jewelry, watches, and accessories');
    
    -- Create table for products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(255) NOT NULL,
    CategoryID INT,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    Description TEXT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- insert value
-- Insert values into Products table
INSERT INTO Products (ProductID, ProductName, CategoryID, Price, StockQuantity, Description)
VALUES
    (1, 'Smartphone', 1, 699.99, 50, 'Latest model with high-resolution camera and fast processor'),
    (2, 'Bluetooth Headphones', 1, 129.99, 150, 'Wireless headphones with noise-cancellation feature'),
    (3, 'Laptop', 1, 1199.99, 30, 'High-performance laptop with 16GB RAM and 512GB SSD'),
    (4, 'Novel - The Great Gatsby', 2, 10.99, 200, 'Classic novel by F. Scott Fitzgerald'),
    (5, 'Cooking for Beginners', 2, 15.99, 80, 'A comprehensive cookbook for beginners'),
    (6, 'Men T-Shirt', 3, 19.99, 100, 'Comfortable cotton t-shirt available in various sizes'),
    (7, 'Women Jacket', 3, 89.99, 70, 'Stylish and warm jacket for women'),
    (8, 'Blender', 4, 89.99, 60, 'High-speed blender for smoothies and soups'),
    (9, 'Coffee Maker', 4, 49.99, 90, 'Automatic coffee maker with programmable settings'),
    (10, 'Face Cream', 5, 24.99, 120, 'Moisturizing face cream with anti-aging properties'),
    (11, 'Shampoo', 5, 14.99, 150, 'Gentle shampoo for all hair types'),
    (12, 'Camping Tent', 6, 119.99, 40, 'Durable tent for outdoor camping trips'),
    (13, 'Yoga Mat', 6, 29.99, 80, 'Non-slip yoga mat for exercise and stretching'),
    (14, 'Children\'s Puzzle', 7, 19.99, 100, 'Educational puzzle for developing problem-solving skills'),
    (15, 'Remote Control Car', 7, 49.99, 70, 'Fun and durable remote control car for kids'),
    (16, 'Car Battery', 8, 129.99, 40, 'Reliable car battery with long-lasting performance'),
    (17, 'Engine Oil', 8, 39.99, 100, 'High-quality engine oil for smooth engine operation'),
    (18, 'Vitamins', 9, 29.99, 150, 'Daily multivitamins for overall health'),
    (19, 'Fitness Tracker', 9, 99.99, 60, 'Wearable device to monitor fitness and health metrics'),
    (20, 'Gold Necklace', 10, 299.99, 20, 'Elegant gold necklace with fine craftsmanship'),
    (21, 'Leather Watch', 10, 149.99, 25, 'Stylish leather watch with a classic design');
    
    -- Create table for customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    ZipCode VARCHAR(10),
    Country VARCHAR(255)
);

-- insert values


-- Insert values into Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Password, Address, City, State, ZipCode, Country)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', 'password123', '123 Elm St', 'Springfield', 'IL', '62701', 'USA'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', 'password123', '456 Oak St', 'Metropolis', 'NY', '10001', 'USA'),
    (3, 'Robert', 'Johnson', 'robert.johnson@example.com', 'password123', '789 Pine St', 'Gotham', 'NJ', '07001', 'USA'),
    (4, 'Emily', 'Williams', 'emily.williams@example.com', 'password123', '101 Maple St', 'Star City', 'CA', '90001', 'USA'),
    (5, 'Michael', 'Brown', 'michael.brown@example.com', 'password123', '202 Birch St', 'Central City', 'TX', '73301', 'USA'),
    (6, 'Sarah', 'Jones', 'sarah.jones@example.com', 'password123', '303 Cedar St', 'Smallville', 'FL', '33101', 'USA'),
    (7, 'David', 'Garcia', 'david.garcia@example.com', 'password123', '404 Walnut St', 'Coast City', 'WA', '98001', 'USA'),
    (8, 'Laura', 'Martinez', 'laura.martinez@example.com', 'password123', '505 Cherry St', 'Riverdale', 'OR', '97201', 'USA'),
    (9, 'James', 'Hernandez', 'james.hernandez@example.com', 'password123', '606 Spruce St', 'Bludhaven', 'CO', '80001', 'USA'),
    (10, 'Jessica', 'Taylor', 'jessica.taylor@example.com', 'password123', '707 Fir St', 'Sunnydale', 'AZ', '85001', 'USA'),
    (11, 'William', 'Wilson', 'william.wilson@example.com', 'password123', '808 Maple St', 'Palo Alto', 'CA', '94301', 'USA'),
    (12, 'Olivia', 'Moore', 'olivia.moore@example.com', 'password123', '909 Oak St', 'Brighton', 'MI', '48101', 'USA'),
    (13, 'Ethan', 'Anderson', 'ethan.anderson@example.com', 'password123', '1010 Elm St', 'Fargo', 'ND', '58102', 'USA'),
    (14, 'Sophia', 'Thomas', 'sophia.thomas@example.com', 'password123', '1111 Pine St', 'Raleigh', 'NC', '27601', 'USA'),
    (15, 'Daniel', 'Jackson', 'daniel.jackson@example.com', 'password123', '1212 Birch St', 'Denver', 'CO', '80201', 'USA'),
    (16, 'Mia', 'White', 'mia.white@example.com', 'password123', '1313 Cedar St', 'Nashville', 'TN', '37201', 'USA'),
    (17, 'Alexander', 'Harris', 'alexander.harris@example.com', 'password123', '1414 Walnut St', 'Austin', 'TX', '73301', 'USA'),
    (18, 'Isabella', 'Martin', 'isabella.martin@example.com', 'password123', '1515 Spruce St', 'Columbus', 'OH', '43201', 'USA'),
    (19, 'Matthew', 'Thompson', 'matthew.thompson@example.com', 'password123', '1616 Fir St', 'Jacksonville', 'FL', '32201', 'USA'),
    (20, 'Ava', 'Garcia', 'ava.garcia@example.com', 'password123', '1717 Maple St', 'Indianapolis', 'IN', '46201', 'USA'),
    (21, 'Liam', 'Martinez', 'liam.martinez@example.com', 'password123', '1818 Oak St', 'Seattle', 'WA', '98101', 'USA'),
    (22, 'Charlotte', 'Lee', 'charlotte.lee@example.com', 'password123', '1919 Elm St', 'San Francisco', 'CA', '94101', 'USA'),
    (23, 'Henry', 'Walker', 'henry.walker@example.com', 'password123', '2020 Pine St', 'Minneapolis', 'MN', '55401', 'USA'),
    (24, 'Amelia', 'Hall', 'amelia.hall@example.com', 'password123', '2121 Birch St', 'Baltimore', 'MD', '21201', 'USA'),
    (25, 'Sebastian', 'Allen', 'sebastian.allen@example.com', 'password123', '2222 Cedar St', 'Honolulu', 'HI', '96801', 'USA'),
    (26, 'Mason', 'Young', 'mason.young@example.com', 'password123', '2323 Walnut St', 'Louisville', 'KY', '40201', 'USA'),
    (27, 'Ella', 'King', 'ella.king@example.com', 'password123', '2424 Spruce St', 'Omaha', 'NE', '68101', 'USA'),
    (28, 'Aiden', 'Scott', 'aiden.scott@example.com', 'password123', '2525 Fir St', 'Cincinnati', 'OH', '45201', 'USA'),
    (29, 'Grace', 'Green', 'grace.green@example.com', 'password123', '2626 Maple St', 'Tucson', 'AZ', '85701', 'USA'),
    (30, 'Owen', 'Adams', 'owen.adams@example.com', 'password123', '2727 Oak St', 'St. Louis', 'MO', '63101', 'USA'),
    (31, 'Chloe', 'Baker', 'chloe.baker@example.com', 'password123', '2828 Elm St', 'Pittsburgh', 'PA', '15201', 'USA'),
    (32, 'Lucas', 'Nelson', 'lucas.nelson@example.com', 'password123', '2929 Pine St', 'Greensboro', 'NC', '27401', 'USA'),
    (33, 'Lily', 'Carter', 'lily.carter@example.com', 'password123', '3030 Birch St', 'Orlando', 'FL', '32801', 'USA'),
    (34, 'Eli', 'Mitchell', 'eli.mitchell@example.com', 'password123', '3131 Cedar St', 'Buffalo', 'NY', '14201', 'USA'),
    (35, 'Zoe', 'Perez', 'zoe.perez@example.com', 'password123', '3232 Walnut St', 'Fort Worth', 'TX', '76101', 'USA'),
    (36, 'Benjamin', 'Roberts', 'benjamin.roberts@example.com', 'password123', '3333 Spruce St', 'Sacramento', 'CA', '95801', 'USA'),
    (37, 'Harper', 'Turner', 'harper.turner@example.com', 'password123', '3434 Fir St', 'Kansas City', 'MO', '64101', 'USA'),
    (38, 'Jack', 'Phillips', 'jack.phillips@example.com', 'password123', '3535 Maple St', 'Jersey City', 'NJ', '07301', 'USA'),
    (39, 'Mia', 'Cook', 'mia.cook@example.com', 'password123', '3636 Oak St', 'Mesa', 'AZ', '85201', 'USA'),
    (40, 'Samuel', 'Morgan', 'samuel.morgan@example.com', 'password123', '3737 Elm St', 'Virginia Beach', 'VA', '23450', 'USA'),
    (41, 'Aria', 'Bell', 'aria.bell@example.com', 'password123', '3838 Pine St', 'Atlanta', 'GA', '30301', 'USA'),
    (42, 'Ryan', 'Murphy', 'ryan.murphy@example.com', 'password123', '3939 Birch St', 'Colorado Springs', 'CO', '80901', 'USA'),
    (43, 'Layla', 'Bailey', 'layla.bailey@example.com', 'password123', '4040 Cedar St', 'Riverside', 'CA', '92501', 'USA'),
    (44, 'Elijah', 'Cooper', 'elijah.cooper@example.com', 'password123', '4141 Walnut St', 'Bakersfield', 'CA', '93301', 'USA'),
    (45, 'Sofia', 'Richardson', 'sofia.richardson@example.com', 'password123', '4242 Spruce St', 'Omaha', 'NE', '68101', 'USA'),
    (46, 'Mason', 'Howard', 'mason.howard@example.com', 'password123', '4343 Fir St', 'Chattanooga', 'TN', '37401', 'USA'),
    (47, 'Evelyn', 'Ward', 'evelyn.ward@example.com', 'password123', '4444 Maple St', 'Madison', 'WI', '53701', 'USA'),
    (48, 'James', 'Ross', 'james.ross@example.com', 'password123', '4545 Oak St', 'Rochester', 'NY', '14601', 'USA'),
    (49, 'Mia', 'Gray', 'mia.gray@example.com', 'password123', '4646 Elm St', 'Huntsville', 'AL', '35801', 'USA'),
    (50, 'Matthew', 'Peterson', 'matthew.peterson@example.com', 'password123', '4747 Pine St', 'Augusta', 'GA', '30901', 'USA');
    
    -- Create table for orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATETIME NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    OrderStatus VARCHAR(50) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
    select * from orders;
-- insert values
-- Insert 60 values into Orders table with CustomerID, OrderDate, TotalAmount, and OrderStatus
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount, OrderStatus)
VALUES
    (7, '2024-01-15 08:30:00', 299.99, 'Shipped'),
    (15, '2024-01-16 09:45:00', 159.99, 'Delivered'),
    (22, '2024-01-17 10:00:00', 499.99, 'Processing'),
    (31, '2024-01-18 11:15:00', 89.99, 'Shipped'),
    (5, '2024-01-19 12:30:00', 349.99, 'Delivered'),
    (43, '2024-01-20 13:45:00', 79.99, 'Canceled'),
    (9, '2024-01-21 14:00:00', 229.99, 'Processing'),
    (27, '2024-01-22 15:15:00', 89.99, 'Shipped'),
    (14, '2024-01-23 16:30:00', 549.99, 'Delivered'),
    (21, '2024-01-24 17:45:00', 39.99, 'Shipped'),
    (37, '2024-01-25 08:00:00', 119.99, 'Processing'),
    (48, '2024-01-26 09:15:00', 89.99, 'Delivered'),
    (13, '2024-01-27 10:30:00', 199.99, 'Shipped'),
    (6, '2024-01-28 11:45:00', 279.99, 'Processing'),
    (20, '2024-01-29 12:00:00', 89.99, 'Delivered'),
    (17, '2024-01-30 13:15:00', 399.99, 'Shipped'),
    (8, '2024-02-01 14:30:00', 159.99, 'Processing'),
    (29, '2024-02-02 15:45:00', 69.99, 'Shipped'),
    (34, '2024-02-03 16:00:00', 129.99, 'Delivered'),
    (41, '2024-02-04 08:15:00', 249.99, 'Shipped'),
    (3, '2024-02-05 09:30:00', 89.99, 'Processing'),
    (25, '2024-02-06 10:45:00', 349.99, 'Delivered'),
    (47, '2024-02-07 11:00:00', 199.99, 'Shipped'),
    (12, '2024-02-08 12:15:00', 79.99, 'Processing'),
    (35, '2024-02-09 13:30:00', 129.99, 'Delivered'),
    (11, '2024-02-10 14:45:00', 39.99, 'Shipped'),
    (23, '2024-02-11 15:00:00', 229.99, 'Processing'),
    (16, '2024-02-12 16:15:00', 89.99, 'Delivered'),
    (44, '2024-02-13 08:30:00', 399.99, 'Shipped'),
    (18, '2024-02-14 09:45:00', 159.99, 'Processing'),
    (45, '2024-02-15 10:00:00', 299.99, 'Delivered'),
    (26, '2024-02-16 11:15:00', 79.99, 'Shipped'),
    (30, '2024-02-17 12:30:00', 249.99, 'Processing'),
    (4, '2024-02-18 13:45:00', 89.99, 'Delivered'),
    (50, '2024-02-19 14:00:00', 179.99, 'Shipped'),
    (10, '2024-02-20 15:15:00', 129.99, 'Processing'),
    (38, '2024-02-21 16:30:00', 349.99, 'Delivered'),
    (42, '2024-02-22 17:45:00', 89.99, 'Shipped'),
    (28, '2024-02-23 08:00:00', 229.99, 'Processing'),
    (2, '2024-02-24 09:15:00', 69.99, 'Delivered'),
    (40, '2024-02-25 10:30:00', 399.99, 'Shipped'),
    (33, '2024-02-26 11:45:00', 159.99, 'Processing'),
    (49, '2024-02-27 12:00:00', 299.99, 'Delivered'),
    (19, '2024-02-28 13:15:00', 79.99, 'Shipped'),
    (46, '2024-02-29 14:30:00', 249.99, 'Processing'),
    (24, '2024-03-01 15:45:00', 89.99, 'Delivered'),
    (32, '2024-03-02 16:00:00', 179.99, 'Shipped'),
    (39, '2024-03-03 08:15:00', 129.99, 'Processing'),
    (1, '2024-03-04 09:30:00', 349.99, 'Delivered'),
    (21, '2024-03-05 10:45:00', 199.99, 'Shipped'),
    (12, '2024-03-06 11:00:00', 79.99, 'Processing'),
    (17, '2024-03-07 12:15:00', 129.99, 'Delivered'),
    (29, '2024-03-08 13:30:00', 399.99, 'Shipped'),
    (14, '2024-03-09 14:45:00', 159.99, 'Processing'),
    (4, '2024-03-10 15:00:00', 299.99, 'Delivered'),
    (48, '2024-03-11 16:15:00', 79.99, 'Shipped'),
    (35, '2024-03-12 17:30:00', 249.99, 'Processing'),
    (30, '2024-03-13 08:45:00', 89.99, 'Delivered'),
    (50, '2024-03-14 09:00:00', 179.99, 'Shipped'),
    (8, '2024-03-15 10:15:00', 129.99, 'Processing');
   select * from orders; 
    -- Create table for order details
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert 60 values into OrderDetails table
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price)
VALUES
    (1, 5, 2, 149.99),
    (2, 9, 1, 159.99),
    (3, 12, 1, 499.99), 
    (4, 3, 1, 89.99),  
    (5, 20, 1, 349.99),
    (6, 14, 1, 79.99),  
    (7, 7, 3, 76.66),   
    (8, 16, 1, 89.99),  
    (9, 18, 1, 549.99), 
    (10, 21, 1, 39.99), 
    (11, 10, 1, 119.99), 
    (12, 5, 1, 89.99),  
    (13, 6, 2, 99.99),  
    (14, 12, 1, 279.99), 
    (15, 8, 1, 89.99),  
    (17, 7, 1, 159.99), 
    (18, 2, 1, 69.99),  
    (19, 14, 1, 129.99), 
    (20, 19, 1, 249.99), 
    (21, 4, 2, 89.99),  
    (22, 9, 1, 349.99), 
    (23, 13, 2, 199.99),
    (24, 16, 1, 129.99), 
    (25, 12, 1, 179.99), 
    (26, 6, 1, 99.99),  
    (27, 21, 2, 79.99),  
    (28, 18, 1, 229.99),
    (29, 17, 1, 399.99), 
    (30, 18, 2, 279.99), 
    (31, 11, 1, 159.99), 
    (32, 10, 1, 119.99), 
    (33, 11, 2, 79.99), 
    (34, 21, 1, 349.99), 
    (35, 3, 1, 129.99),  
    (36, 8, 1, 199.99),  
    (37, 12, 1, 499.99),
    (38, 17, 1, 159.99),
    (40, 15, 1, 249.99),
    (41, 21, 2, 399.99), 
    (42, 15, 1, 129.99), 
    (43, 9, 1, 69.99),  
    (44, 10, 1, 119.99),
    (46, 18, 1, 229.99), 
    (47, 18, 1, 159.99), 
    (48, 3, 1, 299.99), 
    (49, 20, 1, 349.99),
    (50, 8, 1, 79.99),   
    (51, 15, 2, 89.99), 
    (52, 16, 1, 159.99),
    (53, 21, 1, 299.99),
    (54, 6, 2, 199.98),  
    (55, 17, 1, 399.99),
    (56, 15, 1, 159.99), 
    (57, 5, 2, 119.99), 
    (58, 18, 1, 229.99),
    (59, 9, 1, 349.99),  
    (60, 4, 2, 179.98);  
select * from orderdetails;
-- Create table for payments
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    PaymentDate DATETIME NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert 60 values into Payments table
INSERT INTO Payments (OrderID, PaymentDate, Amount, PaymentMethod)
VALUES
    (1, '2024-01-15 09:00:00', 299.99, 'Credit Card'),
    (2, '2024-01-16 10:00:00', 159.99, 'PayPal'),
    (3, '2024-01-17 11:00:00', 499.99, 'Credit Card'),
    (4, '2024-01-18 12:00:00', 89.99, 'Bank Transfer'),
    (5, '2024-01-19 13:00:00', 349.99, 'Credit Card'),
    (6, '2024-01-20 14:00:00', 79.99, 'PayPal'),
    (7, '2024-01-21 15:00:00', 229.99, 'Credit Card'),
    (8, '2024-01-22 16:00:00', 89.99, 'Bank Transfer'),
    (9, '2024-01-23 17:00:00', 549.99, 'PayPal'),
    (10, '2024-01-24 08:00:00', 39.99, 'Credit Card'),
    (11, '2024-01-25 09:00:00', 119.99, 'Bank Transfer'),
    (12, '2024-01-26 10:00:00', 89.99, 'PayPal'),
    (13, '2024-01-27 11:00:00', 199.99, 'Credit Card'),
    (14, '2024-01-28 12:00:00', 279.99, 'Credit Card'),
    (15, '2024-01-29 13:00:00', 89.99, 'Bank Transfer'),
    (16, '2024-01-30 14:00:00', 399.99, 'Credit Card'),
    (17, '2024-02-01 15:00:00', 159.99, 'PayPal'),
    (18, '2024-02-02 16:00:00', 69.99, 'Credit Card'),
    (19, '2024-02-03 17:00:00', 249.99, 'Bank Transfer'),
    (20, '2024-02-04 08:00:00', 179.99, 'PayPal'),
    (21, '2024-02-05 09:00:00', 89.99, 'Credit Card'),
    (22, '2024-02-06 10:00:00', 349.99, 'PayPal'),
    (23, '2024-02-07 11:00:00', 399.98, 'Credit Card'),
    (24, '2024-02-08 12:00:00', 129.99, 'Bank Transfer'),
    (25, '2024-02-09 13:00:00', 179.99, 'Credit Card'),
    (26, '2024-02-10 14:00:00', 99.99, 'PayPal'),
    (27, '2024-02-11 15:00:00', 159.98, 'Bank Transfer'),
    (28, '2024-02-12 16:00:00', 229.99, 'Credit Card'),
    (29, '2024-02-13 17:00:00', 399.99, 'PayPal'),
    (30, '2024-02-14 08:00:00', 559.98, 'Credit Card'),
    (31, '2024-02-15 09:00:00', 159.99, 'Bank Transfer'),
    (32, '2024-02-16 10:00:00', 119.99, 'PayPal'),
    (33, '2024-02-17 11:00:00', 159.98, 'Credit Card'),
    (34, '2024-02-18 12:00:00', 349.99, 'Bank Transfer'),
    (35, '2024-02-19 13:00:00', 129.99, 'PayPal'),
    (36, '2024-02-20 14:00:00', 199.99, 'Credit Card'),
    (37, '2024-02-21 15:00:00', 499.99, 'PayPal'),
    (38, '2024-02-22 16:00:00', 159.99, 'Credit Card'),
    (39, '2024-02-23 17:00:00', 89.99, 'Bank Transfer'),
    (40, '2024-02-24 08:00:00', 249.99, 'PayPal'),
    (41, '2024-02-25 09:00:00', 799.98, 'Credit Card'),
    (42, '2024-02-26 10:00:00', 129.99, 'Bank Transfer'),
    (43, '2024-02-27 11:00:00', 69.99, 'PayPal'),
    (44, '2024-02-28 12:00:00', 119.99, 'Credit Card'),
    (45, '2024-03-01 13:00:00', 299.99, 'PayPal'),
    (46, '2024-03-02 14:00:00', 229.99, 'Bank Transfer'),
    (47, '2024-03-03 15:00:00', 159.99, 'Credit Card'),
    (48, '2024-03-04 16:00:00', 299.99, 'PayPal'),
    (49, '2024-03-05 08:00:00', 349.99, 'Credit Card'),
    (50, '2024-03-06 09:00:00', 79.99, 'Bank Transfer'),
    (51, '2024-03-07 10:00:00', 179.98, 'PayPal'),
    (52, '2024-03-08 11:00:00', 159.99, 'Credit Card'),
    (53, '2024-03-09 12:00:00', 299.99, 'Bank Transfer'),
    (54, '2024-03-10 13:00:00', 399.96, 'PayPal'),
    (55, '2024-03-11 14:00:00', 399.99, 'Credit Card'),
    (56, '2024-03-12 15:00:00', 159.99, 'Bank Transfer'),
    (57, '2024-03-13 16:00:00', 239.98, 'PayPal'),
    (58, '2024-03-14 08:00:00', 229.99, 'Credit Card'),
    (59, '2024-03-15 09:00:00', 349.99, 'PayPal'),
    (60, '2024-03-16 10:00:00', 359.96, 'Bank Transfer');
select * from payments;
 -- Create table for returns   
 CREATE TABLE Returns (
    ReturnID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ReturnDate DATETIME NOT NULL,
    RefundAmount DECIMAL(10, 2),
    ReturnReason TEXT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


-- Insert 20 values into Returns table
INSERT INTO Returns (OrderID, ReturnDate, RefundAmount, ReturnReason)
VALUES
    (1, '2024-02-01 10:00:00', 100.00, 'Damaged item'),
    (2, '2024-02-02 11:00:00', 50.00, 'Incorrect item'),
    (3, '2024-02-03 12:00:00', 150.00, 'Changed mind'),
    (4, '2024-02-04 13:00:00', 30.00, 'Item not as described'),
    (5, '2024-02-05 14:00:00', 70.00, 'Wrong size'),
    (6, '2024-02-06 15:00:00', 20.00, 'Defective item'),
    (7, '2024-02-07 16:00:00', 120.00, 'Ordered by mistake'),
    (8, '2024-02-08 17:00:00', 25.00, 'Quality issues'),
    (9, '2024-02-09 08:00:00', 200.00, 'Duplicate order'),
    (10, '2024-02-10 09:00:00', 10.00, 'Late delivery'),
    (11, '2024-02-11 10:00:00', 60.00, 'Not satisfied with the product'),
    (12, '2024-02-12 11:00:00', 80.00, 'Item arrived damaged'),
    (13, '2024-02-13 12:00:00', 90.00, 'Wrong item received'),
    (14, '2024-02-14 13:00:00', 45.00, 'Changed mind'),
    (15, '2024-02-15 14:00:00', 50.00, 'Item did not fit'),
    (16, '2024-02-16 15:00:00', 75.00, 'Product not as expected'),
    (17, '2024-02-17 16:00:00', 140.00, 'Incorrect item sent'),
    (18, '2024-02-18 17:00:00', 55.00, 'Item malfunctioning'),
    (19, '2024-02-19 08:00:00', 65.00, 'Better price found elsewhere'),
    (20, '2024-02-20 09:00:00', 95.00, 'Changed mind');
   select * from returns;
   drop table returns;
    
    -- Create table for reviews
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    CustomerID INT,
    Rating INT CHECK(Rating >= 1 AND Rating <= 5),
    ReviewText TEXT,
    ReviewDate DATETIME NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert 20 values into Reviews table
INSERT INTO Reviews (ProductID, CustomerID, Rating, ReviewText, ReviewDate)
VALUES
    (1, 1, 5, 'Excellent product, very satisfied!', '2024-02-01 10:00:00'),
    (2, 2, 4, 'Good quality, but a bit expensive.', '2024-02-02 11:00:00'),
    (3, 3, 3, 'Average product, not as expected.', '2024-02-03 12:00:00'),
    (4, 4, 5, 'Perfect fit and great design!', '2024-02-04 13:00:00'),
    (5, 5, 2, 'Not satisfied with the material.', '2024-02-05 14:00:00'),
    (6, 6, 4, 'Good value for the price.', '2024-02-06 15:00:00'),
    (7, 7, 1, 'Very disappointed, item arrived damaged.', '2024-02-07 16:00:00'),
    (8, 8, 3, 'The product is okay, but delivery was late.', '2024-02-08 17:00:00'),
    (9, 9, 5, 'Exceeded my expectations, would buy again.', '2024-02-09 08:00:00'),
    (10, 10, 2, 'Not as described, too small.', '2024-02-10 09:00:00'),
    (11, 11, 4, 'Nice quality and fast shipping.', '2024-02-11 10:00:00'),
    (12, 12, 3, 'It’s okay, but I was expecting better.', '2024-02-12 11:00:00'),
    (13, 13, 5, 'Fantastic! Would highly recommend.', '2024-02-13 12:00:00'),
    (14, 14, 4, 'Good, but not perfect.', '2024-02-14 13:00:00'),
    (15, 15, 2, 'Didn’t meet my expectations.', '2024-02-15 14:00:00'),
    (16, 16, 3, 'It’s okay, not great.', '2024-02-16 15:00:00'),
    (17, 17, 5, 'Absolutely love it!', '2024-02-17 16:00:00'),
    (18, 18, 4, 'Very good quality and fast delivery.', '2024-02-18 17:00:00'),
    (19, 19, 2, 'Poor quality, would not recommend.', '2024-02-19 08:00:00'),
    (20, 20, 4, 'Satisfied with the product.', '2024-02-20 09:00:00');
    
 
-- Create the ProductPreferences table
CREATE TABLE ProductPreferences (
    PreferenceID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    ProductID INT,
    PreferenceScore INT, -- This could be a score based on order frequency, quantity, etc.
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Populate the ProductPreferences table
INSERT INTO ProductPreferences (CustomerID, ProductID, PreferenceScore)
SELECT 
    o.CustomerID,
    od.ProductID,
    SUM(od.Quantity) AS PreferenceScore
FROM Orders o
INNER JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY o.CustomerID, od.ProductID;

    
    




