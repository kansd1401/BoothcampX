SELECT AVG(average_assistance_request_duration) as average_total_duration
FROM (SELECT SUM(completed_at-started_at) AS average_assistance_request_duration
FROM assistance_requests JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.id
ORDER BY average_assistance_request_duration) AS peeps;