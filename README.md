# Sales Performance Reporting & KPI Analysis (SQL + Power BI)

## Project Overview
This project presents a **single-page KPI dashboard** designed to analyze **overall sales performance** using the Superstore dataset.  
The dashboard focuses on **high-level business KPIs** and **core sales breakdowns**, making it suitable for **executive reporting**, **management reviews**, and **banking / corporate BI use cases**.

All data preparation and aggregations were performed in **SQL**, while the final visualization and dashboard design were built in **Power BI**.

---

## Business Questions Answered
- What is the **total sales performance** over the entire period?
- How many **orders** and **unique customers** contributed to revenue?
- What is the **Average Order Value (AOV)**?
- How do sales **trend over time (monthly)**?
- Which **categories, regions, and customer segments** generate the most revenue?

---

## Key KPIs
- **Total Sales**
- **Total Orders**
- **Total Customers**
- **Average Order Value (AOV)**

---

## Dashboard Components
- **Monthly Sales Trend**  
  Line chart showing revenue evolution over time to identify growth patterns and seasonality.

- **Sales by Category**  
  Comparison of total sales across product categories.

- **Sales by Region**  
  Regional performance breakdown highlighting top and underperforming regions.

- **Sales by Segment**  
  Revenue contribution by customer segment (Consumer, Corporate, Home Office).

---

## Tools & Technologies
- **SQL (MySQL)**  
  - Data cleaning  
  - KPI calculations  
  - Aggregated reporting views

- **Power BI**  
  - KPI cards  
  - Line and bar charts  
  - Dashboard layout and formatting

- **Dataset**  
  - Superstore Sales (`train_fixed.csv`)

---

## Key Insights
- Sales show a **clear upward trend** over time with visible seasonal fluctuations.
- **Consumer segment** contributes the highest share of total sales.
- **Technology** is the leading product category by revenue.
- **West and East regions** outperform other regions in total sales.
- Average Order Value indicates **strong per-transaction revenue**, suitable for KPI-driven monitoring.

---

## Project Structure

<pre>
kpi-dashboard-sales-performance-sql-powerbi/
│
├── data/
│ └── train_fixed.csv
│
├── powerbi/
│ ├── sales_performance_overview_kpi_dashboard.png
│
├── sql/
│ └── kpi_dashboard_superstore.sql
└── README.md
</pre>

---

## Notes
- The project is intentionally designed as a **single-page KPI dashboard** to reflect real-world executive reporting standards.
- The structure and metrics are aligned with **junior Business / Data Analyst** expectations in banking and retail analytics roles.
