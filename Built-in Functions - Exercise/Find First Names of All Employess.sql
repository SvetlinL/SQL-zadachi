SELECT `first_name` 
  FROM `employees`
 WHERE `department_id` IN (3,10) 
       AND (SELECT YEAR(`hire_date`))>= 1995 
	   AND (SELECT YEAR(`hire_date`))<= 2005
       order by `employee_id` asc;