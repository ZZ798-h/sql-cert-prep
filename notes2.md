# 002 - Population Over 120000 (USA)

## Problem
- Query the 'name' field for all American cities in the 'CITY'
- From CITY table
- Only include cities:
  - IN the USA ('COUNTRYCODE = 'USA'')
  - With 'POPULATION' > 120000

## Table:CITY
| Column Name  | Type     | Description           |
|--------------|----------|-----------------------|
| ID           | INTEGER  | Primary key           |
| NAME         | TEXT     | Name of the city      |
| COUNTRYCODE  | TEXT     | Country code (e.g., USA) |
| DISTRICT     | TEXT     | District/Region       |
| POPULATION   | INTEGER  | Population count      |

## Solution
```sql
SElECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;

