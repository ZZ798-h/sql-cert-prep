CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;
DROP TABLE IF EXISTS STATION;
CREATE TABLE STATION(
   ID INT PRIMARY KEY,
    CITY VARCHAR(50),
    STATE VARCHAR(50),
    LAT_N FLOAT,
    LONG_W FLOAT
);
INSERT INTO STATION (ID,CITY,STATE,LAT_N,LONG_W) values
(1, 'Arlington', 'TX', 32.7357, -97.1081),
(2, 'Albany', 'NY', 42.6526, -73.7562),
(3, 'Upperco', 'MD', 39.6334, -76.8447),
(4, 'Aguanga', 'CA', 33.4678, -116.8611),
(5, 'Odin', 'IL', 38.6173, -89.0451),
(6, 'East China', 'MI', 42.8570, -82.4660),
(7, 'Algonac', 'MI', 42.6109, -82.5316),
(8, 'Onaway', 'MI', 45.3511, -84.2370),
(9, 'Irvington', 'NJ', 40.7245, -74.2318),
(10, 'Arrowsmith', 'IL', 40.4486, -88.6417),
(11, 'Udall', 'KS', 37.3873, -97.1167),
(12, 'Oakfield', 'NY', 43.0678, -78.2728),
(13, 'Elkton', 'MD', 39.6068, -75.8333),
(14, 'Boston', 'MA', 42.3601, -71.0589),
(15, 'Chicago', 'IL', 41.8781, -87.6298),
(16, 'Dallas', 'TX', 32.7767, -96.7970),
(17, 'New York', 'NY', 40.7128, -74.0060);

-- Step 5: Query using LIKE
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
   
-- STEP 6:Query using REGEXP (recommended)
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiouAEIOU]';
