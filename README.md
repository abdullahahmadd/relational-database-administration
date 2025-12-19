# 🗄️ Relational Database Administration
### 🎓 IBM Data Engineering Specialization – Portfolio Project

![Visitors](https://visitor-badge.laobi.icu/badge?page_id=abdullahahmadd.relational-database-administration)
![SQL](https://img.shields.io/badge/SQL-lightgrey)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?logo=postgresql&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)
![DBA](https://img.shields.io/badge/Role-Database%20Administrator-blue)

---

## 📑 Table of Contents
1. [Overview](#-overview)
2. [Business Task](#-business-task)
3. [Dataset Detail](#-dataset-detail)
4. [Tools & Technologies Used](#-tools--technologies-used)
5. [Skills Demonstrated](#-skills-demonstrated)
6. [Project Workflow](#-project-workflow)
7. [Results](#-results)
8. [Key Findings](#-key-findings)
9. [About this Project](#-about-this-project)

---

## 📌 Overview
This project demonstrates practical **Relational Database Administration (DBA)** tasks using **PostgreSQL and MySQL**.  
It simulates real-world database administration responsibilities including **user management, data restoration, indexing, performance analysis, and access optimization** across multiple database platforms.

---

## 🧩 Business Task
A data-driven organization requires a database administrator to:
- Manage database users and permissions  
- Restore operational and billing data  
- Optimize query performance using indexing  
- Ensure data accessibility through views  
- Analyze and validate database configurations  

The objective is to ensure **secure, efficient, and well-structured relational databases** supporting business operations.

---

## 📂 Dataset Detail
- **Source File:** `billing.csv`
- **Records:** Customer billing data
- **Attributes:**
  - `customerid`
  - `category`
  - `country`
  - `industry`
  - `month`
  - `billedamount`
- **Usage:** Imported into PostgreSQL and MySQL for restoration, querying, and optimization tasks.

---

## 🛠️ Tools & Technologies Used
- **SQL** – DDL, DML, indexing, performance analysis
- **PostgreSQL** – User management, backup, CSV restore, views, indexing
- **MySQL** – Data recovery, indexing, storage engine analysis

---

## 🎯 Skills Demonstrated
- Relational Database Administration (DBA)
- User & role management
- Privilege and access control
- Data restoration (SQL & CSV)
- Index creation & performance tuning
- View creation for simplified querying
- Storage engine analysis (MySQL)
- Cross-database platform management

---

## 🔄 Project Workflow
1. **PostgreSQL (Part 1)**  
   - Database and schema setup  
   - User and role creation  
   - Database backup using pgAdmin  

2. **MySQL (Part 2)**  
   - Database recovery from SQL backup  
   - Table size analysis  
   - Baseline query performance measurement  
   - Index creation for performance improvement  
   - Storage engine identification  

3. **PostgreSQL (Part 3)**  
   - CSV data restoration into existing database  
   - View creation for simplified data access  
   - Indexing on billing data  
   - Query performance comparison before and after indexing  

This workflow reflects a **realistic end-to-end DBA lifecycle** across multiple relational database systems.

---

## 📊 Results

### 🐘 PostgreSQL — Part 1 (User Management & Configuration)

| 1. Backup Role Privileges |
|---------------------------|
| ![PostgreSQL Backup Role Privileges](Results/PostgreSQL/postgresql_backup_role_privileges.png) |
| Backup role created and privileges assigned using PostgreSQL CLI. |

---

### 🐬 MySQL — Part 2 (Recovery, Indexing & Storage Engines)

| 1. Billing Tables Restored |
|----------------------------|
| ![MySQL Billing Tables](Results/MySQL/mysql_billing_tables_list.png) |
| Billing database successfully restored and verified. |

---

| 2. Baseline Query Performance |
|-------------------------------|
| ![MySQL Baseline Query](Results/MySQL/mysql_baseline_query_explain.png) |
| Query execution plan before indexing. |

---

| 3. Query Performance After Index |
|----------------------------------|
| ![MySQL Indexed Query](Results/MySQL/mysql_query_explain_after_index.png) |
| Improved performance after index creation. |

---

| 4. Storage Engines |
|--------------------|
| ![MySQL Storage Engines](Results/MySQL/mysql_supported_storage_engines.png) |
| Supported storage engines identified and analyzed. |

---

### 🐘 PostgreSQL — Part 3 (Restore, Views & Indexing)

| 1. Billing Data Restored |
|--------------------------|
| ![PostgreSQL Billing Table](Results/PostgreSQL/postgresql_billing_table_created.png) |
| Billing data restored from CSV into PostgreSQL. |

---

| 2. View Created |
|-----------------|
| ![PostgreSQL View](Results/PostgreSQL/postgresql_basicbilldetails_view_created.png) |
| View created to simplify billing queries. |

---

| 3. Index Performance Comparison |
|---------------------------------|
| ![PostgreSQL Indexed Query](Results/PostgreSQL/postgresql_query_explain_after_index.png) |
| Query performance improved using index on billedamount. |

---

## 🔑 Key Findings
- Role-based access control improves security and maintainability  
- Indexing significantly reduces query execution cost  
- Views simplify data access for analytical use cases  
- PostgreSQL and MySQL both support enterprise-grade DBA operations  
- Proper data restoration workflows are critical for operational reliability  

---

## 📘 About this Project
This project was developed as a **portfolio-focused database administration project**, designed to reflect **real-world DBA responsibilities**.  
It highlights practical experience managing relational databases across **PostgreSQL and MySQL**, emphasizing performance, security, and data accessibility.

---
