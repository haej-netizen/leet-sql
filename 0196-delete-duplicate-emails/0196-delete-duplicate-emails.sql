# Write your MySQL query statement below
DELETE p1
FROM Person p1
JOIN Person p2
  ON p1.email = p2.email
 AND p1.id > p2.id; # Self Join + 부등호 조건 : 중복 그룹 내에서 상대적 순서를 만들어 삭제 대상을 식별하는 기법