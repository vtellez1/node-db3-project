-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.ProductName,
       c.CategoryName
  FROM Product AS p
       JOIN
       Category AS c ON p.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Id, s.CompanyName
FROM [Order] AS o
JOIN Shipper as s
ON o.ShipVia = s.Id
WHERE o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName, od.Quantity
FROM [OrderDetail] as od
JOIN Product as P
ON od.ProductId = p.id
WHERE od.OrderId = 10251
ORDER BY p.ProductName ASC;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id, c.CompanyName, e.LastName
FROM [Order] as o
JOIN Customer as c
ON o.CustomerId = c.id 
JOIN Employee as e 
ON o.EmployeeId = e.id;

---------- SQL Stretch on W3Schools --------

--Displays CategoryName and a new column called Count that shows how many products are in each category. Shows 9 records.



--Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.