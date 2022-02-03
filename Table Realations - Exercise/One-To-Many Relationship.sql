create table `manufacturers`(
`manufacturer_id` int primary key auto_increment,
`name` varchar(30),
`established_on` date
);

insert into `manufacturers`(`name`,`established_on`)
values
('BMW','1916-03-01'),
('Tesla','2003-01-01'),
('Lada','1966-05-01');

create table `models`(
`model_id` int primary key auto_increment,
`name` varchar(30),
`manufacturer_id` int
);

alter table `models` auto_increment=101;
insert into `models`(`name`,`manufacturer_id`)
values
('X1',1),
('i6',1),
('Model S',2),
('Model X',2),
('Model 3',2),
('Nova',3);

alter table `models`
add constraint `fk_models_manufacturers`
foreign key (`manufacturer_id`)
references `manufacturers`(`manufacturer_id`);