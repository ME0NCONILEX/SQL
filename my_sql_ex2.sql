# SQL Join exercise
#
# 1: Get the cities with as name starting with ping sorted by their population with the least populated cities first
SELECT Name, Population FROM city WHERE name LIKE 'ping%' ORDER BY Population asc;
#
# 2: Get the cities with a name starting with ran sorted by their population with the most populated cities first
SELECT Name, Population FROM city WHERE name LIKE 'ran%' ORDER BY Population desc;
#
# 3: Count all cities
SELECT Name, Population FROM city order by Name asc;
#
# 4: Get the average population of all cities
SELECT AVG(Population) FROM city;
#
# 5: Get the biggest population found in any of the cities
SELECT MAX(Population) FROM city;
#
# 6: Get the smallest population found in any of the cities
SELECT MIN(Population) FROM city;
#
# 7: Sum the population of all cities with a population below 10000
SELECT SUM(Population) AS TotalPopulation FROM city where Population < 10000;
#
# 8: Count the cities with the countrycodes MOZ and VNM
SELECT COUNT(ID) AS NumberOfCityFrom FROM city where CountryCode LIKE 'MOZ' or CountryCode LIKE 'VNM';
#
# 9: Get individual count of cities for the countrycodes MOZ and VNM
SELECT COUNT(ID) AS NumberOfCityFrom FROM city where CountryCode LIKE 'MOZ' or CountryCode LIKE 'VNM';
#
# 10: Get average population of cities in MOZ and VNM
SELECT AVG(Population) AveragePopulation FROM city where CountryCode LIKE 'MOZ' or CountryCode LIKE 'VNM';
#
# 11: Get the countrycodes with more than 200 cities
SELECT CountryCode FROM city where ID > 200 order by CountryCode;
#
# 12: Get the countrycodes with more than 200 cities ordered by city count
SELECT CountryCode FROM city order by Population > 200;
#
# 13: What language(s) is spoken in the city with a population between 400 and 500 ?
SELECT Language FROM countrylanguage join city where Population > 400 and Population < 500;
#
# 14: What are the name(s) of the cities with a population between 500 and 600 people and the language(s) spoken in them
SELECT Name FROM city JOIN countrylanguage ON city.Name=countrylanguage.Language order by Population > 500 and Population < 600;
#
# 15: What names of the cities are in the same country as the city with a population of 122199 (including the that city itself)
SELECT Name, Population from city where Population > 122199;
#
# 16: What names of the cities are in the same country as the city with a population of 122199 (excluding the that city itself)
SELECT Name, Population, CountryCode from city where Population > 122199 and CountryCode = 'SWE';
#
# 17: What are the city names in the country where Luanda is capital?
SELECT nc.name FROM city yc,country c,city nc WHERE c.code=nc.countrycode AND yc.id=c.capital AND yc.name='Luanda';
#
# 18: What are the names of the capital cities in countries in the same region as the city named Yaren
SELECT oci.name FROM city yci, country yco, country oco, city oci WHERE yci.name='Yaren' AND yci.id=yco.capital AND yco.region=oco.region AND oco.capital=oci.id;
#
# 19: What unique languages are spoken in the countries in the same region as the city named Riga
SELECT DISTINCT language FROM city,country cc,country rc,countrylanguage cl WHERE city.name='Riga' AND city.countrycode=cc.code AND cc.region=rc.region AND rc.code=cl.countrycode;
#
SELECT Name,  Population from city where Population = (SELECT max(Population) from city);
#
# 'That's all folks!'
#