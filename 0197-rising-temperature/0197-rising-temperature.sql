# Write your MySQL query statement below
select w1.id
from Weather w1
join Weather w2
ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)   
#DATE_ADD(기준날짜, INTERVAL 숫자 단위)-날짜의 일정시간을 더해주는 함수
where w1.temperature > w2.temperature