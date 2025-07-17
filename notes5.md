#  SQL Challenge 005: City Name Length (Shortest and Longest)

## Problem Description

Query the two cities in the 'STATION' table that have:

- The **shortest** city name
- The **longest** city name

In the case of a tie (multiple cities with the same length ),return the one that comes ,**first alphabetically**.

---

## Table: STATION

| Column     | Description            |
|------------|------------------------|
| ID         | Integer (Primary Key)  |
| CITY       | String (City name)     |
| STATE      | String (State)         |
| LAT_N      | Float (Latitude North) |
| LONG_W     | Float (Longitude West) |

---

##  SQL Concepts Used

- `LENGTH(CITY)` to calculate string length
- `ORDER BY` with multiple conditions
- `LIMIT 1` to get the top result only
- Alphabetical ordering via `CITY ASC`

---

## sql Solution:SQL Queries
```sql
-- Shortest city name
SELECT CITY , LENGTH(CITY) AS L_C
FROM STATION 
ORDER BY L_C ASC , CITY ASC
LIMIT 1;

--Longest city name
SELECT CITY,LENGTH(CITY) AS L_C
FROM STATION
ORDER BY L_C DESC, CITY ASC
LIMIT 1;
```