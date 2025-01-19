create database Employees;
USE employees;
create table Managers 
(
	Manager_Id INT primary key,
    First_name varchar(50),
    Last_Name varchar(50),
    DOB date,
    Age INT check (Age>=20 and Age<=58),
    Last_update date,
    Gender char(2),
    Department varchar(50),
    Salary DECIMAL(10,2) NOT NULL
);	

insert into Managers values
(13770, 'Alvin','Raj','1990-10-01',34,'2025-01-01','M','IT', 12000);
(13756,'aileen','colina','1990-10-01',34,'2025-01-01','M','Integration',1200000),
(13757,'diane','renzi','1995-12-20',29,'2025-01-08','F','Testing',1400000),
(13758,'emmanuel','ndala','1997-01-13',27,'2024-10-31','M','Dev',3300000),
(13759,'salve','tapar','1996-07-23',28,'2024-11-15','F','Testing',2500000),
(13760,'mark','fernan','1984-09-12',40,'2024-12-31','M','Application',1400000),
(13761,'arlene','lucia','1980-07-06',44,'2024-12-28','F','Integration',1200000),
(13762,'kartha','mary','2000-11-04',24,'2025-01-11','F','Testing',1400000),
(13763,'dorybeth','laganzon','1990-03-15',34,'2024-12-15','F','Dev',3300000),
(13764,'elaine','castaneda','1999-09-16',25,'2024-12-31','M','Dev',2500000),
(13765,'kristine','m','1994-03-06',30,'2024-12-15','F','Application',1400000),
(13766,'yra','santos','2004-08-28',20,'2024-10-15','F','Testing',2500000),
(13767,'arlica','mae','1991-09-12',33,'2025-01-08','F','Application',1400000);
set sql_safe_updates=0;
update managers set salary=9000 where salary=1400000;

select * from Managers where salary between  10000 and 35000;
