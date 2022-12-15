# SQL select query exercise
#
# World database layout:
# To use this database from a default MySQL install, type: use world;
#
# Table: City
# Columns: Id,Name,CountryCode,District,Population
#
# Table: Country
# Columns: Code, Name, Continent, Region, SurfaceArea, IndepYear, Population, LifeExpectancy, GNP, Capital
#
# Table: CountryLanguage
# Columns: CountryCode, Language, IsOfficial,Percentage
#
#
# 1: Get a query to return "Hello my SQL World", 2022
SELECT 'Hello my SQL World' as message , 2022 as id;
#
# 2: Get everything from the city table
SELECT* FROM city;
#
# 3: Get everything on the cities whose district is "aceh"
SELECT District, CountryCode FROM city WHERE District LIKE '%aceh%';
#
# 4: Get only the name of the cities where the countrycode is "bfa"
SELECT Name , CountryCode FROM city WHERE CountryCode LIKE '%bfa%';
#
# 5: Get both the name and district of the cities where the countrycode is "tto"
SELECT Name, District  from city WHERE CountryCode LIKE '%tto%';
#
# 6: Get the name and district named as nm,dist from the cities where the countrycode is "arm"
SELECT Name as nm, District as dist, CountryCode as cc FROM city WHERE CountryCode LIKE 'arm';
#
# 7: Get the cities with a name that starts with "bor"
SELECT Name FROM city WHERE name LIKE 'bor%';
#
# 8: Get the cities with a name that contains the string "orto"
SELECT Name FROM city WHERE name LIKE '%orto%';
#
# 9: Get the cities that has a population below 1000
SELECT Name, Population FROM city WHERE Population < 1000;
#
# 10: Get the unique countrycodes from the cities that has a population below 1000
SELECT CountryCode,  Name as city, Population FROM city WHERE Population < 1000;
#
# 11: Get the cities with the countrycode UKR that has more than 1000000 (one million) in population
SELECT CountryCode,  Name as city, Population FROM city WHERE CountryCode LiKE 'UKR' and Population > 1000000;
#
# 12: Get the cities with a population of below 200 or above 9500000 (9.5 million)
SELECT CountryCode,  Name as city, Population FROM city WHERE Population > 9500000 or Population < 200;
#
# 13: Get the cities with the countrycodes TJK, MRT, AND, PNG, SJM
SELECT Name as city, CountryCode FROM city WHERE CountryCode LiKE 'TJK' or CountryCode LiKE 'MRT' or CountryCode LiKE 'AND' or CountryCode LiKE 'PNG' or CountryCode LiKE 'SJM' ;
#
# 14: Get the cities with a population between 200 and 700 inclusive
SELECT CountryCode,  Name as city, Population FROM city WHERE Population >= 200 and Population <=700;
#
# 15: Get the countries with a population between 8000 and 20000 inclusive
SELECT Name as Country, Population FROM country WHERE Population >= 8000 and Population <=20000;
#
# 16: Get the name of the countries with a independence year (indepyear) before year 0
SELECT Name as Country, IndepYear FROM country WHERE IndepYear < 0;
#
# 17: Get the countries that has no recorded independence year and a population above 1000000
SELECT Name as Country, Population, IndepYear FROM country WHERE Population > 1000000 and IndepYear IS NULL;
#
# 18: Get countries with a SurfaceArea below 10 and a defined LifeExpectancy
SELECT Name as Country, SurfaceArea, LifeExpectancy FROM country WHERE SurfaceArea < 10;
