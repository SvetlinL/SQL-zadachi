create table `teachers` (
`teacher_id` int primary key auto_increment,
`name` varchar(20) not null,
`manager_id` int default null
) auto_increment = 101;

insert into `teachers` (`name`,`manager_id`)
values 
('John',null),
('Maya',106),
('Silvia',106),
('Ted',105),
('Mark',101),
('Greta',101);

alter table `teachers`
add constraint `fk_teacher_manager`
foreign key (`manager_id`)
references `teachers`(`teacher_id`);