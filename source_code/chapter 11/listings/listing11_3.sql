set linesize 70
column department_name hea Department Name for a25
column last_name head 'Employee|Last Name' for a15
column first_name head 'Employee|First Name' for a15
column wages for $99,999.00
column sysdate noprint old_val day
break on department_name page on last_name
compute sum label 'Total Department Wages' of wages on department_name
ttitle center 'Departmental Employees And Wages'
btitle day center sql.pno
select sysdate, department_name, last_name, first_name,
       wages
from employee, department
where fk_department = department
order by 2,3;
clear columns
clear breaks
ttitle off
btitle off
clear computes
 
