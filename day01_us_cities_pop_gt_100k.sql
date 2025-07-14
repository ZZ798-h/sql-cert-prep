-- Day 1:Query all Amercian cities with population > 100000
SELECT *
FROM CITY
WhERE COUNTRYCODE = 'USA' AND POPULATION > 100000;