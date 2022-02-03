use `minions`;

create table `users` (
`id` int primary key auto_increment,
`username` varchar(50) unique not null,
`password` varchar(50) not null,
`profile_picture` blob,
`last_login_time` timestamp,
`is_deleted` boolean
); 

insert into `users` (`username`, `password`)
values
('aaaaaa', '11111111'),
('bbbbbb', '11111111'),
('cccccc', '11111111'),
('dddddd', '11111111'),
('eeeeee', '11111111');