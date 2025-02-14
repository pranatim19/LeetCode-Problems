/* Write your T-SQL query statement below */
select c.name as customers
from Customers c
left join Orders o
on c.id = o.customerid
where customerid is null
