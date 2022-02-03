create table `towns` (
`id` int primary key auto_increment,
`name` varchar(50) not null
);

create table `addresses`(
`id` int primary key auto_increment,
`address_text` varchar(50) not null,
`town_id` int
);

create table `departments` (
`id` int primary key auto_increment,
`name` varchar(50) not null
);

create table `employees`(
`id` int primary key auto_increment,
`first_name` varchar(50) not null,
 `middle_name` varchar(50),
 `last_name` varchar(50) not null,
 `job_title` varchar(50),
 `department_id` int not null,
 `hire_date` date,
 `salary` decimal(19,2),
 `address_id` int,
 constraint fk_employees_departments
 foreign key `employees`(`department_id`)
 references `departments`(`id`),
 constraint fk_employees_addresses
 foreign key `employees`(`address_id`)
 references `addresses`(`id`)
 );
 
 insert into `towns` (`name`)
values
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas');

insert into `departments`(`name`)
values
('Engineering'),
 ('Sales'),
 ('Marketing'),
 ('Software Development'),
 ('Quality Assurance');
 
insert into `employees` (`first_name`,`middle_name`,`last_name`,`job_title`,`department_id`,`hire_date`,`salary`)
values 
('Ivan', 'Ivanov', 'Ivanov','.NET Developer',4,'2013-02-01', 3500.00),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer',1,'2004-03-02',4000.00),
('Maria', 'Petrova', 'Ivanova', 'Intern',5,'2016-08-28',525.25),
('Georgi', 'Terziev', 'Ivanov', 'CEO',2,'2007-12-09',3000.00),
('Peter', 'Pan', 'Pan', 'Intern',3,'2016-08-28',599.88);
 
