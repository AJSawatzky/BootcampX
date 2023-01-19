SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM total_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts_name
ORDER BY total_submissions DESC;