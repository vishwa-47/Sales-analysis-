select * from sales_data


---1.find out the total sales of the company


select sum(sales_amount)::int as total_sales from sales_data



----2.find out total sales by each region

select region,
	sum(sales_amount)
from sales_data
group by region
order by 2 desc


----3.find out which total sales made each year

select extract(year from sale_date) as year,
	sum(sales_amount) as total_sales
from sales_data
group by 1 
order by 2 desc



---4.find out total quatity sold in the year 2023



select extract(year from sale_date) as year,
	sum(quantity_sold)
from sales_data
where extract(year from sale_date) = 2023
group by 1


--5.find out the profit 


	
select sum(sales_amount) as total_sales,
		sum(unit_cost*quantity_sold) as total_cost,
	  sum(sales_amount) - sum(unit_cost*quantity_sold) as profit
from sales_data

--6.find out the total quantity sold and total sales made each quarter


select month,
	sum(quantity_sold) as total_quantity_sold,
	sum(sales_amount) as total_sales_made
from sales_data
group by 1
order by 1 


---7.find out total sales made by each sales rep



select sales_rep,
	sum(sales_amount)
from sales_data
group by 1
order by 2 desc


---8.rank the employees based on the sales made


select rank() over(order by sum(sales_amount)desc) as ranking,
	sales_rep, 
	sum(sales_amount)
from sales_data
group by 2




---9.rank the employees region and their sales made in each region

select rank() over(partition by region order by sum(sales_amount)desc) as ranking,
	region,
	initcap(sales_rep) as name,
	sum(sales_amount)
from sales_data
group by 2,3



----10.find out the month where most number of new customers have purchased



select extract(month from sale_date) as month,
	count(customer_type)
from sales_data
where customer_type ilike 'new'
group by 1
order by 2 desc
limit 1


---11.find out if new customers made more purchase or existing customer made more purchase


select customer_type,
	sum(sales_amount)
from sales_data
group by 1
order by 2 desc

----12.find out which category made most sales in each region 

select * from(
select product_category,
	region,
	sum(sales_amount) total_sales,
	rank() over(partition by region order by sum(sales_amount)) as ranking
from sales_data
group by 1,2
) as ranked
where ranking = 1




---13.find out average sales in each region for the year 2023 and the product category is clothing


select product_category,
		region,
		avg(sales_amount) as average_sales
	from sales_data
	group by 1,2
	order by 1





----14.find out which payment is used the most in each region



select payment_method,
	region,
	count(product_id)
from sales_data
group by 1,2
order by 1

--15. find out minimum and maximum sales by each category 

select product_category,
	round(max(sales_amount)::numeric,2) as Highest_sales, 
	min(sales_amount) as Lowest_sales
from sales_data
group by 1
order by 2 desc,3 asc




select sum(sales_amount) from sales_data
