# Employees-DB
Exploring DML Commands in Employees DB
This project demonstrates the use of Data Manipulation Language (DML) commands to interact with and manage data within a relational database. The tasks involve creating a database named Employees, designing a table named Managers, and insert data. Then use the select statement with conditions to fetch the data.
The project emphasizes querying and manipulating data using INSERT and SELECT statements, along with conditions and filters to retrieve meaningful insights.

1. Create DB
   create database Employees;
   
2. Create table
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
   
   3. Insert records
      insert into Managers values
      (101, 'Vishnu','Sagar','1990-10-01',34,'2025-01-01','M','IT', 1200000),
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

   4. a query that retrieves the name and date of birth of the manager with Manager_Id
  
      select concat(First_name,' ',Last_Name) Name, dob, Manager_id from Managers;

   5. a query to display records of all managers except ‘Aaliya’.

      select * from Managers where first_name <>'Aaliya';
      
   7. a query to display details of managers whose department is IT and earns more than 25000 per month.
  
      Those who works in IT
      select * from Managers where department='IT';
      Final query: select * from Managers where department='IT' and salary>25000;

   9. a query to display details of managers whose salary is between 10000 and 35000.
  
       select * from Managers where salary between  10000 and 35000;
