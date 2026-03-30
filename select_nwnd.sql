-- Aktif ürünler listesi
Select Productname,CategoryID,UnitPrice,UnitsInStock,UnitPrice*UnitsInStock AS 'Stock Value' from products WHERE Discontinued = 0

-- Pasif Ürünler
Select Productname,CategoryID,UnitPrice,UnitsInStock,UnitPrice*UnitsInStock AS 'Stock Value' from products WHERE Discontinued = 1

-- Aktif Deniz Ürünleri
SELECT Productname,CategoryID,UnitPrice,UnitsInStock,UnitPrice*UnitsInStock AS 'Stock Value' from products WHERE Discontinued = 0 AND CategoryID = 8

SELECT count(*) AS 'Ürün Adedi' FROM Products WHERE Discontinued = 0 

SELECT count(*) AS 'Ürün Adedi' FROM Products WHERE CategoryID = 8

SELECT * FROM Products WHERE QuantityPerUnit like '%bottle%'

