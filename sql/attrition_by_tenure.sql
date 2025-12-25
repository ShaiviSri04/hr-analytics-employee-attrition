SELECT
  tenure_bucket,
  COUNT(*) AS total_employees,
  SUM(CASE WHEN attrition_flag = TRUE THEN 1 ELSE 0 END) AS attrited_employees,
  SAFE_DIVIDE(
    SUM(CASE WHEN attrition_flag = TRUE THEN 1 ELSE 0 END),
    COUNT(*)
  ) AS attrition_rate
FROM `level-footing-481113-s9.hr_analytics.employee_base`
GROUP BY tenure_bucket
ORDER BY tenure_bucket
