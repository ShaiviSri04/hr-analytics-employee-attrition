# Data Dictionary — HR Analytics Employee Attrition Project

This document describes the structure and meaning of fields used in the HR Analytics Employee Attrition project.
The primary analytical table is `employee_base`, created by joining and aggregating multiple HR data sources.

---

## Core Tables (Source-Level)

### employees
| Column Name | Description |
|-----------|------------|
| employee_id | Unique identifier for each employee |
| department | Functional department (e.g., Sales, HR, IT, Finance, Operations) |
| job_role | Employee job role/title |
| manager_id | Identifier of the employee’s direct manager |
| employment_type | Employment category (Full-time, Contract, Intern) |
| hire_date | Date employee joined the organization |

---

### attrition
| Column Name | Description |
|-----------|------------|
| employee_id | Unique employee identifierJob identifier |
| attrition_flag | Boolean indicator of whether the employee exited (TRUE/FALSE) |
| exit_date | Date of exit for attrited employees; null for active employees |
| exit_reason | HR-recorded reason for exit (when available) |

---

### compensation
| Column Name | Description |
|-----------|------------|
| employee_id | Unique employee identifier |
| salary | Annual fixed compensation |
| bonus | Annual bonus amount |
| salary_band | Internal compensation band (L1, L2, L3, etc.) |

---

### performance
| Column Name | Description |
|-----------|------------|
| employee_id | Unique employee identifier |
| performance_rating | Annual performance rating (scale 1–5) |
| review_year | Performance review year |

---

### engagement
| Column Name | Description |
|-----------|------------|
| employee_id | Unique employee identifier |
| engagement_score | Employee engagement score (survey-based, scale 1–5) |
| manager_support_score | Survey score reflecting perceived manager support |
| survey_date | Date of engagement survey |

---

## Derived Analytical Table: `employee_base`

This table is the foundation for all analysis and dashboards.
Grain: **1 row per employee**

---

### Employee Attributes
| Column | Description |
|------|------------|
| employee_id | Unique employee identifier |
| department | Department of the employee |
| job_role | Job role |
| manager_id | Direct manager identifier |
| employment_type | Type of employment |

---

### Tenure Features
| Column | Description |
|------|------------|
| tenure_months | Employee tenure in months (from hire date to exit date or analysis date) |
| tenure_bucket | Tenure grouped into buckets: `0–12 months`, `13–36 months`, `37+ months` |

---

### Compensation Features
| Column | Description |
|------|------------|
| salary | Employee annual salary |
| salary_band | Compensation band |
| avg_band_salary | Average salary for the employee’s salary band |

---

### Performance & Engagement Features
| Column | Description |
|------|------------|
| avg_performance_rating | Average performance rating across available review years |
| avg_engagement_score | Average engagement score across surveys |
| avg_manager_support_score | Average manager support score from engagement surveys |

---

### Attrition & Derived Indicators
| Column | Description |
|------|------------|
| attrition_flag | TRUE if employee exited, FALSE otherwise |
| pay_performance_index | Categorization comparing pay vs performance:<br>• Well Aligned<br>• Underpaid High Performer<br>• Overpaid Low Performer<br>• Low Pay & Low Performance |

---

## Aggregated Analytical Views

The following views are pre-aggregated in SQL and used directly in Power BI:

| View Name | Description |
|---------|------------|
| attrition_rate_overall | Company-wide attrition rate |
| attrition_by_tenure | Attrition rate by tenure bucket |
| attrition_by_department | Attrition rate by department |
| attrition_by_role | Attrition rate by job role (with minimum headcount filter) |
| attrition_by_engagement | Attrition rate by engagement bucket |
| attrition_by_manager_support | Attrition rate by manager support bucket |
| attrition_by_pay_performance | Attrition rate by pay–performance category |

---

## Dataset Inspiration

This dataset is **synthetic** and inspired by:
- IBM HR Analytics Employee Attrition Dataset (Kaggle)
- Typical HRIS systems used in mid-sized organizations
- Real-world engagement survey and performance management structures

No real employee data is used.
