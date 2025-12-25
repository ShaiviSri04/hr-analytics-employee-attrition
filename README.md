
# 📊 End-to-End HR Analytics: Employee Attrition & Retention Strategy

## 📌 Project Overview

This project presents a **comprehensive, end-to-end HR analytics case study** focused on understanding, diagnosing, and reducing employee attrition. It mirrors how **real HR analytics teams in enterprise and mid-sized organizations** (IT services, consulting, EdTech, startups) approach workforce decision-making.

The analysis combines **SQL-based feature engineering**, **hypothesis-driven exploratory data analysis**, and **executive-level Power BI storytelling** to identify **when, where, and why attrition occurs**, and to translate findings into **actionable HR strategies**.

---

## 🎯 Business Problem

Employee attrition directly impacts:

* Hiring costs
* Productivity
* Team morale
* Leadership bandwidth
* Institutional knowledge retention

The organization faces an **overall attrition rate of 22.81%**, prompting leadership to ask:

* When is attrition highest in the employee lifecycle?
* Which departments and roles are most impacted?
* Are high performers at risk?
* Is compensation misalignment driving exits?
* Do engagement and manager support influence attrition?
* Where should HR intervene **this quarter**?

---

## 🧠 Analytical Approach (Mentor-Driven, Real-World Methodology)

This project follows a **structured analytics lifecycle**, not a dashboard-first approach:

1. **Business Framing & Hypothesis Definition**
2. **Data Understanding & Quality Validation**
3. **Feature Engineering & SQL Modeling**
4. **Metric Definition & Sanity Checks**
5. **Root Cause Analysis**
6. **Insight Synthesis**
7. **Business Recommendations**
8. **Executive Dashboarding (Power BI)**

---

## 🗂️ Dataset Overview

A realistic, **multi-table HR dataset** simulating real organizational systems:

| Table        | Description                          |
| ------------ | ------------------------------------ |
| employees    | Employee demographics, roles, tenure |
| attrition    | Exit flags and exit dates            |
| performance  | Annual performance ratings           |
| engagement   | Engagement & manager support surveys |
| compensation | Salary, bonus, salary band           |
| hiring       | Time-to-hire and hiring metrics      |

📌 **Dataset Inspiration:**
Synthetic dataset inspired by:

* IBM HR Analytics Attrition Dataset (Kaggle)
* Real-world HRIS structures (Workday / SuccessFactors style)

> All data is anonymized and simulated for educational purposes.

---

## 🧮 Key Metrics Engineered (SQL + Business Logic)

* **Overall Attrition Rate**
* **Attrition Rate by Tenure Bucket**
* **Attrition by Department & Role**
* **High Performer Attrition Rate**
* **Pay–Performance Index**
* **Engagement & Manager Support Buckets**
* **Manager-Level Attrition (Bias-Aware)**
* **Early vs Mid vs Late Tenure Attrition**

All metrics were validated using **sanity checks, grain verification, and denominator alignment** to avoid common HR analytics errors.

---

## 🔍 Key Findings (Evidence-Based)

### 1️⃣ Attrition Is a Mid-Tenure Problem

* **13–36 months attrition rate:** ~32%
* Early tenure (0–12 months): ~17%
* Late tenure (37+ months): ~18–19%

➡ Indicates **career stagnation and growth plateaus**, not onboarding failure.

---

### 2️⃣ High Performers Are Largely Retained

* **High performer attrition:** ~20.6%
* Lower than overall workforce attrition

➡ Organization is **not bleeding top talent** at scale.

---

### 3️⃣ Attrition Is Concentrated, Not Systemic

* Higher attrition observed in **Sales and HR**
* Certain roles show elevated risk, validated with **headcount thresholds**

➡ Enables **targeted HR interventions**, not blanket policies.

---

### 4️⃣ Compensation Is Not the Primary Driver

* **Low Pay & Low Performance** employees show the highest attrition (~25%)
* **Underpaid high performers do NOT show the highest attrition**

➡ Challenges the assumption that pay alone drives exits.

---

### 5️⃣ Engagement & Manager Support Are Strong Signals

* Lower engagement → higher attrition
* Lower manager support → highest attrition
* Directional consistency across buckets

➡ Engagement acts as a **leading indicator** for attrition risk.

---

## 📈 Power BI Dashboard (Executive Storytelling)

### Page 1 — Executive Overview

* Overall Attrition Rate
* Mid-Tenure Attrition
* High Performer Attrition
* Tenure-based attrition visualization

### Page 2 — Where Attrition Happens

* Attrition by Department
* Attrition by Role (with headcount)
* Conditional formatting for risk signaling

### Page 3 — Why Attrition Happens

* Pay–Performance vs Attrition
* Engagement vs Attrition
* Manager Support vs Attrition

### Page 4 — Who to Act On

* High-risk segments table (Dept × Tenure × Engagement)
* Manager-level view (support-focused, bias-aware)
* Action-oriented recommendations

📌 Dashboards emphasize **decision support**, not decorative visuals.

---

## 💼 Business Recommendations (Actionable & Realistic)

* Focus retention efforts on **13–36 month employees**
* Invest in **manager coaching and leadership capability**
* Use engagement surveys as an **early warning system**
* Avoid across-the-board salary hikes; maintain **pay–performance discipline**
* Introduce **internal mobility windows before the 24-month mark**

Each recommendation includes:

* Target audience
* Business rationale
* Expected impact
* Metric to track

---

## 🛠️ Tools & Skills Demonstrated

* **SQL (BigQuery):** CTEs, views, aggregations, feature engineering
* **Excel:** Data validation, logic testing, exploratory checks
* **Power BI:** KPI design, conditional formatting, executive dashboards
* **Analytics Skills:**

  * HR metrics
  * Attrition modeling
  * Bias identification
  * Business storytelling
  * Stakeholder framing

---

## 🗂️ Repository Structure

```
├── dashboard/
│   └── hr_analytics_dashboard.pbix
│
├── data/
│   ├── employees.csv
│   ├── attrition.csv
│   ├── performance.csv
│   ├── engagement.csv
│   ├── compensation.csv
│   ├── hiring.csv
│   ├── data_dictionary.md
│   └── data_notes.md
│
├── excel/
│   └── HR_Analytics.xlsx
│
├── notes/
│   └── analysis_summary.md
│
├── screenshots/
│   ├── Executive_Overview.png
│   ├── Attrition_By_Department_Role.png
│   ├── Attrition_Drivers.png
│   └── Action_Layer.png
│
├── sql/
│   ├── employee_base.sql
│   ├── attrition_rate_overall.sql
│   ├── attrition_by_tenure.sql
│   ├── attrition_by_department.sql
│   ├── attrition_by_role.sql
│   ├── attrition_by_performance.sql
│   ├── attrition_by_pay_performance.sql
│   ├── attrition_by_engagement.sql
│   ├── attrition_by_manager_support.sql
│   ├── attrition_by_manager.sql
│   ├── early_attrition_by_role.sql
│   └── hiring_speed_by_role.sql
│
└── README.md
```

---


