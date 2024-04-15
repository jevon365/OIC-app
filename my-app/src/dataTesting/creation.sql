CREATE SCHEMA IF NOT EXISTS restaurant_sales;
USE restaurant_sales;

-- Customers Table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    PRIMARY KEY (customer_id)
);

-- Menu Items Table
CREATE TABLE Menu (
    product_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    category ENUM('meal', 'drink'),
    PRIMARY KEY (product_id)
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT,
    customer_id INT,
    start_datetime DATETIME,
    end_datetime DATETIME,
    total_amount DECIMAL(10, 2),
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Order Details Table
CREATE TABLE Order_Details (
    order_detail_id INT AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_detail_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Menu(product_id)
);

-- Payments Table
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT,
    order_id INT,
    payment_datetime DATETIME,
    amount DECIMAL(10, 2),
    payment_method ENUM('cash', 'credit card', 'online'),
    PRIMARY KEY (payment_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Inserting Meals
INSERT INTO Menu (name, price, category) VALUES
('Pizza', 12.50, 'meal'),
('Burger', 10.00, 'meal'),
('Pasta', 8.50, 'meal'),
('Salad', 7.00, 'meal'),
('Steak', 15.00, 'meal'),
('Fish and Chips', 11.00, 'meal'),
('Tacos', 9.00, 'meal'),
('Soup', 6.00, 'meal'),
('Sandwich', 6.50, 'meal'),
('Fried Chicken', 9.75, 'meal');

-- Inserting Drinks
INSERT INTO Menu (name, price, category) VALUES
('Soda', 2.00, 'drink'),
('Coffee', 3.00, 'drink'),
('Tea', 2.50, 'drink'),
('Beer', 4.00, 'drink'),
('Wine', 5.00, 'drink');

