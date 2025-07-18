CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;
DROP TABLE IF EXISTS STATION;

CREATE TABLE STATION(
ID INT PRIMARY KEY,
CITY VARCHAR (50),
STATE VARCHAR (50),
LAT_N FLOAT,
LONG_W float
);
INSERT INTO STATION(ID,CITY,STATE,LAT_N,LONG_W) VALUES
(1, 'New York', 'NY', 40.7128, -74.0060),
(2, 'New York', 'NY', 40.7128, -74.0060),
(3, 'Bengalaru', 'KA', 12.9716, 77.5946),
(4, 'Boston', 'MA', 42.3601, -71.0589),
(5, 'Chicago', 'IL', 41.8781, -87.6298),
(6, 'Boston', 'MA', 42.3601, -71.0589);

SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;