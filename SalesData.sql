create database SalesData;
use SalesData;
-- Create a table for customers
CREATE TABLE customers (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50),
  phone VARCHAR(20),
  address VARCHAR(100)
);

-- Create a table for orders
CREATE TABLE orders (
  id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Create a table for products
CREATE TABLE products (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  category VARCHAR(50),
  description TEXT,
  price DECIMAL(10,2)
);

-- Create a table for order items
CREATE TABLE order_items (
  id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  price DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);
  

 

 -- Insert data into the customers table
INSERT INTO customers (id, name, email, phone, address)
VALUES (1, 'John Doe', 'johndoe@example.com', '555-1234', '123 Main St'),
       (2, 'Jane Smith', 'janesmith@example.com', '555-5678', '456 Elm St'),
       (3, 'Bob Johnson', 'bobjohnson@example.com', '555-9101', '789 Oak St');

-- Insert data into the products table
INSERT INTO products (id, name, category, description, price)
VALUES (1, 'iPhone X', 'Electronics', 'Apple iPhone X 64GB', 999.99),
       (2, 'Samsung Galaxy S9', 'Electronics', 'Samsung Galaxy S9 64GB', 899.99),
       (3, 'MacBook Pro', 'Electronics', 'Apple MacBook Pro 13-inch', 1299.99),
       (4, 'Nike Air Max', 'Shoes', 'Mens Nike Air Max Running Shoes', 129.99),
       (5, 'Adidas Ultraboost', 'Shoes', 'Mens Adidas Ultraboost Running Shoes', 149.99);

-- Insert data into the orders table
INSERT INTO orders (id, customer_id, order_date, total_amount)
VALUES (1, 1, '2022-04-01', 999.99),
       (2, 1, '2022-04-15', 1299.99),
       (3, 2, '2022-04-20', 149.99);

-- Insert data into the order_items table
INSERT INTO order_items (id, order_id, product_id, quantity, price)
VALUES (1, 1, 1, 1, 999.99),
       (2, 2, 3, 1, 1299.99),
       (3, 3, 5, 1, 149.99);

