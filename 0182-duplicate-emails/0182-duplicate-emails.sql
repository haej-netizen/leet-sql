# Write your MySQL query statement below
select distinct p1.email AS Email      # distinct : 중복 제거 가능
FROM Person p1
JOIN Person p2
  ON p1.id != p2.id
WHERE p1.email = p2.email;

#SELECT email AS Email #FROM Person #GROUP BY email #HAVING COUNT(*) > 1 // ---- 더 효율적인 방법