-- Deletes any databases with the desired name
DROP DATABASE IF EXISTS bamazon_db;
-- Creates a database for the desired name
CREATE DATABASE bamazon_db;
-- Sets your database for use
USE bamazon_db;
-- Creates a table with items and values
CREATE TABLE products (
  item_id INTEGER(1000) NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price DECIMAL(5,2),
  stock_quantity INTEGER(10),
-- Primary key tells node app what to use as a selector
  PRIMARY KEY (item_id)
);
-- Inserts data into rows and columns
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (01, "Wrench", "Tools", 9.95, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (02, "Screwdriver", "Tools", 4.95, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (03, "Soap", "Hygiene", .95, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (04, "Toothpaste", "Hygiene", 2.95, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (05, "Baseball Bat", "Sporting Goods", 59.95, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (06, "Baseball Glove", "Sporting Goods", 39.95, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (07, "Wrist Watch", "Jewlery", 599.95, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (08, "Earings", "Jewlery", 49.95, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (09, "Cereal", "Food", 3.95, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (10, "Beef Jerky", "Food", 7.95, 5);