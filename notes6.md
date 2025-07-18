# SQL challenge 006:Cities Starting with Vowels

## Problem Description

Query the list of distinct 'CITY' names from the 'STATION' table that **start with a vowel** (a,e,i,o,u).
The result **must not contain duplicates**,and both uppercase and lowercase should be considered.

---

## Table:STATION

| Column   | Description                          |
|----------|--------------------------------------|
| ID       | Integer, Primary Key                 |
| CITY     | String - City name                   |
| STATE    | String - State name                  |
| LAT_N    | Float - Latitude North               |
| LONG_W   | Float - Longitude West               |

---

## Solution (Using `LIKE` and`OR`)

```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'A%'
   OR CITY LIKE 'E%'
   OR CITY LIKE 'I%'
   OR CITY LIKE 'O%'
   OR CITY LIKE 'U%'
   OR CITY LIKE 'a%'
   OR CITY LIKE 'e%'
   OR CITY LIKE 'i%'
   OR CITY LIKE 'o%'
   OR CITY LIKE 'u%';
```
## Solution2:Using REGEXP

```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiouAEIOU]'
```