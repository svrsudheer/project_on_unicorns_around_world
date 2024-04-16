-- create database by name portfolio
    create database portfolio;
-- upload data into to portfolio using table data import 
-- to read data in table 
	select * from portfolio.`list of unicorns in the world`;
-- get data specificaly from india
	select * from portfolio.`list of unicorns in the world` where country='india';
-- to describe  the table and its types
	describe portfolio.`list of unicorns in the world`;
-- selecting a specific country and industry types
	select * from portfolio.`list of unicorns in the world` where country='india' and industry='Industrials';
    
-- to alter a column name by alter and rename
	alter table portfolio.`list of unicorns in the world` rename column `Valuation ($B)` to `Valuation_in_B`;
-- caliculating total sum of all countries price values 
	select sum(Valuation_in_B)  from portfolio.`list of unicorns in the world`; 
-- calculating total value of each country
select country,sum(Valuation_in_B) as valuation_by_country_in_billon from portfolio.`list of unicorns in the world` 
group by `country` order by 2 desc;
--  calculating total value of each country and city and group them and order based on country and value export data in to csv file 
select country,city,sum(Valuation_in_B) as valuation_by_city_in_billon from portfolio.`list of unicorns in the world`
 group by `city` order by 1,3 desc;
-- use  function to calculate  value greater than 50,we can use <,>,>=,<=,= to calculate other valuse based on condition
select * from portfolio.`list of unicorns in the world` where `valuation_in_b` >50;
-- execute the results using order
	select * from portfolio.`list of unicorns in the world`order by 3 desc;
-- use limit to get top 5 list
	select * from portfolio.`list of unicorns in the world`order by 3 desc limit 5;
-- use limit to get top 5 list by offseting the first value
	select * from portfolio.`list of unicorns in the world`order by 3 desc limit 5 offset 1;
-- calculate total industries and its value in individual country
	select country,Industry,count(industry),Valuation_in_B from portfolio.`list of unicorns in the world`  group by country,industry order by 1;
-- calculate total industries individual country
select country,industry,count(industry) from portfolio.`list of unicorns in the world` group by country,industry;
-- calculate value of country is nigeria
select sum(Valuation_in_B)  from portfolio.`list of unicorns in the world` where country='nigeria'
