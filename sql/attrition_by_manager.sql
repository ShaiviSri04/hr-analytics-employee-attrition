SELECT
  manager_id,
  COUNT(*) AS total_team_size,
  SUM(CASE WHEN attrition_flag = TRUE THEN 1 ELSE 0 END) AS attrited_employees,
  SAFE_DIVIDE(
    SUM(CASE WHEN attrition_flag = TRUE THEN 1 ELSE 0 END),
    COUNT(*)
  ) AS attrition_rate
FROM `level-footing-481113-s9.hr_analytics.employee_base`
GROUP BY manager_id
HAVING COUNT(*)>=10
ORDER BY attrition_rate DESC
