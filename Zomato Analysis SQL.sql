create database zomato_analysis1;
-- KPI 1 (Total Restaurant)
SELECT COUNT(DISTINCT RestaurantID) AS unique_restaurants
FROM zomato_data;
-- KPI 2 (Total Country)
select count(distinct Countryname) from country;
-- KPI 3 (Total City)
select count(distinct City) from zomato_data;
-- KPI 4 (Total Cuisines)
select count(distinct cuisines) from zomato_data;
-- KPI 5 (Total Votes)
select sum(votes) from zomato_data;
-- KPI 6 (Average Rating)
select avg(rating) from zomato_data;
-- Popular Cuisine
SELECT Cuisines, COUNT(*) AS cuisine_count
FROM zomato_data
GROUP BY Cuisines
ORDER BY cuisine_count DESC
LIMIT 10;
-- Restaurant Open by Month
SELECT 
    `Month Opening` AS Month,
    COUNT(*) AS Restaurant_Count
FROM zomato_data
GROUP BY `Month Opening`
ORDER BY  `Month Opening`;
-- Restaurant by votes
SELECT 
    RestaurantName, 
    SUM(Votes) AS Total_Votes
FROM zomato_data
GROUP BY RestaurantName
ORDER BY Total_Votes DESC
LIMIT 10;
--




