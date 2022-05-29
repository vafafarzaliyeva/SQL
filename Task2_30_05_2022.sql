CREATE DATABASE Market

USE Market

CREATE TABLE Products(Id int, Name nvarchar(25), Price int)

ALTER TABLE Products ADD Brand nvarchar(30)


INSERT INTO Products (Id,Name,Price,Brand)
Values (1,'Iphone 13',3000,'Apple'),
(2,'Zenbook',4000,'ASUS'),
(3,'Galaxy Note',2300,'Samsung'),
(4,'Asus Vivobook',2000,'Asus'),
(5,'Macbook',3400,'Apple'),
(6,'Redmi Note',600,'Xiaomy'),
(7,'C21 Plus',900,'Nokia'),
(8,'Xperia 10 Plus',1200,'Sony'),
(9,'Matepad',1500,'Huawei'),
(10,'Legion Y700',3500,'Lenovo')

--Qiymeti Productlarin price-larinin average-den kicik olan Products datalarinin siyahisini getiren query yazin

SELECT * FROM Products WHERE Price< (SELECT AVG(Price) FROM Products)

--Qiymeti 1000-dan yuxari olan Product datalarinin siyahisini getiren query yazin

SELECT * FROM Products WHERE Price>1000

--Brand uzunlugu 5-den boyuk olan Productlarin siyahisini getiren query.
--Gelen datalarda Mehsulun adi ve Brand adi 1 columnda gorsensin ve Column adi ProductInfo olsun

SELECT (Name+' '+Brand) AS ProductInfo FROM Products WHERE LEN(Brand)>5