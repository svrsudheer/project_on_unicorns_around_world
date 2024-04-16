-- create database portfolio
-- upload data into to portfolio using table data import 
-- select * from portfolio.`list of unicorns in the world`;
-- select * from portfolio.`list of unicorns in the world` where country='india'
-- describe portfolio.`list of unicorns in the world`;
-- select * from portfolio.`list of unicorns in the world` where country='india' and industry='Industrials'
-- alter table portfolio.`list of unicorns in the world` rename column `Valuation ($B)` to `Valuation_in_B`
-- select sum(Valuation_in_B)  from portfolio.`list of unicorns in the world`; 
-- select country,sum(Valuation_in_B) as valuation_by_country_in_billon from portfolio.`list of unicorns in the world` group by `country` order by 2 desc
-- select country,city,sum(Valuation_in_B) as valuation_by_city_in_billon from portfolio.`list of unicorns in the world` group by `city` order by 1,3 desc
-- select * from portfolio.`list of unicorns in the world` where `valuation_in_b` >50
-- select * from portfolio.`list of unicorns in the world`order by 3 desc;
-- select * from portfolio.`list of unicorns in the world`order by 3 desc limit 5;
-- select * from portfolio.`list of unicorns in the world`order by 3 desc limit 5 offset 1;
-- select country,Industry,count(industry),Valuation_in_B from portfolio.`list of unicorns in the world`  group by country,industry order by 1;
-- select country,industry,count(industry) from portfolio.`list of unicorns in the world` group by country,industry


