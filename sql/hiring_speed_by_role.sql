SELECT
  job_role,
  AVG(time_to_hire) AS avg_time_to_hire_days,
  COUNT(*) AS total_hires
FROM `level-footing-481113-s9.hr_analytics.hiring`
GROUP BY job_role
HAVING COUNT(*)>=10
