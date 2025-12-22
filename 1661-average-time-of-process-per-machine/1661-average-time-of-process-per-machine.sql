# Write your MySQL query statement below
SELECT
    a1.machine_id,
    ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
FROM Activity a1    # 셀프조인으로 풀어야함
JOIN Activity a2
    ON a1.machine_id = a2.machine_id     # 머신끼리, 프로세스끼리 
    and a1.process_id = a2.process_id
    AND a1.activity_type = 'start'   # 이 조건이 없다면 스타트끼리, 엔드끼리 계산될 수도 있음  
    AND a2.activity_type = 'end'     # a2에 end를 고정 
GROUP BY a1.machine_id;             # 결론이 machine별로 나옴