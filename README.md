
# 🧠 Campaign Analysis Dashboard – Power BI

An interactive dashboard built using **Power BI**, **MySQL**, and **Python** to analyze customer reviews, engagement, and campaign performance for data-driven business insights.

---

## 📌 Project Overview

This project showcases a complete analytics workflow:
- **Data Cleaning & Transformation** in **MySQL**
- **Sentiment Analysis** using **Python (VADER)**
- **Interactive Visualizations** in **Power BI**

The goal is to help businesses understand customer sentiment, campaign effectiveness, and product performance.

---

## ⚙️ Tech Stack

- **MySQL** – Data cleaning, joins, transformations  
- **Python** – Sentiment scoring using VADER, custom sentiment categorization  
- **Power BI** – Dashboard creation, KPIs, dynamic filtering and page navigation  

---

## 📊 Dashboard Features

- **Navigation Bar** to switch between Customer, Product, and Campaign pages  
- **Dynamic Info Panel** showing selected Customer/Product details  
- **Main Visualization Pane** with KPIs, charts, and tables  
- **Filter Icon** to toggle filter pane for customized analysis  

---

## 🧼 Data Processing

- Categorized product prices (`Low`, `Medium`, `High`)
- Standardized text fields (e.g., "socialmedia" → "SOCIAL MEDIA")
- Split combined metrics like `views-clicks` into separate fields
- Replaced missing durations with customer-level averages
- Merged tables using SQL joins and removed duplicates

---

## 🧠 Sentiment Analysis

- Used VADER to calculate **compound sentiment scores**
- Custom logic to categorize reviews as **Positive**, **Negative**, **Mixed**, or **Neutral** using score + rating
- Bucketed sentiment scores for trend analysis

---


## Power BI Dashboard
- The dashboard is divided into three sections: Campaign, Product, and Customer dashboards.
- It uses interactive visuals like bar charts, pie charts, funnel charts, and KPIs to present data clearly.
- Each dashboard includes filters and drilldowns to analyze performance by product, sentiment, demographics, and time.
