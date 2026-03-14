# 📊 HR Workforce Analytics Dashboard

## 📌 Project Overview

This project focuses on analyzing employee workforce data using **SQL Server** and **Power BI**.
The goal is to uncover insights about employee distribution, attrition trends, hiring patterns, and salary analysis to support HR decision-making.

The project includes **database design, SQL analysis, and an interactive Power BI dashboard**.

---

# 🧰 Tools & Technologies

* SQL Server
* Power BI
* Data Modeling
* Data Visualization
* ER Diagram Design

---

# 🗂️ Database Structure

The HR Analytics database consists of **three main tables**:

### 1️⃣ Departments

Stores department information.

| Column          | Description          |
| --------------- | -------------------- |
| department_id   | Unique department ID |
| department_name | Name of department   |
| manager_name    | Department manager   |
| location        | Department location  |

---

### 2️⃣ Employees

Stores employee details.

| Column             | Description          |
| ------------------ | -------------------- |
| employee_id        | Unique employee ID   |
| employee_name      | Employee name        |
| department_id      | Department reference |
| gender             | Gender               |
| salary             | Employee salary      |
| age                | Employee age         |
| hire_date          | Hiring date          |
| city               | Employee city        |
| performance_rating | Performance score    |

---

### 3️⃣ Attrition

Stores employee attrition information.

| Column           | Description          |
| ---------------- | -------------------- |
| attrition_id     | Unique attrition ID  |
| employee_id      | Employee reference   |
| attrition_status | Yes / No             |
| attrition_date   | Date employee left   |
| reason           | Reason for attrition |

---

# 🧩 Entity Relationship Model

Relationships used in the database:

Departments (1) → (Many) Employees
Employees (1) → (1) Attrition

This structure helps analyze employee turnover and department-level HR metrics.

---

# 📈 Dashboard Insights

The Power BI dashboard provides key HR analytics insights:

### 🔹 Key Metrics

* Total Employees
* Attrition Rate
* Average Salary
* Performance Rating

### 🔹 Visual Analysis

* Employees by Department
* Attrition by Department
* Attrition by Gender
* Hiring Trend Over Time
* Salary Analysis by Department
* Employee Location Map
* Attrition Reasons

---

# 📊 Dashboard Preview

Screenshot 2026-03-14 123026.png

---

# 🗃️ SQL Analysis Questions

Some key SQL queries used in this project:

* Total employees in the company
* Employees by department
* Average salary by department
* Top 5 highest paid employees
* Gender distribution
* Employees above average salary
* Employees hired in the last 2 years
* Attrition rate by department
* Employee performance analysis

---

# 📁 Project Structure

```
HR-Analytics-SQL-PowerBI
│
├── SQL
│   └── HR_Analytics_Database.sql
│
├── PowerBI
│   └── HR_Analytics_Dashboard.pbix
│
├── ER_Diagram
│   └── HR_ER_Diagram.png
│
├── Images
│   └── dashboard.png
│
└── README.md
```

---

# 🎯 Key Learnings

* Database design and relationships
* Writing analytical SQL queries
* Data visualization using Power BI
* HR analytics metrics and insights
* Dashboard storytelling

---

# 🚀 Future Improvements

* Add employee tenure analysis
* Predict attrition using machine learning
* Add interactive filters and drill-through analysis

---

# 👤 Author

Sakshi Bure

Data Analytics Enthusiast
SQL | Power BI | Data Visualization

---

⭐ If you found this project useful, feel free to star the repository!
