# Data Notes & Analytical Caveats

This document records assumptions, limitations, and decisions made during analysis.
These notes ensure transparency and prevent misinterpretation of results.

---

## 1. Analysis Date Assumption
- A fixed analysis date of **2023-12-31** was used to calculate tenure for active employees.
- This ensures consistency across tenure-based calculations and avoids fluctuating results.

---

## 2. Attrition Definition
- Attrition is defined as:
  > Number of employees who exited ÷ Total employees in the group
- Time-normalized attrition rates (e.g., annualized attrition) were intentionally not used to maintain interpretability for leadership audiences.

---

## 3. Exit Reasons
- Exit reasons were assumed to be correctly recorded where available.
- Exit reason analysis was not a primary focus of this project and is not used for causal conclusions.

---

## 4. Engagement & Manager Support Data
- Engagement and manager support scores are derived from survey responses.
- All employees in this dataset were assumed to have at least one engagement response.
- Engagement is treated as a **leading indicator**, not a deterministic cause of attrition.

---

## 5. Performance Ratings
- Performance ratings are averaged across available review years.
- Employees without performance history are excluded from performance-based segmentation.
- High performer threshold defined as:
  > Average performance rating ≥ 4

---

## 6. Pay–Performance Index Logic
- Salary comparison is performed relative to **salary band average**, not absolute salary.
- This avoids unfair comparison across roles and seniority levels.
- Pay–performance categories are used directionally, not as precise compensation judgments.

---

## 7. Manager-Level Analysis Caveat
- Most managers have small team sizes (5–7 direct reports).
- Manager-level attrition rates may therefore appear extreme.
- To mitigate small-sample bias:
  - Manager support buckets are emphasized over individual manager ranking
  - Manager-level insights are framed for **coaching and support**, not evaluation

---

## 8. Headcount Thresholds
- A minimum headcount threshold was applied in role- and segment-level analysis.
- This prevents misleading attrition rates driven by very small populations.

---

## 9. Interpretation Discipline
- Correlation does not imply causation.
- Findings are intended to inform prioritization, not assign blame.
- Recommendations focus on systemic improvements rather than individual outcomes.

---

## 10. Intended Use
This analysis is designed for:
- Strategic HR decision support
- Retention planning
- Leadership discussion

It is **not** intended for:
- Individual performance evaluation
- Compensation justification
- Disciplinary action

---

## Summary
All analytical decisions were made to balance realism, interpretability, and ethical use of HR data.
