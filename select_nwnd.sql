---- Aktif ürünler listesi
--Select Productname,CategoryID,UnitPrice,UnitsInStock,UnitPrice*UnitsInStock AS 'Stock Value' from products WHERE Discontinued = 0

---- Pasif Ürünler
--Select Productname,CategoryID,UnitPrice,UnitsInStock,UnitPrice*UnitsInStock AS 'Stock Value' from products WHERE Discontinued = 1

---- Aktif Deniz Ürünleri
--SELECT Productname,CategoryID,UnitPrice,UnitsInStock,UnitPrice*UnitsInStock AS 'Stock Value' from products WHERE Discontinued = 0 AND CategoryID = 8

--SELECT count(*) AS 'Ürün Adedi' FROM Products WHERE Discontinued = 0 

--SELECT count(*) AS 'Ürün Adedi' FROM Products WHERE CategoryID = 8

--SELECT * FROM Products Where UnitsInStock > 0 ORDER BY ProductName 

--SELECT * FROM Products Where UnitsInStock > 0 ORDER BY UnitPrice DESC 

--SELECT ProductName,UnitsInStock,UnitPrice,UnitsInStock*UnitPrice AS 'Stok Deðeri' 
--FROM Products
--ORDER BY 'Stok Deðeri' DESC

------------------------------------------------------------
--SELECT SUM(UnitsInStock*UnitPrice) AS 'Stok Deðeri'
--FROM Products

------------------------------------------------------------
--SELECT Products.CategoryID,Categories.CategoryName, SUM(UnitsInStock*UnitPrice) AS 'Stok Deðeri'
--FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
--GROUP BY Products.CategoryID,Categories.CategoryName

----------------------------------------------------------
--SELECT OD.[ProductID],ProductName,OD.[UnitPrice],[Quantity],[Discount] FROM [Order Details] AS OD JOIN Products AS P ON OD.ProductID = P.ProductID 

-- ---------------------------------------------------
--ALTER VIEW SatýþMaliyetKarAnaliziRaporu
--AS
--SELECT 
--OD.[ProductID],
--ProductName,
--P.UnitPrice AS 'Alýþ Fiyatý',  
--OD.[UnitPrice] AS 'Satýþ Fiyatý',
--[Quantity],
--P.UnitPrice * Quantity AS 'Maliyet',
--OD.UnitPrice* Quantity AS 'Satýþ Tutarý',
--(OD.UnitPrice * Quantity)-(P.UnitPrice * Quantity) AS 'Kar/Zarar'
--FROM [Order Details] AS OD 
--	JOIN Products AS P ON OD.ProductID = P.ProductID

------------------------------------------------------------
--UPDATE [Order Details] SET UnitPrice = UnitPrice * 2
-----------------------------------------------------------
--SELECT 
--S.CompanyName, S.ContactName, S.Address, S.Phone, C.CategoryName, P.ProductName, p.UnitPrice
--FROM Suppliers AS S 
--LEFT JOIN Products AS P ON S.SupplierID = P.SupplierID
--LEFT JOIN Categories AS C ON P.CategoryID = C.CategoryID
--------------------------------------------------------------
--SELECT 
--* 
--FROM  Products P 
--LEFT OUTER JOIN [Order Details] OD ON P.ProductID = OD.ProductID
--WHERE OD.ProductID IS NULL

--UNION

--SELECT 
--* 
--FROM  Products P 
--RIGHT OUTER JOIN [Order Details] OD ON P.ProductID = OD.ProductID
--WHERE OD.ProductID IS NULL
------------------------------------------------------------

CREATE PROC SatýlmamýþÜrünlerRaporu
AS
BEGIN
	SELECT 	* 
	FROM  Products P 
	FULL OUTER JOIN [Order Details] OD ON P.ProductID = OD.ProductID
	WHERE OD.ProductID IS NULL OR P.ProductID IS NULL
END
-----------------------------------------------------------
EXECUTE SatýlmamýþÜrünlerRaporu