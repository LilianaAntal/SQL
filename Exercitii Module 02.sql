/*Exercise 1Write a SELECT statement that will return all rows and 
all columns from the Person.Person table*/
SELECT 
*
FROM Person.Person;
GO

/*Exercise 2
Write a SELECT statement to return the Title, 
FirstName, MiddleName and LastName columns from the Person.Person table*/
SELECT
	Title, FirstName, MiddleName, LastName
FROM Person.Person;
GO

/*Exercise 3
Write a SELECT statement to return FirstName column 
from the Person.Person table. Write down the number of rows: 19.972 rows*/
SELECT
	FirstName
FROM Person.Person;
SELECT COUNT(*) as [Number of rows]
FROM Person.Person;
GO

/*Exercise 4
Modify the query from Exercise 3 to return only distinct values. How many rows were returned? 1018 rows
When the rows returned by the two queries will be the same?*/
SELECT DISTINCT
	FirstName
FROM Person.Person;
GO

/*Exercise 5
Write a SELECT statement to return the FirstName and LastName columns from the Person.Person table 
assigning “P” as the table alias. Use the table alias P to prefix the names of the two columns in the SELECT list.*/
SELECT
	p.FirstName,
	p.LastName
FROM Person.Person AS p;
GO

/*Exercise 6
Write a SELECT statement to return the BusinessEntityID, FirstName and LastName columns from the Person.Person table. 
Assign the column aliases “PersonID”, “First Name” and “Last Name” for reporting purposes.*/
SELECT
	BusinessEntityID AS [PersonID],
	FirstName AS [First Name],
	LastName AS [Last Name]
FROM Person.Person;
GO

/*Exercise 7
The following should return two columns but it returns just one. Please modify the query to function correctly.
SELECT FirstName LastName
FROM Person.Person*/
SELECT FirstName, LastName
FROM Person.Person;
GO

/*Exercise 8
You have to create a report based on the Production.Product and Production.ProductSubcategory tables. 
The report should contain the product name and the category name of the product. 
The following table contains the mapping between the product category IDs and their names:
ProductCategoryID   Name
1					Bikes
2					Components
3					Clothing
4					Accessories   */
SELECT
	p.Name as[Product Name],
	CASE ps.ProductCategoryID
		WHEN 1 THEN 'Bikes'
		WHEN 2 THEN 'Components'
		WHEN 3 THEN 'Clothing'
		WHEN 4 THEN 'Accessories'
		ELSE 'N/A'
	END [Category Name]
FROM Production.Product AS p
JOIN Production.ProductSubcategory AS ps
ON p.ProductSubcategoryID = ps.ProductSubcategoryID;
GO
