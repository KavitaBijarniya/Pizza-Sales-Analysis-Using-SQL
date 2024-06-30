create database pizza_sales;
use pizza_sales;

select * from pizza_types
select * from pizzas


select distinct pt.category, sum(p.price) as pizza_price  from pizza_types as pt
join  pizzas as p
on pt.pizza_type_id = p.pizza_type_id
group by pt.category

select distinct pt.category, p.size  from pizza_types as pt
join  pizzas as p
on pt.pizza_type_id = p.pizza_type_id
group by pt.category,p.size

select distinct pt.category, sum(p.price) as pizza_price  from pizza_types as pt
join  pizzas as p
on pt.pizza_type_id = p.pizza_type_id
group by pt.category

select top(5)  pt.name, sum(p.price) as pizza_price  from pizza_types as pt
join  pizzas as p
on pt.pizza_type_id = p.pizza_type_id
group by pt.name
order by pizza_price desc 

select pt.name, sum(p.price) as pizza_price  from pizza_types as pt
join  pizzas as p
on pt.pizza_type_id = p.pizza_type_id
group by pt.name
order by pizza_price desc

select pt.category, pt.ingredients, sum(p.price) as pizza_price  from pizza_types as pt
join  pizzas as p
on pt.pizza_type_id = p.pizza_type_id
group by pt.category, pt.ingredients
order by pizza_price desc

select top(5) pt.category, pt.ingredients, sum(p.price) as pizza_price  from pizza_types as pt
join  pizzas as p
on pt.pizza_type_id = p.pizza_type_id
group by pt.category, pt.ingredients
order by pizza_price desc

create view category_details as
select pt.category, sum(p.price) as pizza_price  from pizza_types as pt
join  pizzas as p
on pt.pizza_type_id = p.pizza_type_id
group by pt.category
 
select * from category_details