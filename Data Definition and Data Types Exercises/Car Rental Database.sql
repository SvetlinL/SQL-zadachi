create schema `car_rental`;
use `car_rental`;

create table `categories`(
`id` int primary key auto_increment,
 `category` varchar(40),
 `daily_rate` double,
 `weekly_rate` double ,
 `monthly_rate` double ,
 `weekend_rate` double
 );
insert into `categories` (`category`)
values 
('asdasdsa'),
('eeeeeeee'),
('wwwwwwww');

create table `cars`(
`id` int primary key auto_increment,
 `plate_number` varchar(20),
 `make` varchar(20),
 `car_year` int ,
 `category_id` int,
 `doors` int,
 `picture` blob,
 `car_condition` text,
 `available` boolean
 );
 
 insert into `cars` (`plate_number`)
 values
 ('asdasdasd'),
 ('qqqqqqqqq'),
 ('wwwwwwwww');
 
 create table `employees`(
 `id`int primary key auto_increment,
 `first_name` varchar(50),
 `last_name` varchar(50),
 `title` varchar(50),
 `notes` text
 );
 
INSERT INTO `employees` (`first_name`, `last_name`)
VALUES 
('TestName1', 'TestName1'),
('TestName2', 'TestName2'),
('TestName3', 'TestName3');

create table `customers`(
`id` int primary key auto_increment,
`driver_licence_number` varchar(20),
`full_name` varchar (50),
`address` varchar(50),
`city` varchar(10),
`zip_code` varchar (10),
`notes` text
);

INSERT INTO `customers` (`driver_licence_number`, `full_name`)
VALUES 
('TestName1', 'TestName1'),
('TestName2', 'TestName2'),
('TestName3', 'TestName3');

create table `rental_orders`(
`id` int primary key auto_increment,
`employee_id` int,
`customer_id` int,
`car_id` int,
`car_condition` varchar(50),
 `tank_level` varchar(20),
 `kilometrage_start` int,
 `kilometrage_end` int,
 `total_kilometrage` int,
 `start_date` date,
 `end_date` date,
 `total_days` int,
 `rate_applied` double,
 `tax_rate` double,
 `order_status` varchar(20),
 `notes` text
 );
 
 INSERT INTO `rental_orders` (`employee_id`, `customer_id`)
VALUES 
(1, 2),
(2, 3),
(3, 1);