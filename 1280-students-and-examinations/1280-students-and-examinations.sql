# Write your MySQL query statement below
SELECT
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub  ## CROSS JOIN은 학생과 과목의 모든 가능한 조합을 생성하여, 시험 안본 과목도 반환하게 함
LEFT JOIN Examinations e
    ON s.student_id = e.student_id               # on 2개 : “특정 학생이 특정 과목을 응시했는지”를 정확히 매칭
   AND sub.subject_name = e.subject_name
GROUP BY                # GROUP BY 컬럼 수 = 분석 단위의 차원 수, 학생별 · 과목별로 각각 따로 집계하겠다는 뜻
    s.student_id,       # 집계 함수(COUNT)가 아닌 컬럼은 전부 GROUP BY에 있어야 함
    s.student_name,
    sub.subject_name
ORDER BY s.student_id ASC;   # id로 오름차순 정렬
