/* Write your T-SQL query statement below */
select emp.name as Employee
from Employee emp
join Employee mng
on emp.managerId = mng.id
and emp.salary > mng.salary