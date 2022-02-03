use `minions`;

create table `minions` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(50),
    `age` INT,
    PRIMARY KEY(`id`)
);

create table `towns`(
    `town_id` INT AUTO_INCREMENT,
    `name` VARCHAR(50),
    PRIMARY KEY(`town_id`)
);
