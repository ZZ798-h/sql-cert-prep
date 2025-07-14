# Day 1 - SQL Challenge:Query All American Cities with Population > 100,000

## Problem Description  
**Write a SQL query** to retrieve **all columns** for cities in **the USA** ("CountryCode = 'USA'") where **Population > 10000**.

###Table:CITY

| Column       | Type    | Description        |
|--------------|---------|--------------------|
| ID           | INTEGER | City ID            |
| NAME         | TEXT    | City Name          |
| COUNTRYCODE  | TEXT    | Country Code (e.g., 'USA') |
| DISTRICT     | TEXT    | State or Region    |
| POPULATION   | INTEGER | Population of City |

---
## Requirements
**You must:**

* Use 'SELECT *' to retrieve all columns
* Filter by 'COUNTRYCODE = 'USA''
* Filter by 'POPULATION > 100000'

---

##SQL Solution
```sql
SElECT *
From CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000;