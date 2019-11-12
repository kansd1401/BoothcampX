SELECT cohorts.name cohort_name, count(students.*) as student_count
FROM cohorts JOIN students ON cohort_id = cohorts.id
GROUP BY cohorts.id
HAVING count(students.*) >= 18
ORDER BY student_count;