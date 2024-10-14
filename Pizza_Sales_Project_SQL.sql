-- create database pizza_data; --
use pizza_data;
select * from pizza_sales;
select count(*)  from pizza_sales;

-- Total Revenue --
select sum(total_price) as total_revenue from pizza_sales;

-- Average Order Value --
select sum(total_price) / count(distinct order_id) as avg_order_value from pizza_sales;

-- Total Sales Pizza --
select sum(quantity) as total_sales from pizza_sales;

-- Total Orders Pizza --
select count(distinct order_id) as total_order_pizza from  pizza_sales;

-- Average Pizzas Per Order --
select cast(sum(quantity) as decimal(10,2))
  / cast(count(distinct order_id) as decimal(10,2)) 
  as avg_pizza_order from pizza_sales;

-- Daily Trend for Total Orders --
select dayname(order_date) as order_day , count(distinct order_id) as total_order from pizza_sales 
group by dayname(order_date);  
select month(order_date) as month_colmns from pizza_sales;
select year(order_date) as month_colmns from pizza_sales;

SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);

select DATENAME(MONTH, order_date) as Month_Name, COUNT(DISTINCT order_id) as Total_Orders
from pizza_sales
GROUP BY DATENAME(MONTH, order_date);


