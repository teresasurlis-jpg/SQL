# Teresa Surlis

use servam_Payroll;

# Query 1
select e.employee_id, last_name, first_name, department_name, wage as Pay_PT, salary as Pay_FT
from Employee e left join Parttime p on
	e.employee_id=p.employee_id left join Fulltime f on 
    e.employee_id=f.employee_id left join Department d on 
    e.department_id=d.department_id
order by last_name;

# Query 2
select department_name, sum(amount) as total_payroll
from Employee e inner join Paycheck p on
	e.employee_id=p.employee_id inner join Department d on
    e.department_id=d.department_id
group by department_name
order by department_name;

# Query 3
select e.employee_id, e.last_name as employeeLastName, e.first_name as employeeFirstName, e.supervisor_id, m.last_name as supervisorLastName, m.first_name as supervisorFirstName
from Employee e left join Employee m on
	e.supervisor_id=m.employee_id;
    
    