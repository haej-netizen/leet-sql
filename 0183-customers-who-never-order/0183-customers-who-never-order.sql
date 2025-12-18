# Write your MySQL query statement below
select c.name as Customers
from Customers c
left join Orders o
on c.id = o.customerId         # 조인은 열의 명칭 다른거랑 상관없이 가능
where o.customerId is null     # left join을 했을때 같은게 없는 것만 추출하는 것