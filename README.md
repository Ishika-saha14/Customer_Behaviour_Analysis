# Customer_Behaviour_Analysis
A data analytics project that explores customer purchasing patterns, preferences, and behaviour using data visualization and analytical techniques to generate meaningful business insights.

# 📊 Data Analytics Project

## Overview

This project focuses on analyzing a dataset to identify meaningful patterns, trends, and insights using **Python, MySQL, Pandas, and Power BI**.

The project covers the complete data analytics workflow — from **loading and cleaning the data** to **exploratory data analysis (EDA), SQL analysis, and dashboard creation**.

The main goal is to transform raw data into useful insights that can support better decision-making.

---

## 📁 Dataset

The dataset contains information related to the business/customer data used for analysis.

The dataset was first loaded and explored using **Python and Pandas**. Data cleaning and preparation were then performed to improve data quality before further analysis.

### Data Preparation Includes:

* Checking the structure of the dataset
* Identifying missing values
* Removing duplicate records
* Checking data types
* Handling inconsistent or incorrect values
* Preparing the data for SQL and Power BI analysis

---

## 🛠️ Tools & Technologies

The following tools were used throughout the project:

* **Python** – Data loading and analysis
* **Pandas** – Data manipulation and cleaning
* **MySQL** – Database management and SQL queries
* **Power BI** – Data visualization and dashboard creation
* **Jupyter Notebook** – Python-based analysis and EDA

---

## 🔄 Project Steps

### 1. Load Dataset

The dataset was imported into Python using Pandas.

```python
import pandas as pd

df = pd.read_csv("dataset.csv")
```

The dataset was then examined to understand its structure, columns, and data types.

---

### 2. Exploratory Data Analysis (EDA)

EDA was performed using Pandas to understand the dataset and identify important patterns.

The analysis included:

* Viewing the first and last records
* Checking the number of rows and columns
* Understanding data types
* Checking missing values
* Identifying duplicate records
* Generating statistical summaries
* Analyzing important columns and variables

---

### 3. Data Cleaning

The raw dataset was cleaned before performing further analysis.

The cleaning process included:

* Handling missing values
* Removing duplicates
* Correcting data types
* Standardizing values
* Removing unnecessary columns
* Checking for inconsistent data

The cleaned dataset was then prepared for database analysis and visualization.

---

### 4. MySQL & SQL Analysis

The cleaned data was imported into **MySQL** for further analysis.

SQL queries were written to extract useful business insights, such as:

* Total records and values
* Category-wise analysis
* Customer-wise analysis
* Sales/revenue analysis
* Identifying top-performing categories or customers
* Aggregations using `SUM()`, `COUNT()`, and `AVG()`
* Filtering and sorting data
* Using `GROUP BY`, `ORDER BY`, and `WHERE`
* Using joins where required

Example:

```sql
SELECT category, COUNT(*) AS total_records
FROM customer_data
GROUP BY category
ORDER BY total_records DESC;
```

---

## 📊 Dashboard

The analyzed data was connected to **Power BI** to create an interactive dashboard.

The dashboard provides a visual representation of the key findings and allows users to explore the data using filters and slicers.

### Dashboard Includes:

* Key Performance Indicators (KPIs)
* Charts and graphs
* Category-wise analysis
* Customer insights
* Trend analysis
* Interactive slicers
* Summary of important metrics

The dashboard makes it easier to understand the data and identify important trends at a glance.

---

## 📈 Results & Insights

The project helped transform raw data into meaningful and actionable information.

The analysis provides insights into:

* Overall business performance
* Customer behaviour and patterns
* Category-wise performance
* Important trends in the dataset
* Top-performing segments
* Areas that may require further attention

The combination of **Python, Pandas, MySQL, SQL, and Power BI** provided a complete end-to-end data analytics workflow.

---

## 📂 Project Structure

```text
Data-Analytics-Project/
│
├── dataset/
│   └── dataset.csv
│
├── python/
│   └── EDA.ipynb
│
├── sql/
│   └── analysis_queries.sql
│
├── powerbi/
│   └── dashboard.pbix
│
└── README.md
```

---

## 🎯 Conclusion

This project demonstrates an end-to-end approach to data analytics, starting from **raw data collection and cleaning** to **data exploration, SQL analysis, and interactive dashboard development**.

It highlights the practical use of **Python, Pandas, MySQL, SQL, and Power BI** to turn raw data into clear and useful business insights.
