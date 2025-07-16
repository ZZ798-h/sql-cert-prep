# 003 -Select Even-ID Cities from STATION

## Problem

Query a list of 'CITY' names from the 'Station' table for cities that have an **even 'ID' number**.
Print the result in **any order**,but **exclude duplicates** from the answer.

---
##Table:STATION
| Column Name | Type     | Description                            |
|-------------|----------|----------------------------------------|
| `ID`        | INTEGER  | Unique ID of the station (Primary Key) |
| `CITY`      | TEXT     | Name of the city                       |
| `STATE`     | TEXT     | State or region                        |
| `LAT_N`     | FLOAT    | Northern latitude                      |
| `LONG_W`    | FLOAT    | Western longitude                      |

---
## SQL Solution
```sql
CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;

DROP TABLE IF EXISTS STATION;
CREATE TABLE STATION (
    ID INT PRIMARY KEY ,
    CITY VARCHAR(100),
    STATE VARCHAR(100),
    LAT_N FLOAT,
    LONG_W FLOAT
);

INSERT INTO STATION(ID,CITY,STATE,LAT_N,LONG_W)VALUES 
(1, 'Monroe', 'TX', 45.0, 122.0),
(2, 'Boston', 'MA', 42.3, 71.0),
(3, 'Monroe', 'NY', 43.2, 120.0),
(4, 'Boston', 'MA', 42.1, 70.9),
(5, 'Dallas', 'TX', 32.8, 96.8),
(6, 'Seattle', 'WA', 47.6, 122.3),
(7, 'Boston', 'MA', 42.5, 70.8),
(8, 'Houston', 'TX', 29.7, 95.3),
(9, 'Miami', 'FL', 25.7, 80.2),
(10, 'Monroe', 'LA', 32.5, 91.5);

SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0;
```