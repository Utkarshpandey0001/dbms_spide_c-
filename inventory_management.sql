mysql -u root -p
CREATE DATABASE inventoryDB;
USE inventoryDB;
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2),
    quantity INT,
    category VARCHAR(255)
);
INSERT INTO products (name, description, price, quantity, category) VALUES
('Laptop', 'A high-performance laptop', 999.99, 10, 'Electronics'),
('Smartphone', 'A latest model smartphone', 699.99, 25, 'Electronics'),
('Office Chair', 'Ergonomic office chair', 150.00, 50, 'Furniture'),
('Coffee Maker', 'Automatic coffee maker', 79.99, 30, 'Appliances'),
('Desk Lamp', 'LED desk lamp', 29.99, 100, 'Office Supplies');
SELECT * FROM products;
INSERT INTO products (name, description, price, quantity, category) VALUES
('Headphones', 'Wireless over-ear headphones', 199.99, 20, 'Electronics'),
('Gaming Mouse', 'High precision gaming mouse', 49.99, 15, 'Electronics'),
('Standing Desk', 'Adjustable height standing desk', 299.99, 8, 'Furniture');
SELECT * FROM products;
SELECT * FROM products WHERE price < 100;
SELECT * FROM products WHERE quantity > 20;
UPDATE products SET price = 39.99 WHERE name = 'Gaming Mouse';
DELETE FROM products WHERE name = 'Desk Lamp';

//final result
+----+---------------+---------------------------------+--------+----------+-------------+
| id | name          | description                     | price  | quantity | category    |
+----+---------------+---------------------------------+--------+----------+-------------+
|  1 | Laptop        | A high-performance laptop       | 999.99 |       10 | Electronics |
|  2 | Smartphone    | A latest model smartphone       | 699.99 |       25 | Electronics |
|  3 | Office Chair  | Ergonomic office chair          | 150.00 |       50 | Furniture   |
|  4 | Coffee Maker  | Automatic coffee maker          |  79.99 |       30 | Appliances  |
|  6 | Headphones    | Wireless over-ear headphones    | 199.99 |       20 | Electronics |
|  7 | Gaming Mouse  | High precision gaming mouse     |  39.99 |       15 | Electronics |
|  8 | Standing Desk | Adjustable height standing desk | 299.99 |        8 | Furniture   |
+----+---------------+---------------------------------+--------+----------+-------------+
7 rows in set (0.00 sec)