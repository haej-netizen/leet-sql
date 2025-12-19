# Write your MySQL query statement below
select e.name, b.bonus
from Employee e
left outer join Bonus b
on e.empId = b.empId
where b.bonus < 1000 or b.bonus is null
# LEFT JOIN을 쓸때 WHERE 절 때문에 INNER JOIN처럼 바뀜-> on 에 조건을 포함시키는 방법으로도 해결 가능