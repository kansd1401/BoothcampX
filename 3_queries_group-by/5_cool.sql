SELECT students.name AS student, AVG(assignment_submissions.duration) as avg_assignment_duration, avg(assignments.duration) as avg_estimated_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL  
GROUP BY student
HAVING AVG(assignments.duration) > AVG(assignment_submissions.duration)
ORDER BY avg_assignment_duration desc;