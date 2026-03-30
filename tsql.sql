-- t-sql : iliþkisel veri tabanlarýnda veriyi sorgulamak ve yönetmek için kullanýlýr.

-- 3 kýsým dan oluþur.  DDL, DML, DCL

-- 1- DDL : Data Definition Language : Veri için ortam hazýrlama komutlarý. 
	--Nesnelerin yaratýlmasý, düzenlenmesi, silinmesi için kullanýlýr.
	-- CREATE - ALTER - DROP

--	CREATE : Veri tabaný nesnelerini yaratmak için kullanýlýr.
-- CREATE nesne_tipi nesne_adý  þeklinde yazýlýr.

	--USE CarSalesDB
	--GO

	--CREATE TABLE Employees
	--(
	--	EmployeeID int IDENTITY(1,1) NOT NULL,
	--	NameSurname nvarchar(50) NOT NULL,
	--	HireDate smalldatetime NULL,
	--	Gender bit
	--)

	-- ALTER : Veri tabaný nesnelerini güncellemek için kullanýlýr.

	-- ALTER nesne_tipi nesne_adý yeni_ayarlar

	--Alter Table Orders 
	--	ADD EmployeeID int NULL

	--Alter Table Orders
	--	Alter column EmployeeID int NOT NULL

	--Alter Table Orders
	--	Drop Column EmployeeID

	--DROP : Veri tabanýndan nesne siler
	-- DROP nesne_tipi nesne_adý
	
	--USE CarSalesDB
	--GO

	--DROP TABLE Cars
	--Drop table Employees
	--DROP Database VedatDB

	---------------------------------------------------------
	---------------------------------------------------------
	---------------------------------------------------------

	-- 2- DML  : Data Manipulation Language : Verileri etkileyen komutlar
	-- Veri tabanýndaki tablolara veri kaydetmek, daha önceden girilmiþ verileri güncellemek ya da silmek için kullanýlan komutlardýr.
	-- INSERT - UPDATE - DELETE

	-- INSERT : Tablolara yeni veri eklemek için kullanýlýr.
	-- INSERT INTO TABLO_ADI (alan listesi) VALUES (veriler) 

	--INSERT INTO Customers 
	--([Email],[NameSurname],[Phone],[Address],[IDNumber]) 
	--VALUES 
	--('abc@aaaa.com','AABBCC','1234567890','bakýrköy','11223344556')

	--SELECT * FROM [dbo].[Customers]

	--INSERT INTO Customers
	--VALUES
	--('xxxYYY','qwerty@qwerty.com','New York','9876543210','0')

	--INSERT INTO Orders
	--([CarID],[CustomerID],[OrderPrice],[EmployeeID],[OrderDate])
	--VALUES
	--(2,1,1350000,2,GETDATE())

	-----------------------------------------------------------------

	-- UPDATE : Tablolara girilmiþ olan verileri güncellemek için kullanýlýr.
	-- UPDATE Tablo_adý SET alan1 = yeniveri1, alan2 = yeniveri2, 
	--   alan3 = yeniveri3,... WHERE güncellenecek_kayýt(lar)_için_filtre_ifadesi

	--UPDATE Cars SET Price = 2500000 WHERE CarID = 4

	--UPDATE Cars SET ProducedYear = 2025 --WHERE Producer = 'Mercedes'

	--UPDATE Orders SET OrderPrice = 1200000 WHERE OrderID = 3

	---------------------------------------------------------------

	-- DELETE : Tablolardan kayýt silmek için kullanýlýr.
	-- DELETE FROM Table_adý WHERE silinecek_kayýt(lar)_için_filtre_ifadesi

	--DROP Table Test
	--SELECT * INTO Test FROM Orders 

	--DELETE FROM Test where OrderPrice < 2000000

	--SELECT * FROM Test where OrderPrice < 2000000

	----------------------------------------------------
	----------------------------------------------------
	----------------------------------------------------

	-- DCL : Data Control Language - Yetkilendirme komutlarý
	-- GRANT , DENY

	-- GRANT Yetki verir
	-- DENY yasaklar

	GRANT CREATE ON DATABASE TO Ali
	DENY SELECT ON CarSalesDB TO Ali

	---------------------------------------------------------
	---------------------------------------------------------
	---------------------------------------------------------


