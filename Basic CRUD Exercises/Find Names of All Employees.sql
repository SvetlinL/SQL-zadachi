select concat_ws(" ",`first_name`,`middle_name`,`last_name`) as `Full Name` from `employees`
where `salary`= 25000 or `salary`= 14000 or `salary`= 12500 or `salary`= 23600; 