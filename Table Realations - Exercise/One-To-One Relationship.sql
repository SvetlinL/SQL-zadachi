create table `people`(
`person_id` int primary key auto_increment,
`first_name` varchar(30),
`salary` decimal(7,2),
`passport_id` int 
);

create table `passports`(
`passport_id` int primary key ,
`passport_number` varchar(30) unique
);

insert into `people`(`first_name`, `salary`,`passport_id`)
values
('Roberto',43300.00,102),
('Tom',56100.00,103),
('Yana',60200.00,101);

insert into `passports`(`passport_id`,`passport_number`)
values 
(101,'N34FG21B'),
(102,'K65LO4R7'),
(103,'ZE657QP2');


alter table `people`
add constraint `fk_people_passports`
foreign key(`passport_id`)
references `passports`(`passport_id`);



-- ----------------------------------------------------------------------------------------

create table `people`(
`person_id` int auto_increment unique not null,
`first_name` varchar(30) not null,
`salary` decimal(10,2) not null default 0,
`passport_id` int not null unique
);


create table `passports`(
`passport_id` int auto_increment unique not null ,
`passport_number` varchar(30) unique not null unique
) auto_increment = 101;

insert into `people` (`first_name`,`salary`,`passport_id`)
values
('Roberto',43300.00,102),
('Tom',56100.00,103),
('Yana',60200.00,101);

insert into `passports`(`passport_number`)
values 
('N34FG21B'),
('K65LO4R7'),
('ZE657QP2');

alter table `people`
    add constraint `pk_people`
        primary key (`person_id`),
    add constraint `fk_people_passports`
        foreign key (`passport_id`)    
        references `passports`(`passport_id`);
