# Write your MySQL query statement below
select a.player_id, min(event_date) as first_login  # min : 각 player_id별로 가장 이른 날짜 반환(최초 로그인 시점)
from Activity a
group by player_id
