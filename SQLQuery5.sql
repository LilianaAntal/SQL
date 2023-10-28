/*select
category, count(distinct rating)
from movie
group by category*/

-- from Adventure get how many products are for each color

/*select Color, count(*) as NmbProducts   
from Production.Product	
where Color is not null
group by Color	order by NmbProducts desc*/

/*select
	Color, 
	MIN(ListPrice) as MinListPrice,
	MAX(ListPrice) as MaxListPrice,
	AVG(ListPrice) as AvgListPrice   
from Production.Product	
where Color is not null
group by Color*/

select count(*)
from Sales.SalesOrderHeader

select top 10
*
from Sales.SalesOrderHeader

-- order date
-- in ce an au fost cele mai multe comenzi

select top 1
year (OrderDate), count (*) as NmbOrders
from sales.SalesOrderHeader
group by year(OrderDate)
order by NmbOrders desc

-- zi a lunii
select top 2
day(OrderDate), count (*) as NmbOrders
from sales.SalesOrderHeader
group by day(OrderDate)
order by NmbOrders desc