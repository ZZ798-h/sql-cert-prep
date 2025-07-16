-- 001-population-over-120k.sql

-- 查询美国城市中人口超过120000 的城市名称

-- CREATE CITY TABLE
CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;

CREATE TABLE CITY(
  ID INT PRIMARY KEY,
  NAME VARCHAR(100),
  COUNTRYCODE CHAR(3),
  DISTRICT VARCHAR(100),
  POPULATION INT
  );

-- Insert test data
INSERT INTO CITY (ID, NAME , COUNTRYCODE, DISTRICT , POPULATION) VALUES
(1,'SCOttsdale','USA','Arizona', 202705),
(2, 'Corona', 'USA', 'California', 152374),
(3, 'Concord', 'USA', 'California', 123867),
(4, 'Cedar Rapids', 'USA', 'Iowa', 120758),
(5, 'Springfield', 'USA', 'Illinois', 117000);

-- Query US cities with a population greater than 120,000
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;

  