use `minions`;

create table `people` (
`id` int primary key auto_increment,
`name` varchar(50) not null,
`picture` blob,
`height` double(5,2),
`weight` double(5,2),
`gender` char(1) not null,
`birthdate` date not null,
`biography` text
);

insert into `people` (`name`, `gender`, `birthdate`)
VALUES 
("lapalpasd", "m", '2000-10-15'),
("asdasdasd", "f", '1990-5-20'),
("asdadsd", "m", '1987-2-20'),
("qweqwewq", "f", '1986-5-5'),
("qweqweqwe", "m", '1987-2-2');
