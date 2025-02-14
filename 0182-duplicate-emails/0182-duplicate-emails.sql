/* Write your T-SQL query statement below */
-- select email from (select email, count(email) as count
-- from Person
-- group by email
-- having count(email) > 1) x

select email
from Person
group by email
having count(email) > 1