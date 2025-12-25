WITH performance_agg AS (
  SELECT
    employee_id,
    AVG(performance_rating) AS avg_performance_rating
  FROM `level-footing-481113-s9.hr_analytics.performance`
  GROUP BY employee_id
),

engagement_agg AS (
  SELECT
    employee_id,
    AVG(engagement_score) AS avg_engagement_score,
    AVG(manager_support) AS avg_manager_support_score
  FROM `level-footing-481113-s9.hr_analytics.engagement`
  GROUP BY employee_id
),

salary_band_avg AS (
  SELECT
    salary_band,
    AVG(salary) AS avg_band_salary
  FROM `level-footing-481113-s9.hr_analytics.compensation`
  GROUP BY salary_band
),

employee_enriched AS (
  SELECT
    e.employee_id,
    e.department,
    e.job_role,
    e.manager_id,
    e.employment_type,

    DATE_DIFF(
      IF(a.attrition_flag, a.exit_date, DATE '2023-12-31'),
      e.hire_date,
      MONTH
    ) AS tenure_months,

    c.salary,
    c.salary_band,

    p.avg_performance_rating,
    g.avg_engagement_score,
    g.avg_manager_support_score,

    a.attrition_flag,
    s.avg_band_salary

  FROM `level-footing-481113-s9.hr_analytics.employees` e
  LEFT JOIN `level-footing-481113-s9.hr_analytics.compensation` c
    ON e.employee_id = c.employee_id
  LEFT JOIN performance_agg p
    ON e.employee_id = p.employee_id
  LEFT JOIN engagement_agg g
    ON e.employee_id = g.employee_id
  LEFT JOIN `level-footing-481113-s9.hr_analytics.attrition` a
    ON e.employee_id = a.employee_id
  LEFT JOIN salary_band_avg s
    ON c.salary_band = s.salary_band
)

SELECT
  *,
  CASE
    WHEN tenure_months <= 12 THEN '0–12 months'
    WHEN tenure_months <= 36 THEN '13–36 months'
    ELSE '37+ months'
  END AS tenure_bucket,

  CASE
    WHEN salary > avg_band_salary AND avg_performance_rating >= 4
      THEN 'Well Aligned'
    WHEN salary < avg_band_salary AND avg_performance_rating >= 4
      THEN 'Underpaid High Performer'
    WHEN salary > avg_band_salary AND avg_performance_rating < 4
      THEN 'Overpaid Low Performer'
    ELSE 'Low Pay & Low Performance'
  END AS pay_performance_index

FROM employee_enriched
