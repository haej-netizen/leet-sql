# Write your MySQL query statement below
SELECT
    v.customer_id,
    COUNT(*) - COUNT(t.transaction_id) AS count_no_trans  
    # (고객의 전체 방문의 수 -그 고객의 거래가 있을 때 방문의 수 )
FROM Visits v
LEFT JOIN Transactions t
  ON v.visit_id = t.visit_id
GROUP BY v.customer_id   # customer_id를 기준으로 개수 표시
HAVING COUNT(*) - COUNT(t.transaction_id) > 0  # (고객의 전체 방문의 수 -그 고객의 거래가 있을 때 방문의 수)>0 만 표시함
ORDER BY count_no_trans ASC;     # 거래없는 방문의 개수를 오름차순 정렬
