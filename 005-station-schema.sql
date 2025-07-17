CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;
DROP TABLE IF EXISTS STATION;
CREATE TABLE STATION (
ID INT PRIMARY KEY,
CITY VARCHAR (50),
STATE VARCHAR(50),              -- 州名
    LAT_N FLOAT,                    -- 纬度（Latitude North）
    LONG_W FLOAT                    -- 经度（Longitude West）
);
INSERT INTO STATION(ID,CITY,STATE,LAT_N,LONG_W) values
(1, 'New York', 'NY', 40.7128, -74.0060),
(2, 'Los Angeles', 'CA', 34.0522, -118.2437),
(3, 'Chicago', 'IL', 41.8781, -87.6298),
(4, 'Houston', 'TX', 29.7604, -95.3698),
(5, 'Amo', 'IN', 39.6892, -86.6106),
(6, 'Marine On Saint Croix', 'MN', 45.1972, -92.7732);

-- shortest city
SELECT CITY,length(CITY) AS L_C
FROM STATION
ORDER BY CITY ASC, L_C ASC
LIMIT 1;
-- longest city
SELECT CITY,length(CITY) AS L_C
FROM STATION
ORDER BY CITY DESC, L_C DESC
LIMIT 1;