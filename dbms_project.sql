create database proj;
use proj;
create table coffee_shop(
cafe_id int primary key,
name varchar(50));

create table customer(
cust_id int primary key,
name varchar(50),
email varchar(50),
Phone_no varchar(50),
Date_Of_Birth date,
cafe_id int,
foreign key(cafe_id) references coffee_shop(cafe_id));

create table places(
order_id int primary key,
date_and_time date);

create table items(
item_id int primary key,
item_name varchar(50),
price float,
cafe_id int,
foreign key(cafe_id) references coffee_shop(cafe_id));

create table orders(
order_id int,
cust_id int,
item_id int,
foreign key(order_id) references places(order_id),
foreign key(cust_id) references customer(cust_id),
foreign key(item_id) references items(item_id),
status varchar(50),
QTy int);

create table employee(
emp_id int primary key,
name varchar(50),
phone_no varchar(50),
date_of_birth date,
date_of_joining date,
address varchar(100),
gender varchar(10),
cafe_id int,
foreign key(cafe_id) references coffee_shop(cafe_id));

create table bills(
bill_id int primary key,
order_id int,
total_amt float,
tip_amt float,
cust_id int,
foreign key(order_id) references places(order_id),
foreign key(cust_id) references customer(cust_id));

create table barista(
emp_id int primary key,
foreign key(emp_id) references employee(emp_id),
expertise varchar(100));

create table chef(
chef_id int primary key,
specialization varchar(100));

create table manager(
man_id int primary key,
 experience varchar(50));
 -- Table structure for login_admin
CREATE TABLE login_admin (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(50)
);

-- Table structure for login_manager
CREATE TABLE login_manager (
    manager_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(50)
);

-- Table structure for login_kitchen
CREATE TABLE login_kitchen (
    kitchen_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(50)
);

 
 show tables;

-- Entries for coffee_shop table
INSERT INTO coffee_shop (cafe_id, name) VALUES
(1, 'Java Junction'),
(2, 'Mocha House'),
(3, 'Espresso Express'),
(4, 'Caffeine Corner'),
(5, 'Bean Buzz'),
(6, 'The Daily Grind'),
(7, 'Caffeine Fix'),
(8, 'Bean and Brew'),
(9, 'Perk Up Cafe'),
(10, 'Brewed Awakening'),
(11, 'Morning Buzz'),
(12, 'Bean Barn'),
(13, 'Cuppa Cafe'),
(14, 'Brew Time'),
(15, 'The Beanery'),
(16, 'Brewed Bliss'),
(17, 'Bean Haven'),
(18, 'Morning Bean'),
(19, 'Bean and Grind'),
(20, 'Caffeine Club');

-- Entries for customer table
INSERT INTO customer (cust_id, name, email, Phone_no, Date_Of_Birth, cafe_id) VALUES
(1, 'Alice Johnson', 'alice@example.com', 1234567890, '1990-05-15', 1),
(2, 'Bob Smith', 'bob@example.com', 9876543210, '1985-10-20', 2),
(3, 'Charlie Brown', 'charlie@example.com', 5551234567, '1995-03-25', 3),
(4, 'David Lee', 'david@example.com', 3335557777, '1988-12-10', 4),
(5, 'Emma Taylor', 'emma@example.com', 1112223333, '1992-07-05', 5),
(6, 'Fiona Brown', 'fiona@example.com', 5554443333, '1994-09-12', 6),
(7, 'George Wilson', 'george@example.com', 2223334444, '1987-11-28', 7),
(8, 'Hannah Miller', 'hannah@example.com', 7776665555, '1998-02-18', 8),
(9, 'Ian Thompson', 'ian@example.com', 8887776666, '1986-07-22', 9),
(10, 'Jessica Clark', 'jessica@example.com', 3332221111, '1997-04-05', 10),
(11, 'Kevin Brown', 'kevin@example.com', 5556667777, '1992-08-12', 11),
(12, 'Linda Wilson', 'linda@example.com', 2223334444, '1989-04-28', 12),
(13, 'Mike Johnson', 'mike@example.com', 7778889999, '1994-02-18', 13),
(14, 'Nancy Miller', 'nancy@example.com', 8889990000, '1987-07-22', 14),
(15, 'Olivia Thompson', 'olivia@example.com', 3334445555, '1993-04-05', 15),
(16, 'Peter Clark', 'peter@example.com', 5556667777, '1992-08-12', 16),
(17, 'Rachel Moore', 'rachel@example.com', 2223334444, '1990-04-28', 17),
(18, 'Samuel Hall', 'samuel@example.com', 7778889999, '1995-02-18', 18),
(19, 'Victoria Green', 'victoria@example.com', 8889990000, '1988-07-22', 19),
(20, 'William Baker', 'william@example.com', 3334445555, '1994-04-05', 20);

-- Entries for places table
INSERT INTO places (order_id, date_and_time) VALUES
(101, '2024-04-01'),
(102, '2024-04-02'),
(103, '2024-04-03'),
(104, '2024-04-04'),
(105, '2024-04-05'),
(106, '2024-04-06'),
(107, '2024-04-07'),
(108, '2024-04-08'),
(109, '2024-04-09'),
(110, '2024-04-10'),
(111, '2024-04-11'),
(112, '2024-04-12'),
(113, '2024-04-13'),
(114, '2024-04-14'),
(115, '2024-04-15'),
(116, '2024-04-16'),
(117, '2024-04-17'),
(118, '2024-04-18'),
(119, '2024-04-19'),
(120, '2024-04-20');

-- Entries for items table
INSERT INTO items (item_id, item_name, price, cafe_id) VALUES
(201, 'Latte', 3.50, 1),
(202, 'Cappuccino', 4.00, 2),
(203, 'Espresso', 2.50, 3),
(204, 'Mocha', 4.50, 4),
(205, 'Americano', 3.00, 5),
(206, 'Flat White', 4.00, 6),
(207, 'Macchiato', 3.50, 7),
(208, 'Affogato', 5.50, 8),
(209, 'Turkish Coffee', 4.50, 9),
(210, 'Irish Coffee', 6.00, 10),
(211, 'Vanilla Latte', 4.50, 11),
(212, 'Hazelnut Cappuccino', 5.00, 12),
(213, 'Decaf Espresso', 3.00, 13),
(214, 'White Mocha', 5.50, 14),
(215, 'Cold Brew', 4.00, 15),
(216, 'Iced Latte', 4.50, 16),
(217, 'Mocha Frappe', 5.00, 17),
(218, 'Matcha Latte', 4.00, 18),
(219, 'Pumpkin Spice Latte', 5.50, 19),
(220, 'Chai Tea Latte', 4.00, 20);

-- Entries for orders table
INSERT INTO orders (order_id, cust_id, item_id, status, QTy) VALUES
(101, 1, 201, 'completed', 2),
(102, 2, 202, 'completed', 1),
(103, 3, 203, 'completed', 3),
(104, 4, 204, 'completed', 1),
(105, 5, 205, 'completed', 2),
(106, 6, 206, 'completed', 2),
(107, 7, 207, 'completed', 1),
(108, 8, 208, 'completed', 3),
(109, 9, 209, 'completed', 1),
(110, 10, 210, 'completed', 2),
(111, 11, 211, 'completed', 2),
(112, 12, 212, 'completed', 1),
(113, 13, 213, 'completed', 3),
(114, 14, 214, 'completed', 1),
(115, 15, 215, 'completed', 2),
(116, 16, 216, 'completed', 2),
(117, 17, 217, 'completed', 1),
(118, 18, 218, 'completed', 3),
(119, 19, 219, 'completed', 1),
(120, 20, 220, 'completed', 2);

-- Entries for employee table
INSERT INTO employee (emp_id, name, phone_no, date_of_birth, date_of_joining, address, gender, cafe_id) VALUES
(301, 'Emily Davis', 9998887777, '1992-08-20', '2020-01-15', '123 Main St, Cityville', 'female', 1),
(302, 'Frank Wilson', 7778889999, '1990-04-10', '2019-05-20', '456 Elm St, Townsville', 'male', 2),
(303, 'Grace Martinez', 5556667777, '1995-11-05', '2021-03-10', '789 Oak St, Villageton', 'female', 3),
(304, 'Henry Anderson', 3334445555, '1988-01-15', '2018-02-25', '101 Pine St, Hamletown', 'male', 4),
(305, 'Ivy Thompson', 1112223333, '1993-06-30', '2022-04-05', '210 Cedar St, Burgville', 'female', 5),
(306, 'Jack Harris', 4445556666, '1991-03-15', '2023-01-10', '321 Oak St, Villageton', 'male', 6),
(307, 'Kelly Turner', 6667778888, '1997-06-25', '2022-02-20', '456 Maple St, Townsville', 'female', 7),
(308, 'Liam White', 2223334444, '1993-10-08', '2021-03-05', '789 Pine St, Hamletown', 'male', 8),
(309, 'Mia Rodriguez', 8889990000, '1996-12-20', '2020-04-15', '101 Elm St, Cityville', 'female', 9),
(310, 'Noah Evans', 7778889999, '1990-08-30', '2019-05-01', '210 Cedar St, Burgville', 'male', 10),
(311, 'Oliver Evans', 4445556666, '1990-03-15', '2023-01-10', '123 Main St, Cityville', 'male', 11),
(312, 'Pamela Turner', 6667778888, '1997-06-25', '2022-02-20', '456 Elm St, Townsville', 'female', 12),
(313, 'Quinn Martinez', 2223334444, '1993-10-08', '2021-03-05', '789 Oak St, Villageton', 'male', 13),
(314, 'Rachel Rodriguez', 8889990000, '1996-12-20', '2020-04-15', '101 Pine St, Hamletown', 'female', 14),
(315, 'Samuel White', 7778889999, '1990-08-30', '2019-05-01', '210 Cedar St, Burgville', 'male', 15),
(316, 'Alexis Baker', 4445556666, '1991-03-15', '2023-01-10', '123 Main St, Cityville', 'female', 16),
(317, 'Brandon Hill', 6667778888, '1997-06-25', '2022-02-20', '456 Elm St, Townsville', 'male', 17),
(318, 'Catherine Allen', 2223334444, '1993-10-08', '2021-03-05', '789 Oak St, Villageton', 'female', 18),
(319, 'Daniel Scott', 8889990000, '1996-12-20', '2020-04-15', '101 Elm St, Cityville', 'male', 19),
(320, 'Elizabeth King', 7778889999, '1990-08-30', '2019-05-01', '210 Cedar St, Burgville', 'female', 20);

-- Entries for bills table
INSERT INTO bills (bill_id, order_id, total_amt, tip_amt, cust_id) VALUES
(421, 101, 10.50, 2.00, 1),
(402, 102, 4.00, 1.00, 2),
(403, 103, 10.50, 2.50, 3),
(404, 104, 6.00, 1.50, 4),
(405, 105, 8.00, 1.50, 5),
(406, 106, 10.00, 1.50, 6),
(407, 107, 4.00, 1.00, 7),
(408, 108, 16.50, 3.00, 8),
(409, 109, 6.00, 1.50, 9),
(410, 110, 13.00, 2.00, 10),
(411, 111, 9.00, 1.50, 11),
(412, 112, 5.50, 1.00, 12),
(413, 113, 13.50, 3.00, 13),
(414, 114, 7.50, 1.50, 14),
(415, 115, 8.00, 1.50, 15),
(416, 116, 9.00, 1.50, 16),
(417, 117, 5.50, 1.00, 17),
(418, 118, 13.50, 3.00, 18),
(419, 119, 7.50, 1.50, 19),
(420, 120, 8.00, 1.50, 20);

-- Entries for barista table
INSERT INTO barista (emp_id, expertise) VALUES
(301, 'Latte Art'),
(302, 'Espresso Mastery'),
(303, 'Cappuccino Craftsmanship'),
(304, 'Cold Brew Connoisseur'),
(305, 'Mocha Expertise'),
(306, 'Pour Over Perfection'),
(307, 'Iced Coffee Specialist'),
(308, 'Nitro Cold Brew Proficiency'),
(309, 'Macchiato Maestro'),
(310, 'Affogato Aficionado'),
(311, 'Vanilla Latte Virtuoso'),
(312, 'Hazelnut Cappuccino Guru'),
(313, 'Decaf Espresso Specialist'),
(314, 'White Mocha Wizard'),
(315, 'Cold Brew Artisan'),
(316, 'Iced Latte Luminary'),
(317, 'Mocha Frappe Maestro'),
(318, 'Matcha Latte Master'),
(319, 'Pumpkin Spice Latte Pro'),
(320, 'Chai Tea Latte Connoisseur');

-- Entries for chef table
INSERT INTO chef (chef_id, specialization) VALUES
(321, 'Bakery'),
(322, 'Pastry'),
(323, 'Desserts'),
(324, 'Breakfast'),
(325, 'Sandwiches'),
(326, 'Salads'),
(327, 'Soups'),
(328, 'Appetizers'),
(329, 'Pasta'),
(330, 'Pizza'),
(331, 'Seafood'),
(332, 'Grilled Dishes'),
(333, 'Vegetarian Cuisine'),
(334, 'Vegan Delicacies'),
(335, 'Gluten-Free Fare'),
(336, 'International Cuisine'),
(337, 'Gourmet Specialties'),
(338, 'Healthy Options'),
(339, 'Comfort Food'),
(340, 'Ethnic Cuisine');

-- Entries for login_admin table
INSERT INTO login_admin (admin_id, username, password) VALUES
(1, 'admin1', 'password1'),
(2, 'admin2', 'password2'),
(3, 'admin3', 'password3'),
(4, 'admin4', 'password4'),
(5, 'admin5', 'password5'),
(6, 'admin6', 'password6'),
(7, 'admin7', 'password7'),
(8, 'admin8', 'password8'),
(9, 'admin9', 'password9'),
(10, 'admin10', 'password10'),
(11, 'admin11', 'password11'),
(12, 'admin12', 'password12'),
(13, 'admin13', 'password13'),
(14, 'admin14', 'password14'),
(15, 'admin15', 'password15'),
(16, 'admin16', 'password16'),
(17, 'admin17', 'password17'),
(18, 'admin18', 'password18'),
(19, 'admin19', 'password19'),
(20, 'admin20', 'password20');

-- Entries for login_manager table
INSERT INTO login_manager (manager_id, username, password) VALUES
(21, 'manager1', 'password1'),
(22, 'manager2', 'password2'),
(23, 'manager3', 'password3'),
(24, 'manager4', 'password4'),
(25, 'manager5', 'password5'),
(26, 'manager6', 'password6'),
(27, 'manager7', 'password7'),
(28, 'manager8', 'password8'),
(29, 'manager9', 'password9'),
(30, 'manager10', 'password10'),
(31, 'manager11', 'password11'),
(32, 'manager12', 'password12'),
(33, 'manager13', 'password13'),
(34, 'manager14', 'password14'),
(35, 'manager15', 'password15'),
(36, 'manager16', 'password16'),
(37, 'manager17', 'password17'),
(38, 'manager18', 'password18'),
(39, 'manager19', 'password19'),
(40, 'manager20', 'password20');

-- Entries for login_kitchen table
INSERT INTO login_kitchen (kitchen_id, username, password) VALUES
(41, 'kitchen1', 'password1'),
(42, 'kitchen2', 'password2'),
(43, 'kitchen3', 'password3'),
(44, 'kitchen4', 'password4'),
(45, 'kitchen5', 'password5'),
(46, 'kitchen6', 'password6'),
(47, 'kitchen7', 'password7'),
(48, 'kitchen8', 'password8'),
(49, 'kitchen9', 'password9'),
(50, 'kitchen10', 'password10'),
(51, 'kitchen11', 'password11'),
(52, 'kitchen12', 'password12'),
(53, 'kitchen13', 'password13'),
(54, 'kitchen14', 'password14'),
(55, 'kitchen15', 'password15'),
(56, 'kitchen16', 'password16'),
(57, 'kitchen17', 'password17'),
(58, 'kitchen18', 'password18'),
(59, 'kitchen19', 'password19'),
(60, 'kitchen20', 'password20');

-- Entries for manager table
INSERT INTO manager (man_id, experience) VALUES
(341, 'Coffee Industry Veteran'),
(342, 'Hospitality Management Expert'),
(343, 'Business Administration Specialist'),
(344, 'Customer Service Pro'),
(345, 'Leadership Guru'),
(346, 'Financial Management Ace'),
(347, 'Team Building Master'),
(348, 'Marketing Whiz'),
(349, 'Inventory Control Specialist'),
(350, 'Staff Training Specialist'),
(351, 'Quality Control Expert'),
(352, 'Event Planning Maestro'),
(353, 'Community Engagement Champion'),
(354, 'Menu Development Specialist'),
(355, 'Operations Management Professional'),
(356, 'Vendor Relations Specialist'),
(357, 'Technology Integration Expert'),
(358, 'Sustainability Advocate'),
(359, 'Public Relations Pro'),
(360, 'Brand Ambassador Extraordinaire');



select * from employee;
