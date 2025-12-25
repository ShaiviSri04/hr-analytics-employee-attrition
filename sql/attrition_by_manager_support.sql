SELECT
  CASE
    WHEN avg_manager_support_score < 3 THEN 'Low Manager Support'
    WHEN avg_manager_support_score < 4 THEN 'Medium Manager Support'
    ELSE 'High Manager Support'
  END AS manager_support_bucket,

  COUNT(*) AS total_employees,

  SUM(CASE WHEN attrition_flag = TRUE THEN 1 ELSE 0 END) AS attrited_employees,

  SAFE_DIVIDE(
    SUM(CASE WHEN attrition_flag = TRUE THEN 1 ELSE 0 END),
    COUNT(*)
  ) AS attrition_rate

FROM `level-footing-481113-s9.hr_analytics.employee_base`
GROUP BY manager_support_bucket
ORDER BY attrition_rate DESC
