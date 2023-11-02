--1 sa se afiseze numarul total de produse [Production].[Product]
select count(*)
from Production.Product;

--2 sa se afiseze numarul total de produse de culoare Red
select count(*) 
from Production.Product
where Color='red';

--3 sa se afiseze suma totala a pretului de lista ListPrice
select sum(ListPrice) 
from Production.Product;

--4 sa se afiseze media cost standard [StandardCost]
select avg(StandardCost) 
from Production.Product;