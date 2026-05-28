CREATE database food_delivery;
USE food_delivery;

	CREATE TABLE customers(
	custom_ID int primary key,
	custom_name varchar(100),
	city varchar(50),
	phone varchar(15)
	);
show tables;

	CREATE TABLE restaurants(
    rest_ID int primary key,
    rest_name varchar(100),
    location varchar(100),
    rating decimal(2,1)
    );
    CREATE TABLE menu_items(
    item_ID int primary key,
    rest_ID INT,
    item_name varchar (100),
    price decimal(10,2),
    FOREIGN KEY(rest_ID)
    REFERENCES restaurants(rest_ID)
    );
    CREATE TABLE orders(
    order_id int primary key,
    custom_ID INT,
    rest_ID int,
    order_date DATE,
    total_amount DECIMAL(10,2),
    foreign key(custom_ID)
    references customers(custom_ID),
    foreign key(rest_ID)
    references restaurants(rest_ID)
    );
    
    CREATE TABLE delivery_partners (
    partner_id INT PRIMARY KEY,
    partner_name VARCHAR(100),
    vehicle_type VARCHAR(50)
);
    
  INSERT INTO restaurants
VALUES
(1, 'Dominos', 'Nagpur', 4.5),
(2, 'Pizza Hut', 'Bhopal', 4.2),
(3, 'Burger King', 'Delhi', 4.0),
(4, 'KFC', 'Mumbai', 4.3),
(5, 'Subway', 'Pune', 4.1),
(6, 'McDonalds', 'Hyderabad', 4.4),
(7, 'Haldirams', 'Nagpur', 4.6),
 (8, 'Barbeque Nation', 'Pune', 4.7),
(9, 'Behrouz Biryani', 'Delhi', 4.5),
(10, 'Cafe Coffee Day', 'Nagpur', 4.0),
(11, 'Wow Momo', 'Mumbai', 4.2),
(12, 'Bikanervala', 'Jaipur', 4.4),
(13, 'The Belgian Waffle', 'Hyderabad', 4.6),
(14, 'Saravana Bhavan', 'Chennai', 4.8),
(15, 'Mainland China', 'Bangalore', 4.3);
    
INSERT INTO customers
VALUES
(1, 'Kashish', 'Nagpur', '9876543210'),
(2, 'Rahul', 'Bhopal', '9123456780'),
(3, 'Priya', 'Delhi', '9988776655'),
(4, 'Aman', 'Mumbai', '9871234567'),
(5, 'Sneha', 'Pune', '9012345678'),
(6, 'Rohit', 'Hyderabad', '9090909090'),
(7, 'Anjali', 'Nagpur', '8888888888'),
(8, 'Vikas', 'Delhi', '7777777777'),
(9, 'Arjun', 'Chennai', '9898989898'),
(10, 'Meera', 'Bangalore', '9787878787'),
(11, 'Kunal', 'Pune', '9676767676'),
(12, 'Pooja', 'Mumbai', '9565656565'),
(13, 'Yash', 'Nagpur', '9454545454'),
(14, 'Simran', 'Delhi', '9343434343'),
(15, 'Nikhil', 'Hyderabad', '9232323232'),
(16, 'Tanya', 'Jaipur', '9121212121'),
(17, 'Harsh', 'Bhopal', '9010101010'),
(18, 'Neha', 'Lucknow', '8909090909'),
(19, 'Aditya', 'Indore', '8797979797'),
(20, 'Riya', 'Surat', '8686868686');

INSERT INTO menu_items
VALUES
(101, 1, 'Cheese Pizza', 299),
(102, 1, 'Garlic Bread', 149),
(103, 2, 'Farmhouse Pizza', 349),
(104, 3, 'Veg Burger', 199),
(105, 4, 'Chicken Bucket', 599),
(106, 5, 'Veggie Delight', 249),
(107, 6, 'McAloo Tikki', 129),
(108, 7, 'Raj Kachori', 179),
(109, 2, 'Pepsi', 99),
(110, 3, 'French Fries', 149),
(111, 8, 'Paneer Tikka', 399),
(112, 9, 'Chicken Biryani', 349),
(113, 10, 'Cold Coffee', 199),
(114, 11, 'Steam Momos', 179),
(115, 12, 'Chole Bhature', 220),
(116, 13, 'Chocolate Waffle', 250),
(117, 14, 'Masala Dosa', 180),
(118, 15, 'Hakka Noodles', 320);

INSERT INTO orders
VALUES
(1001, 1, 1, '2026-05-10', 448),
(1002, 2, 2, '2026-05-11', 349),
(1003, 3, 3, '2026-05-12', 199),
(1004, 4, 4, '2026-05-12', 599),
(1005, 5, 5, '2026-05-13', 249),
(1006, 6, 6, '2026-05-14', 129),
(1007, 7, 7, '2026-05-15', 179),
(1008, 1, 2, '2026-05-16', 448),
(1009, 2, 3, '2026-05-16', 348),
(1010, 3, 1, '2026-05-17', 299),
(1011, 1, 4, '2026-05-17', 599),
(1012, 1, 7, '2026-05-18', 179),
(1013, 5, 1, '2026-05-18', 299),
(1014, 9, 14, '2026-05-18', 180),
(1015, 10, 15, '2026-05-19', 320),
(1016, 13, 9, '2026-05-19', 349),
(1017, 20, 11, '2026-05-20', 179);

INSERT INTO delivery_partners
VALUES
(1, 'Ramesh', 'Bike'),
(2, 'Suresh', 'Scooty'),
(3, 'Akash', 'Bicycle'),
(4, 'Vijay', 'Bike'),
(5, 'Deepak', 'Bike'),
(6, 'Manoj', 'Scooty'),
(7, 'Ritik', 'Bike'),
(8, 'Farhan', 'Bicycle'),
(9, 'Ajay', 'Scooty'),
(10, 'Sameer', 'Bike'),
(11, 'Nitin', 'Electric Scooter'),
(12, 'Lokesh', 'Bike'),
(13, 'Faiz', 'Bicycle'),
(14, 'Abhishek', 'Scooty'),
(15, 'Karan', 'Bike');
select * from customers ;
SELECT * FROM restaurants;
SELECT * FROM orders;
-- HIGHEST RATED RESTAURANT
SELECT rest_name, rating
FROM restaurants
ORDER BY rating DESC
LIMIT 1;
-- Most Expensive Food Item
SELECT item_name, price
FROM menu_items
ORDER BY price DESC;
-- Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM orders;
-- Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;
-- JOIN QUERIES (Customer + Restaurant + Amount)
SELECT customers.custom_name,
       restaurants.rest_name,
       orders.total_amount
FROM orders
JOIN customers
ON orders.custom_ID = customers.custom_ID
JOIN restaurants
ON orders.rest_ID = restaurants.rest_ID;
-- GROUP BY Queries (Revenue by Restaurant)
SELECT restaurants.rest_name,
SUM(orders.total_amount) AS revenue
FROM orders
JOIN restaurants
ON orders.rest_ID = restaurants.rest_ID
GROUP BY restaurants.rest_name;
-- Orders Per Customer
SELECT customers.custom_name,
COUNT(orders.order_id) AS total_orders
FROM orders
JOIN customers
ON orders.custom_ID = customers.custom_ID
GROUP BY customers.custom_name;
-- Customers who spent more than 500
SELECT customers.custom_name,
SUM(orders.total_amount) AS total_spent
FROM orders
JOIN customers
ON orders.custom_ID = customers.custom_ID
GROUP BY customers.custom_name
HAVING total_spent > 500;
