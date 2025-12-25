SELECT
  job_role,
  COUNT(*) AS total_employees,
  SUM(CASE WHEN attrition_flag = TRUE THEN 1 ELSE 0 END) AS attrited_employees,
  SAFE_DIVIDE(
    SUM(CASE WHEN attrition_flag = TRUE THEN 1 ELSE 0 END),
    COUNT(*)
  ) AS early_attrition_rate
FROM `level-footing-481113-s9.hr_analytics.employee_base`
WHERE tenure_bucket = '0-12 months'
GROUP BY job_role
HAVING COUNT(*)>=10
