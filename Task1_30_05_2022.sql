CREATE DATABASE Company

USE Company

CREATE TABLE Employees(Name nvarchar(25),Surname nvarchar(25),Position nvarchar(50),Salary int)

INSERT INTO Employees(Name,Surname,Position,Salary)
Values (N'Vəfa',N'Fərzəliyeva','Software Developer',2200),
(N'Elgiz',N'Əliyev','.Net Developer',2800),
(N'Həmid', N'Məmmədov', 'Back End Developer',3300)


--1.Ortalama maaş
SELECT AVG(Salary) FROM Employees

--2.Ortalama maaşdan yuxarı maaş alan işçilərin adı , soyadı və maaşı
SELECT NAME as Adı, Surname as Soyadı , Salary as Maaşı FROM Employees WHERE Salary> (SELECT AVG(Salary) FROM Employees)

--3.Max, Min maaşları çıxarmalı
SELECT MIN(Salary) from Employees
SELECT MAX(Salary) from Employees






