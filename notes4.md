# SQL Challenge 004: Count Duplicate City Entries

## Problem 

**Find the difference between the total number of 'CITY' entries and number of distinct 'CITY' entries in the 'STATION' Table.**

This challenge tests your understanding of filtering,aggregation,and the use of 'DISTINCT' to remove duplicates.

---

## Table
| Column     | Description                          |
|------------|--------------------------------------|
| ID         | Integer (Primary Key)                |
| CITY       | String (City name)                   |
| STATE      | String                               |
| LAT_N      | Float (Northern Latitude)            |
| LONG_W     | Float (Western Longitude)            |

---
## 📌 Example

Given the following `CITY` values:

New York

New York

Bengalaru


- Total entries: 3
- Distinct entries: 2
- **Result: 1**

---
```sql
SELECT COUNT(CITY)-COUNT(DISTINCT CITY) AS Duplicates_city_numbers
FROM STATION;
```