# 🌍 International Student Mobility Analysis (2015-2024)

## 📌 Project Overview
This project analyzes global international student mobility trends over a decade (2015–2024). Using a dataset of 10,000 records, the goal of this analysis is to identify key origin countries, preferred destination hubs, demographic distributions, and year-over-year growth trends. 

This end-to-end data analytics project demonstrates data extraction, advanced transformation, and interactive visualization.

## 🛠️ Tools & Technologies Used
* **SQL:** Data aggregation, Window Functions (`OVER()`, `PARTITION BY`), and Ranking (`DENSE_RANK()`).
* **Power BI:** Data modeling (Power Query), interactive dashboards, geospatial mapping, and DAX.
* **Data Source:** Kaggle (`International_Students_2015_2024_v2.csv` - 10,000 records).

---

## 📂 Repository Structure
* **`/data`**: Contains the raw CSV dataset used for the analysis.
* **`/sql_queries`**: Contains the `.sql` file with all exploratory and advanced queries, alongside screenshot results.
* **`/dashboard`**: Contains the Power BI `.pbix` file and static screenshots of the interactive dashboard.

---

## 📊 Power BI Dashboard
The interactive Power BI dashboard provides a high-level overview of global student movement, allowing users to filter by year and region.

![Power BI Dashboard](https://github.com/yashwantmishra08-lgtm/International-student-mobility/blob/main/dashboard/Screenshot%202026-05-09%20192922.png)

> 💡 **Note:** There are more dashboard pictures available, including different interactive views and my Power Query data transformation steps. Please look in the `/dashboard` folder to see them all!

---

## 💻 SQL Analysis Deep Dive
Below is the SQL code I created to explore the dataset and extract meaningful business insights. 

### 1. Total Students Sent by Every Country of Origin
```sql
select country_of_origin, sum(count) as total_student from international_students_2015_2024_v2
group by country_of_origin
order by total_student desc;
```
![SQL result](https://github.com/yashwantmishra08-lgtm/International-student-mobility/blob/main/sql_queries/Screenshot%202026-05-10%20002001.png)
